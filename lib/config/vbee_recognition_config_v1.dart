import 'package:vbee_speech/generated/cloud/speech/stt_service.pb.dart'
as _cs;

class Config {
  Config({
    // string encoding = 1;
    // string max_alternatives = 2;
    // string session_id = 3;
    // int32 sample_rate_hertz = 4;
    // repeated SpeechContext speech_contexts = 5;
    this.encoding,
    this.sampleRateHertz,
    this.maxAlternatives,
    this.speechContexts = const [],
    this.sessionId,
  });

  _cs.Config toConfig() => (_cs.Config()
    ..encoding = encoding
    ..maxAlternatives = maxAlternatives
    ..sessionId = sessionId
    ..sampleRateHertz = sampleRateHertz
    ..speechContexts
        .addAll(speechContexts.map((sc) => sc.toSpeechContext())));


  /// Encoding of audio data sent in all RecognitionAudio messages.
  /// This field is optional for FLAC and WAV audio files and required for all
  /// other audio formats. For details, see [AudioEncoding].
  String encoding;

  /// Sample rate in Hertz of the audio data sent in all RecognitionAudio
  /// messages. Valid values are: 8000-48000. 16000 is optimal. For best
  /// results, set the sampling rate of the audio source to 16000 Hz.
  /// If that's not possible, use the native sample rate of the audio source
  /// (instead of re-sampling). This field is optional for FLAC and WAV audio
  /// files, but is required for all other audio formats.
  /// For details, see [AudioEncoding].
  int sampleRateHertz;
  String sessionId;

  /// Maximum number of recognition hypotheses to be returned.
  /// Specifically, the maximum number of [SpeechRecognitionAlternative]
  /// messages within each [SpeechRecognitionResult].
  /// The server may return fewer than maxAlternatives.
  /// Valid values are 0-30. A value of 0 or 1 will return a maximum of one.
  /// If omitted, will return a maximum of one.
  String maxAlternatives;

  /// List of SpeechContext. A means to provide context to assist the
  /// speech recognition. For more information,
  /// see [speech adaptation](https://cloud.google.com/speech-to-text/docs/context-strength).
  final List<SpeechContext> speechContexts;
}

class RecognitionConfig {
  final String model;
  final bool record;
  final bool partialResults;
  final bool singleUtterance;
  final bool interimResults;
  final Config config;

  RecognitionConfig({
    this.model = 'Wav2vec2',
    this.record = true,
    this.partialResults = true,
    this.singleUtterance = true,
    this.interimResults = false,
    this.config
  });

  _cs.RecognitionConfig toConfig() => (_cs.RecognitionConfig()
    ..specification = spec());

  _cs.RecognitionSpec spec() => (_cs.RecognitionSpec()
    ..model = model
    ..record = record
    ..partialResults = partialResults
    ..singleUtterance = singleUtterance
    ..interimResults = interimResults
    ..configAudio = config.toConfig());
}

class SpeechContext {
  SpeechContext(this.phrases);

  final List<String> phrases;

  _cs.SpeechContext toSpeechContext() =>
      _cs.SpeechContext()..phrases.addAll(phrases);
}
