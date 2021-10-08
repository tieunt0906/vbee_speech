import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sound_stream/sound_stream.dart';
import 'package:vbee_speech/vbee_speech.dart';
import 'package:rxdart/rxdart.dart';
import 'package:platform_device_id/platform_device_id.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mic Stream Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AudioRecognize(),
    );
  }
}

class AudioRecognize extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AudioRecognizeState();
}

class _AudioRecognizeState extends State<AudioRecognize> {
  final RecorderStream _recorder = RecorderStream();

  bool recognizing = false;
  bool recognizeFinished = false;
  String text = '';
  StreamSubscription<List<int>> _audioStreamSubscription;
  BehaviorSubject<List<int>> _audioStream;

  @override
  void initState() {
    super.initState();
    _recorder.initialize();
  }

  void streamingRecognize() async {
    _audioStream = BehaviorSubject<List<int>>();
    _audioStreamSubscription = _recorder.audioStream.listen((event) {
      _audioStream.add(event);
    });

    await _recorder.start();
    text = '';
    setState(() {
      recognizing = true;
    });
    final deviceId = await PlatformDeviceId.getDeviceId;
    print(deviceId);
    final speechToText = SpeechToText.viaServiceAccount(deviceId);
    final config = _getConfig();
    final responseStream =
        speechToText.streamingRecognize(config, _audioStream);
    responseStream.listen((data) {
      print('data.final_2: ${data.isFinal} - text: ${data.text}');
      print(data);
      if (data.isFinal) {
        stopRecording();
      } else {
        setState(() {
          text = text + " " + data.text;
          recognizeFinished = true;
        });
      }
    }, onDone: () {
      setState(() {
        recognizing = false;
      });
    });
  }

  void stopRecording() async {
    await _recorder.stop();
    await _audioStreamSubscription?.cancel();
    await _audioStream?.close();
    setState(() {
      recognizing = false;
    });
  }

  RecognitionConfig _getConfig() => RecognitionConfig(model: 'Wav2vec2', singleUtterance: false, config: _config());
  Config _config() => Config(encoding: 'LINEAR16', sampleRateHertz: 16000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio File Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            if (recognizeFinished)
              _RecognizeContent(
                text: text,
              ),
            RaisedButton(
              onPressed: recognizing ? stopRecording : streamingRecognize,
              child: recognizing
                  ? Text('Stop recording')
                  : Text('Start Streaming from mic'),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class _RecognizeContent extends StatelessWidget {
  final String text;

  const _RecognizeContent({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text(
            'The text recognized by the Vbee Api:',
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
