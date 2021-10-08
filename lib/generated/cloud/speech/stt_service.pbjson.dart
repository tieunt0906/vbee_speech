///
//  Generated code. Do not modify.
//  source: stt_service.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use codeDescriptor instead')
const Code$json = const {
  '1': 'Code',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'CANCELLED', '2': 1},
    const {'1': 'UNKNOWN', '2': 2},
    const {'1': 'INVALID_ARGUMENT', '2': 3},
    const {'1': 'DEADLINE_EXCEEDED', '2': 4},
    const {'1': 'NOT_FOUND', '2': 5},
    const {'1': 'ALREADY_EXISTS', '2': 6},
    const {'1': 'PERMISSION_DENIED', '2': 7},
    const {'1': 'UNAUTHENTICATED', '2': 16},
    const {'1': 'RESOURCE_EXHAUSTED', '2': 8},
    const {'1': 'FAILED_PRECONDITION', '2': 9},
    const {'1': 'ABORTED', '2': 10},
    const {'1': 'OUT_OF_RANGE', '2': 11},
    const {'1': 'UNIMPLEMENTED', '2': 12},
    const {'1': 'INTERNAL', '2': 13},
    const {'1': 'UNAVAILABLE', '2': 14},
    const {'1': 'DATA_LOSS', '2': 15},
  ],
};

/// Descriptor for `Code`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List codeDescriptor = $convert.base64Decode('CgRDb2RlEgYKAk9LEAASDQoJQ0FOQ0VMTEVEEAESCwoHVU5LTk9XThACEhQKEElOVkFMSURfQVJHVU1FTlQQAxIVChFERUFETElORV9FWENFRURFRBAEEg0KCU5PVF9GT1VORBAFEhIKDkFMUkVBRFlfRVhJU1RTEAYSFQoRUEVSTUlTU0lPTl9ERU5JRUQQBxITCg9VTkFVVEhFTlRJQ0FURUQQEBIWChJSRVNPVVJDRV9FWEhBVVNURUQQCBIXChNGQUlMRURfUFJFQ09ORElUSU9OEAkSCwoHQUJPUlRFRBAKEhAKDE9VVF9PRl9SQU5HRRALEhEKDVVOSU1QTEVNRU5URUQQDBIMCghJTlRFUk5BTBANEg8KC1VOQVZBSUxBQkxFEA4SDQoJREFUQV9MT1NTEA8=');
@$core.Deprecated('Use streamingRecognitionRequestDescriptor instead')
const StreamingRecognitionRequest$json = const {
  '1': 'StreamingRecognitionRequest',
  '2': const [
    const {'1': 'config', '3': 1, '4': 1, '5': 11, '6': '.vbee.stt.v1.RecognitionConfig', '9': 0, '10': 'config'},
    const {'1': 'audio_content', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'audioContent'},
  ],
  '8': const [
    const {'1': 'streaming_request'},
  ],
};

/// Descriptor for `StreamingRecognitionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamingRecognitionRequestDescriptor = $convert.base64Decode('ChtTdHJlYW1pbmdSZWNvZ25pdGlvblJlcXVlc3QSOAoGY29uZmlnGAEgASgLMh4udmJlZS5zdHQudjEuUmVjb2duaXRpb25Db25maWdIAFIGY29uZmlnEiUKDWF1ZGlvX2NvbnRlbnQYAiABKAxIAFIMYXVkaW9Db250ZW50QhMKEXN0cmVhbWluZ19yZXF1ZXN0');
@$core.Deprecated('Use recognitionConfigDescriptor instead')
const RecognitionConfig$json = const {
  '1': 'RecognitionConfig',
  '2': const [
    const {'1': 'specification', '3': 1, '4': 1, '5': 11, '6': '.vbee.stt.v1.RecognitionSpec', '10': 'specification'},
  ],
};

