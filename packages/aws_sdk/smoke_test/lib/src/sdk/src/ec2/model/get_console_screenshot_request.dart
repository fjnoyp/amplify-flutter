// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_console_screenshot_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_console_screenshot_request.g.dart';

abstract class GetConsoleScreenshotRequest
    with
        _i1.HttpInput<GetConsoleScreenshotRequest>,
        _i2.AWSEquatable<GetConsoleScreenshotRequest>
    implements
        Built<GetConsoleScreenshotRequest, GetConsoleScreenshotRequestBuilder> {
  factory GetConsoleScreenshotRequest({
    bool? dryRun,
    required String instanceId,
    bool? wakeUp,
  }) {
    dryRun ??= false;
    wakeUp ??= false;
    return _$GetConsoleScreenshotRequest._(
      dryRun: dryRun,
      instanceId: instanceId,
      wakeUp: wakeUp,
    );
  }

  factory GetConsoleScreenshotRequest.build(
          [void Function(GetConsoleScreenshotRequestBuilder) updates]) =
      _$GetConsoleScreenshotRequest;

  const GetConsoleScreenshotRequest._();

  factory GetConsoleScreenshotRequest.fromRequest(
    GetConsoleScreenshotRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetConsoleScreenshotRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetConsoleScreenshotRequestBuilder b) {
    b.dryRun = false;
    b.wakeUp = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the instance.
  String get instanceId;

  /// When set to `true`, acts as keystroke input and wakes up an instance that's in standby or "sleep" mode.
  bool get wakeUp;
  @override
  GetConsoleScreenshotRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        instanceId,
        wakeUp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetConsoleScreenshotRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'wakeUp',
      wakeUp,
    );
    return helper.toString();
  }
}

class GetConsoleScreenshotRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<GetConsoleScreenshotRequest> {
  const GetConsoleScreenshotRequestEc2QuerySerializer()
      : super('GetConsoleScreenshotRequest');

  @override
  Iterable<Type> get types => const [
        GetConsoleScreenshotRequest,
        _$GetConsoleScreenshotRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetConsoleScreenshotRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetConsoleScreenshotRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'InstanceId':
          result.instanceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'WakeUp':
          result.wakeUp = (serializers.deserialize(
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
    final payload = (object as GetConsoleScreenshotRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetConsoleScreenshotRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('InstanceId'))
      ..add(serializers.serialize(
        payload.instanceId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('WakeUp'))
      ..add(serializers.serialize(
        payload.wakeUp,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
