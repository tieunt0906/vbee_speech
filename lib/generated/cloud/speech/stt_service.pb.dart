///
//  Generated code. Do not modify.
//  source: stt_service.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'stt_service.pbenum.dart';

enum StreamingRecognitionRequest_StreamingRequest {
  config, 
  audioContent, 
  notSet
}

class StreamingRecognitionRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, StreamingRecognitionRequest_StreamingRequest> _StreamingRecognitionRequest_StreamingRequestByTag = {
    1 : StreamingRecognitionRequest_StreamingRequest.config,
    2 : StreamingRecognitionRequest_StreamingRequest.audioContent,
    0 : StreamingRecognitionRequest_StreamingRequest.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StreamingRecognitionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vbee.stt.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<RecognitionConfig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'config', subBuilder: RecognitionConfig.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'audioContent', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  StreamingRecognitionRequest._() : super();
  factory StreamingRecognitionRequest({
    RecognitionConfig config,
    $core.List<$core.int> audioContent,
  }) {
    final _result = create();
    if (config != null) {
      _result.config = config;
    }
    if (audioContent != null) {
      _result.audioContent = audioContent;
    }
    return _result;
  }
  factory StreamingRecognitionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamingRecognitionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamingRecognitionRequest clone() => StreamingRecognitionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamingRecognitionRequest copyWith(void Function(StreamingRecognitionRequest) updates) => super.copyWith((message) => updates(message as StreamingRecognitionRequest)) as StreamingRecognitionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamingRecognitionRequest create() => StreamingRecognitionRequest._();
  StreamingRecognitionRequest createEmptyInstance() => create();
  static $pb.PbList<StreamingRecognitionRequest> createRepeated() => $pb.PbList<StreamingRecognitionRequest>();
  @$core.pragma('dart2js:noInline')
  static StreamingRecognitionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamingRecognitionRequest>(create);
  static StreamingRecognitionRequest _defaultInstance;

  StreamingRecognitionRequest_StreamingRequest whichStreamingRequest() => _StreamingRecognitionRequest_StreamingRequestByTag[$_whichOneof(0)];
  void clearStreamingRequest() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  RecognitionConfig get config => $_getN(0);
  @$pb.TagNumber(1)
  set config(RecognitionConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => clearField(1);
  @$pb.TagNumber(1)
  RecognitionConfig ensureConfig() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get audioContent => $_getN(1);
  @$pb.TagNumber(2)
  set audioContent($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAudioContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearAudioContent() => clearField(2);
}

class RecognitionConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RecognitionConfig', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vbee.stt.v1'), createEmptyInstance: create)
    ..aOM<RecognitionSpec>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'specification', subBuilder: RecognitionSpec.create)
    ..hasRequiredFields = false
  ;

  RecognitionConfig._() : super();
  factory RecognitionConfig({
    RecognitionSpec specification,
  }) {
    final _result = create();
    if (specification != null) {
      _result.specification = specification;
    }
    return _result;
  }
  factory RecognitionConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecognitionConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecognitionConfig clone() => RecognitionConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecognitionConfig copyWith(void Function(RecognitionConfig) updates) => super.copyWith((message) => updates(message as RecognitionConfig)) as RecognitionConfig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RecognitionConfig create() => RecognitionConfig._();
  RecognitionConfig createEmptyInstance() => create();
  static $pb.PbList<RecognitionConfig> createRepeated() => $pb.PbList<RecognitionConfig>();
  @$core.pragma('dart2js:noInline')
  static RecognitionConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecognitionConfig>(create);
  static RecognitionConfig _defaultInstance;

  @$pb.TagNumber(1)
  RecognitionSpec get specification => $_getN(0);
  @$pb.TagNumber(1)
  set specification(RecognitionSpec v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpecification() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpecification() => clearField(1);
  @$pb.TagNumber(1)
  RecognitionSpec ensureSpecification() => $_ensure(0);
}

