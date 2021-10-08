library flutter_vbee_speech;

import 'dart:async';

import 'package:vbee_speech/generated/cloud/speech/stt_service.pb.dart'
    hide RecognitionConfig, StreamingRecognitionConfig;
import 'package:vbee_speech/generated/cloud/speech/stt_service.pbgrpc.dart'
    hide RecognitionConfig, StreamingRecognitionConfig;
import 'package:grpc/grpc.dart';

import 'config/vbee_recognition_config_v1.dart';

class SpeechToText {
  final CallOptions _options;
  static const tick = const Duration(milliseconds: 10);
  final ClientChannel _channel = ClientChannel('0.tcp.ngrok.io',
      port: 16055,
      options: const ChannelOptions(credentials: const ChannelCredentials.insecure()));
  SpeechToText._(this._options);

  List<int> previousAudio = [];

  factory SpeechToText.viaServiceAccount(String deviceId) =>
      SpeechToText._(CallOptions(metadata: {"device-id" : deviceId}));

  Future<RecognitionResponse> recognize(
      RecognitionConfig config, Stream<List<int>> audioStream) {
    StreamSubscription<List<int>> _audioStreamSubscription;
    final client = SttServiceClient(_channel, options: _options);

    final request = StreamController<StreamingRecognitionRequest>();

    request
        .add(StreamingRecognitionRequest()..config = config.toConfig());
    _audioStreamSubscription = audioStream.listen((audio) {
      request.add(StreamingRecognitionRequest()..audioContent = audio);
    });
    _audioStreamSubscription.onDone(() {
      request.close();
      _audioStreamSubscription.cancel();
    });

    return client.recognize(request.stream);
  }

  Stream<StreamingRecognitionResponse> streamingRecognize(
      RecognitionConfig config, Stream<List<int>> audioStream) {
    final client = SttServiceClient(_channel, options: _options);
    final request = StreamController<StreamingRecognitionRequest>();
    StreamSubscription<List<int>> _audioStreamSubscription;

    request
        .add(StreamingRecognitionRequest()..config = config.toConfig());
    _audioStreamSubscription = audioStream.listen((audio) {
      previousAudio = new List.from(previousAudio)..addAll(audio);
    });
    Timer _timer = new Timer.periodic(
      tick,
          (Timer timer) {
          if (previousAudio.length >= 320) {
            request.add(StreamingRecognitionRequest()
              ..audioContent = previousAudio.sublist(0, 320));
            previousAudio.removeRange(0, 320);
          }
      },
    );
    _audioStreamSubscription.onDone(() {
      previousAudio = [];
      _timer.cancel();
      request.close();
      _audioStreamSubscription.cancel();
    });
    return client.streamingRecognize(request.stream);
  }

  void dispose() {
    previousAudio = [];
  }
}