/// Descriptor for `RecognitionConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recognitionConfigDescriptor = $convert.base64Decode('ChFSZWNvZ25pdGlvbkNvbmZpZxJCCg1zcGVjaWZpY2F0aW9uGAEgASgLMhwudmJlZS5zdHQudjEuUmVjb2duaXRpb25TcGVjUg1zcGVjaWZpY2F0aW9u');
@$core.Deprecated('Use recognitionSpecDescriptor instead')
const RecognitionSpec$json = const {
  '1': 'RecognitionSpec',
  '2': const [
    const {'1': 'model', '3': 1, '4': 1, '5': 9, '10': 'model'},
    const {'1': 'record', '3': 2, '4': 1, '5': 8, '10': 'record'},
    const {'1': 'partial_results', '3': 3, '4': 1, '5': 8, '10': 'partialResults'},
    const {'1': 'single_utterance', '3': 4, '4': 1, '5': 8, '10': 'singleUtterance'},
    const {'1': 'interim_results', '3': 5, '4': 1, '5': 8, '10': 'interimResults'},
    const {'1': 'config_audio', '3': 6, '4': 1, '5': 11, '6': '.vbee.stt.v1.Config', '10': 'configAudio'},
  ],
};

/// Descriptor for `RecognitionSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recognitionSpecDescriptor = $convert.base64Decode('Cg9SZWNvZ25pdGlvblNwZWMSFAoFbW9kZWwYASABKAlSBW1vZGVsEhYKBnJlY29yZBgCIAEoCFIGcmVjb3JkEicKD3BhcnRpYWxfcmVzdWx0cxgDIAEoCFIOcGFydGlhbFJlc3VsdHMSKQoQc2luZ2xlX3V0dGVyYW5jZRgEIAEoCFIPc2luZ2xlVXR0ZXJhbmNlEicKD2ludGVyaW1fcmVzdWx0cxgFIAEoCFIOaW50ZXJpbVJlc3VsdHMSNgoMY29uZmlnX2F1ZGlvGAYgASgLMhMudmJlZS5zdHQudjEuQ29uZmlnUgtjb25maWdBdWRpbw==');
@$core.Deprecated('Use recognitionResponseDescriptor instead')
const RecognitionResponse$json = const {
  '1': 'RecognitionResponse',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'received', '3': 2, '4': 1, '5': 8, '10': 'received'},
    const {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.vbee.stt.v1.Status', '10': 'status'},
  ],
};

/// Descriptor for `RecognitionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recognitionResponseDescriptor = $convert.base64Decode('ChNSZWNvZ25pdGlvblJlc3BvbnNlEhIKBHRleHQYASABKAlSBHRleHQSGgoIcmVjZWl2ZWQYAiABKAhSCHJlY2VpdmVkEisKBnN0YXR1cxgDIAEoCzITLnZiZWUuc3R0LnYxLlN0YXR1c1IGc3RhdHVz');
@$core.Deprecated('Use streamingRecognitionResponseDescriptor instead')
const StreamingRecognitionResponse$json = const {
  '1': 'StreamingRecognitionResponse',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'is_final', '3': 2, '4': 1, '5': 8, '10': 'isFinal'},
    const {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.vbee.stt.v1.Status', '10': 'status'},
  ],
};

/// Descriptor for `StreamingRecognitionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamingRecognitionResponseDescriptor = $convert.base64Decode('ChxTdHJlYW1pbmdSZWNvZ25pdGlvblJlc3BvbnNlEhIKBHRleHQYASABKAlSBHRleHQSGQoIaXNfZmluYWwYAiABKAhSB2lzRmluYWwSKwoGc3RhdHVzGAMgASgLMhMudmJlZS5zdHQudjEuU3RhdHVzUgZzdGF0dXM=');
@$core.Deprecated('Use speechRecognitionChunkDescriptor instead')
const SpeechRecognitionChunk$json = const {
  '1': 'SpeechRecognitionChunk',
  '2': const [
    const {'1': 'alternatives', '3': 1, '4': 3, '5': 11, '6': '.vbee.stt.v1.SpeechRecognitionAlternative', '10': 'alternatives'},
    const {'1': 'is_final', '3': 2, '4': 1, '5': 8, '10': 'isFinal'},
    const {'1': 'end_of_utterance', '3': 3, '4': 1, '5': 8, '10': 'endOfUtterance'},
  ],
};