class RecognitionSpec extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RecognitionSpec', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vbee.stt.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'model')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'record')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partialResults')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'singleUtterance')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'interimResults')
    ..aOM<Config>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'configAudio', subBuilder: Config.create)
    ..hasRequiredFields = false
  ;

  RecognitionSpec._() : super();
  factory RecognitionSpec({
    $core.String model,
    $core.bool record,
    $core.bool partialResults,
    $core.bool singleUtterance,
    $core.bool interimResults,
    Config configAudio,
  }) {
    final _result = create();
    if (model != null) {
      _result.model = model;
    }
    if (record != null) {
      _result.record = record;
    }
    if (partialResults != null) {
      _result.partialResults = partialResults;
    }
    if (singleUtterance != null) {
      _result.singleUtterance = singleUtterance;
    }
    if (interimResults != null) {
      _result.interimResults = interimResults;
    }
    if (configAudio != null) {
      _result.configAudio = configAudio;
    }
    return _result;
  }
  factory RecognitionSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecognitionSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecognitionSpec clone() => RecognitionSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecognitionSpec copyWith(void Function(RecognitionSpec) updates) => super.copyWith((message) => updates(message as RecognitionSpec)) as RecognitionSpec; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RecognitionSpec create() => RecognitionSpec._();
  RecognitionSpec createEmptyInstance() => create();
  static $pb.PbList<RecognitionSpec> createRepeated() => $pb.PbList<RecognitionSpec>();
  @$core.pragma('dart2js:noInline')
  static RecognitionSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecognitionSpec>(create);
  static RecognitionSpec _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get model => $_getSZ(0);
  @$pb.TagNumber(1)
  set model($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasModel() => $_has(0);
  @$pb.TagNumber(1)
  void clearModel() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get record => $_getBF(1);
  @$pb.TagNumber(2)
  set record($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRecord() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecord() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get partialResults => $_getBF(2);
  @$pb.TagNumber(3)
  set partialResults($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPartialResults() => $_has(2);
  @$pb.TagNumber(3)
  void clearPartialResults() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get singleUtterance => $_getBF(3);
  @$pb.TagNumber(4)
  set singleUtterance($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSingleUtterance() => $_has(3);
  @$pb.TagNumber(4)
  void clearSingleUtterance() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get interimResults => $_getBF(4);
  @$pb.TagNumber(5)
  set interimResults($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasInterimResults() => $_has(4);
  @$pb.TagNumber(5)
  void clearInterimResults() => clearField(5);

  @$pb.TagNumber(6)
  Config get configAudio => $_getN(5);
  @$pb.TagNumber(6)
  set configAudio(Config v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasConfigAudio() => $_has(5);
  @$pb.TagNumber(6)
  void clearConfigAudio() => clearField(6);
  @$pb.TagNumber(6)
  Config ensureConfigAudio() => $_ensure(5);
}

class RecognitionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RecognitionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vbee.stt.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'received')
    ..aOM<Status>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', subBuilder: Status.create)
    ..hasRequiredFields = false
  ;

  RecognitionResponse._() : super();
  factory RecognitionResponse({
    $core.String text,
    $core.bool received,
    Status status,
  }) {
    final _result = create();
    if (text != null) {
      _result.text = text;
    }
    if (received != null) {
      _result.received = received;
    }
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory RecognitionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecognitionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecognitionResponse clone() => RecognitionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecognitionResponse copyWith(void Function(RecognitionResponse) updates) => super.copyWith((message) => updates(message as RecognitionResponse)) as RecognitionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RecognitionResponse create() => RecognitionResponse._();
  RecognitionResponse createEmptyInstance() => create();
  static $pb.PbList<RecognitionResponse> createRepeated() => $pb.PbList<RecognitionResponse>();
  @$core.pragma('dart2js:noInline')
  static RecognitionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecognitionResponse>(create);
  static RecognitionResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get received => $_getBF(1);
  @$pb.TagNumber(2)
  set received($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReceived() => $_has(1);
  @$pb.TagNumber(2)
  void clearReceived() => clearField(2);

  @$pb.TagNumber(3)
  Status get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(Status v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  Status ensureStatus() => $_ensure(2);
}

class StreamingRecognitionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StreamingRecognitionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vbee.stt.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isFinal')
    ..aOM<Status>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', subBuilder: Status.create)
    ..hasRequiredFields = false
  ;

  StreamingRecognitionResponse._() : super();
  factory StreamingRecognitionResponse({
    $core.String text,
    $core.bool isFinal,
    Status status,
  }) {
    final _result = create();
    if (text != null) {
      _result.text = text;
    }
    if (isFinal != null) {
      _result.isFinal = isFinal;
    }
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory StreamingRecognitionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamingRecognitionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamingRecognitionResponse clone() => StreamingRecognitionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamingRecognitionResponse copyWith(void Function(StreamingRecognitionResponse) updates) => super.copyWith((message) => updates(message as StreamingRecognitionResponse)) as StreamingRecognitionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamingRecognitionResponse create() => StreamingRecognitionResponse._();
  StreamingRecognitionResponse createEmptyInstance() => create();
  static $pb.PbList<StreamingRecognitionResponse> createRepeated() => $pb.PbList<StreamingRecognitionResponse>();
  @$core.pragma('dart2js:noInline')
  static StreamingRecognitionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamingRecognitionResponse>(create);
  static StreamingRecognitionResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isFinal => $_getBF(1);
  @$pb.TagNumber(2)
  set isFinal($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsFinal() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsFinal() => clearField(2);

  @$pb.TagNumber(3)
  Status get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(Status v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  Status ensureStatus() => $_ensure(2);
}

class SpeechRecognitionChunk extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpeechRecognitionChunk', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vbee.stt.v1'), createEmptyInstance: create)
    ..pc<SpeechRecognitionAlternative>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alternatives', $pb.PbFieldType.PM, subBuilder: SpeechRecognitionAlternative.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isFinal')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endOfUtterance')
    ..hasRequiredFields = false
  ;

  SpeechRecognitionChunk._() : super();
  factory SpeechRecognitionChunk({
    $core.Iterable<SpeechRecognitionAlternative> alternatives,
    $core.bool isFinal,
    $core.bool endOfUtterance,
  }) {
    final _result = create();
    if (alternatives != null) {
      _result.alternatives.addAll(alternatives);
    }
    if (isFinal != null) {
      _result.isFinal = isFinal;
    }
    if (endOfUtterance != null) {
      _result.endOfUtterance = endOfUtterance;
    }
    return _result;
  }
  factory SpeechRecognitionChunk.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpeechRecognitionChunk.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpeechRecognitionChunk clone() => SpeechRecognitionChunk()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpeechRecognitionChunk copyWith(void Function(SpeechRecognitionChunk) updates) => super.copyWith((message) => updates(message as SpeechRecognitionChunk)) as SpeechRecognitionChunk; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpeechRecognitionChunk create() => SpeechRecognitionChunk._();
  SpeechRecognitionChunk createEmptyInstance() => create();
  static $pb.PbList<SpeechRecognitionChunk> createRepeated() => $pb.PbList<SpeechRecognitionChunk>();
  @$core.pragma('dart2js:noInline')
  static SpeechRecognitionChunk getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpeechRecognitionChunk>(create);
  static SpeechRecognitionChunk _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SpeechRecognitionAlternative> get alternatives => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get isFinal => $_getBF(1);
  @$pb.TagNumber(2)
  set isFinal($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsFinal() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsFinal() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get endOfUtterance => $_getBF(2);
  @$pb.TagNumber(3)
  set endOfUtterance($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndOfUtterance() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndOfUtterance() => clearField(3);
}

class SpeechRecognitionAlternative extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpeechRecognitionAlternative', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vbee.stt.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'confidence', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  SpeechRecognitionAlternative._() : super();
  factory SpeechRecognitionAlternative({
    $core.String text,
    $core.double confidence,
  }) {
    final _result = create();
    if (text != null) {
      _result.text = text;
    }
    if (confidence != null) {
      _result.confidence = confidence;
    }
    return _result;
  }
  factory SpeechRecognitionAlternative.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpeechRecognitionAlternative.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpeechRecognitionAlternative clone() => SpeechRecognitionAlternative()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpeechRecognitionAlternative copyWith(void Function(SpeechRecognitionAlternative) updates) => super.copyWith((message) => updates(message as SpeechRecognitionAlternative)) as SpeechRecognitionAlternative; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpeechRecognitionAlternative create() => SpeechRecognitionAlternative._();
  SpeechRecognitionAlternative createEmptyInstance() => create();
  static $pb.PbList<SpeechRecognitionAlternative> createRepeated() => $pb.PbList<SpeechRecognitionAlternative>();
  @$core.pragma('dart2js:noInline')
  static SpeechRecognitionAlternative getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpeechRecognitionAlternative>(create);
  static SpeechRecognitionAlternative _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get confidence => $_getN(1);
  @$pb.TagNumber(2)
  set confidence($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConfidence() => $_has(1);
  @$pb.TagNumber(2)
  void clearConfidence() => clearField(2);
}

class Config extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Config', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vbee.stt.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'encoding')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxAlternatives')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sampleRateHertz', $pb.PbFieldType.O3)
    ..pc<SpeechContext>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'speechContexts', $pb.PbFieldType.PM, subBuilder: SpeechContext.create)
    ..hasRequiredFields = false
  ;

  Config._() : super();
  factory Config({
    $core.String encoding,
    $core.String maxAlternatives,
    $core.String sessionId,
    $core.int sampleRateHertz,
    $core.Iterable<SpeechContext> speechContexts,
  }) {
    final _result = create();
    if (encoding != null) {
      _result.encoding = encoding;
    }
    if (maxAlternatives != null) {
      _result.maxAlternatives = maxAlternatives;
    }
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    if (sampleRateHertz != null) {
      _result.sampleRateHertz = sampleRateHertz;
    }
    if (speechContexts != null) {
      _result.speechContexts.addAll(speechContexts);
    }
    return _result;
  }
  factory Config.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Config.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Config clone() => Config()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Config copyWith(void Function(Config) updates) => super.copyWith((message) => updates(message as Config)) as Config; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Config create() => Config._();
  Config createEmptyInstance() => create();
  static $pb.PbList<Config> createRepeated() => $pb.PbList<Config>();
  @$core.pragma('dart2js:noInline')
  static Config getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Config>(create);
  static Config _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get encoding => $_getSZ(0);
  @$pb.TagNumber(1)
  set encoding($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEncoding() => $_has(0);
  @$pb.TagNumber(1)
  void clearEncoding() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get maxAlternatives => $_getSZ(1);
  @$pb.TagNumber(2)
  set maxAlternatives($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMaxAlternatives() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxAlternatives() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get sessionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sessionId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get sampleRateHertz => $_getIZ(3);
  @$pb.TagNumber(4)
  set sampleRateHertz($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSampleRateHertz() => $_has(3);
  @$pb.TagNumber(4)
  void clearSampleRateHertz() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<SpeechContext> get speechContexts => $_getList(4);
}

class SpeechContext extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpeechContext', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vbee.stt.v1'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phrases')
    ..hasRequiredFields = false
  ;

  SpeechContext._() : super();
  factory SpeechContext({
    $core.Iterable<$core.String> phrases,
  }) {
    final _result = create();
    if (phrases != null) {
      _result.phrases.addAll(phrases);
    }
    return _result;
  }
  factory SpeechContext.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpeechContext.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpeechContext clone() => SpeechContext()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpeechContext copyWith(void Function(SpeechContext) updates) => super.copyWith((message) => updates(message as SpeechContext)) as SpeechContext; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpeechContext create() => SpeechContext._();
  SpeechContext createEmptyInstance() => create();
  static $pb.PbList<SpeechContext> createRepeated() => $pb.PbList<SpeechContext>();
  @$core.pragma('dart2js:noInline')
  static SpeechContext getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpeechContext>(create);
  static SpeechContext _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get phrases => $_getList(0);
}

class Status extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Status', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vbee.stt.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  Status._() : super();
  factory Status({
    $core.int code,
    $core.String status,
    $core.String message,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (status != null) {
      _result.status = status;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory Status.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Status.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Status clone() => Status()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Status copyWith(void Function(Status) updates) => super.copyWith((message) => updates(message as Status)) as Status; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Status create() => Status._();
  Status createEmptyInstance() => create();
  static $pb.PbList<Status> createRepeated() => $pb.PbList<Status>();
  @$core.pragma('dart2js:noInline')
  static Status getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Status>(create);
  static Status _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
}

