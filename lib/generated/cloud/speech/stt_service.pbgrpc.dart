///
//  Generated code. Do not modify.
//  source: stt_service.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'stt_service.pb.dart' as $0;
export 'stt_service.pb.dart';

class SttServiceClient extends $grpc.Client {
  static final _$recognize = $grpc.ClientMethod<$0.StreamingRecognitionRequest,
          $0.RecognitionResponse>(
      '/vbee.stt.v1.SttService/Recognize',
      ($0.StreamingRecognitionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.RecognitionResponse.fromBuffer(value));
  static final _$streamingRecognize = $grpc.ClientMethod<
          $0.StreamingRecognitionRequest, $0.StreamingRecognitionResponse>(
      '/vbee.stt.v1.SttService/StreamingRecognize',
      ($0.StreamingRecognitionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.StreamingRecognitionResponse.fromBuffer(value));

  SttServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.RecognitionResponse> recognize(
      $async.Stream<$0.StreamingRecognitionRequest> request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(_$recognize, request, options: options).single;
  }

  $grpc.ResponseStream<$0.StreamingRecognitionResponse> streamingRecognize(
      $async.Stream<$0.StreamingRecognitionRequest> request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(_$streamingRecognize, request,
        options: options);
  }
}

abstract class SttServiceBase extends $grpc.Service {
  $core.String get $name => 'vbee.stt.v1.SttService';

  SttServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.StreamingRecognitionRequest,
            $0.RecognitionResponse>(
        'Recognize',
        recognize,
        true,
        false,
        ($core.List<$core.int> value) =>
            $0.StreamingRecognitionRequest.fromBuffer(value),
        ($0.RecognitionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StreamingRecognitionRequest,
            $0.StreamingRecognitionResponse>(
        'StreamingRecognize',
        streamingRecognize,
        true,
        true,
        ($core.List<$core.int> value) =>
            $0.StreamingRecognitionRequest.fromBuffer(value),
        ($0.StreamingRecognitionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.RecognitionResponse> recognize($grpc.ServiceCall call,
      $async.Stream<$0.StreamingRecognitionRequest> request);
  $async.Stream<$0.StreamingRecognitionResponse> streamingRecognize(
      $grpc.ServiceCall call,
      $async.Stream<$0.StreamingRecognitionRequest> request);
}