/// Descriptor for `SpeechRecognitionChunk`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speechRecognitionChunkDescriptor = $convert.base64Decode('ChZTcGVlY2hSZWNvZ25pdGlvbkNodW5rEk0KDGFsdGVybmF0aXZlcxgBIAMoCzIpLnZiZWUuc3R0LnYxLlNwZWVjaFJlY29nbml0aW9uQWx0ZXJuYXRpdmVSDGFsdGVybmF0aXZlcxIZCghpc19maW5hbBgCIAEoCFIHaXNGaW5hbBIoChBlbmRfb2ZfdXR0ZXJhbmNlGAMgASgIUg5lbmRPZlV0dGVyYW5jZQ==');
@$core.Deprecated('Use speechRecognitionAlternativeDescriptor instead')
const SpeechRecognitionAlternative$json = const {
  '1': 'SpeechRecognitionAlternative',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'confidence', '3': 2, '4': 1, '5': 2, '10': 'confidence'},
  ],
};

/// Descriptor for `SpeechRecognitionAlternative`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speechRecognitionAlternativeDescriptor = $convert.base64Decode('ChxTcGVlY2hSZWNvZ25pdGlvbkFsdGVybmF0aXZlEhIKBHRleHQYASABKAlSBHRleHQSHgoKY29uZmlkZW5jZRgCIAEoAlIKY29uZmlkZW5jZQ==');
@$core.Deprecated('Use configDescriptor instead')
const Config$json = const {
  '1': 'Config',
  '2': const [
    const {'1': 'encoding', '3': 1, '4': 1, '5': 9, '10': 'encoding'},
    const {'1': 'max_alternatives', '3': 2, '4': 1, '5': 9, '10': 'maxAlternatives'},
    const {'1': 'session_id', '3': 3, '4': 1, '5': 9, '10': 'sessionId'},
    const {'1': 'sample_rate_hertz', '3': 4, '4': 1, '5': 5, '10': 'sampleRateHertz'},
    const {'1': 'speech_contexts', '3': 5, '4': 3, '5': 11, '6': '.vbee.stt.v1.SpeechContext', '10': 'speechContexts'},
  ],
};

/// Descriptor for `Config`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configDescriptor = $convert.base64Decode('CgZDb25maWcSGgoIZW5jb2RpbmcYASABKAlSCGVuY29kaW5nEikKEG1heF9hbHRlcm5hdGl2ZXMYAiABKAlSD21heEFsdGVybmF0aXZlcxIdCgpzZXNzaW9uX2lkGAMgASgJUglzZXNzaW9uSWQSKgoRc2FtcGxlX3JhdGVfaGVydHoYBCABKAVSD3NhbXBsZVJhdGVIZXJ0ehJDCg9zcGVlY2hfY29udGV4dHMYBSADKAsyGi52YmVlLnN0dC52MS5TcGVlY2hDb250ZXh0Ug5zcGVlY2hDb250ZXh0cw==');
@$core.Deprecated('Use speechContextDescriptor instead')
const SpeechContext$json = const {
  '1': 'SpeechContext',
  '2': const [
    const {'1': 'phrases', '3': 1, '4': 3, '5': 9, '10': 'phrases'},
  ],
};

/// Descriptor for `SpeechContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speechContextDescriptor = $convert.base64Decode('Cg1TcGVlY2hDb250ZXh0EhgKB3BocmFzZXMYASADKAlSB3BocmFzZXM=');
@$core.Deprecated('Use statusDescriptor instead')
const Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `Status`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusDescriptor = $convert.base64Decode('CgZTdGF0dXMSEgoEY29kZRgBIAEoBVIEY29kZRIWCgZzdGF0dXMYAiABKAlSBnN0YXR1cxIYCgdtZXNzYWdlGAMgASgJUgdtZXNzYWdl');
