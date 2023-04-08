// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_console_output_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_console_output_request.g.dart';

abstract class GetConsoleOutputRequest
    with
        _i1.HttpInput<GetConsoleOutputRequest>,
        _i2.AWSEquatable<GetConsoleOutputRequest>
    implements Built<GetConsoleOutputRequest, GetConsoleOutputRequestBuilder> {
  factory GetConsoleOutputRequest({
    required String instanceId,
    bool? dryRun,
    bool? latest,
  }) {
    dryRun ??= false;
    latest ??= false;
    return _$GetConsoleOutputRequest._(
      instanceId: instanceId,
      dryRun: dryRun,
      latest: latest,
    );
  }

  factory GetConsoleOutputRequest.build(
          [void Function(GetConsoleOutputRequestBuilder) updates]) =
      _$GetConsoleOutputRequest;

  const GetConsoleOutputRequest._();

  factory GetConsoleOutputRequest.fromRequest(
    GetConsoleOutputRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetConsoleOutputRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetConsoleOutputRequestBuilder b) {
    b.dryRun = false;
    b.latest = false;
  }

  /// The ID of the instance.
  String get instanceId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// When enabled, retrieves the latest console output for the instance.
  ///
  /// Default: disabled (`false`)
  bool get latest;
  @override
  GetConsoleOutputRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceId,
        dryRun,
        latest,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetConsoleOutputRequest');
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'latest',
      latest,
    );
    return helper.toString();
  }
}

class GetConsoleOutputRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<GetConsoleOutputRequest> {
  const GetConsoleOutputRequestEc2QuerySerializer()
      : super('GetConsoleOutputRequest');

  @override
  Iterable<Type> get types => const [
        GetConsoleOutputRequest,
        _$GetConsoleOutputRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetConsoleOutputRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetConsoleOutputRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'InstanceId':
          result.instanceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'Latest':
          result.latest = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as GetConsoleOutputRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetConsoleOutputRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('InstanceId'))
      ..add(serializers.serialize(
        payload.instanceId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('Latest'))
      ..add(serializers.serialize(
        payload.latest,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
