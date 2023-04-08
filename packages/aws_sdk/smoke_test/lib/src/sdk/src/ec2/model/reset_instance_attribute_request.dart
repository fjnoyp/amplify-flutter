// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.reset_instance_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_attribute_name.dart'
    as _i3;

part 'reset_instance_attribute_request.g.dart';

abstract class ResetInstanceAttributeRequest
    with
        _i1.HttpInput<ResetInstanceAttributeRequest>,
        _i2.AWSEquatable<ResetInstanceAttributeRequest>
    implements
        Built<ResetInstanceAttributeRequest,
            ResetInstanceAttributeRequestBuilder> {
  factory ResetInstanceAttributeRequest({
    required _i3.InstanceAttributeName attribute,
    bool? dryRun,
    required String instanceId,
  }) {
    dryRun ??= false;
    return _$ResetInstanceAttributeRequest._(
      attribute: attribute,
      dryRun: dryRun,
      instanceId: instanceId,
    );
  }

  factory ResetInstanceAttributeRequest.build(
          [void Function(ResetInstanceAttributeRequestBuilder) updates]) =
      _$ResetInstanceAttributeRequest;

  const ResetInstanceAttributeRequest._();

  factory ResetInstanceAttributeRequest.fromRequest(
    ResetInstanceAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ResetInstanceAttributeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResetInstanceAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// The attribute to reset.
  ///
  /// You can only reset the following attributes: `kernel` | `ramdisk` | `sourceDestCheck`.
  _i3.InstanceAttributeName get attribute;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the instance.
  String get instanceId;
  @override
  ResetInstanceAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        attribute,
        dryRun,
        instanceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResetInstanceAttributeRequest');
    helper.add(
      'attribute',
      attribute,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    return helper.toString();
  }
}

class ResetInstanceAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ResetInstanceAttributeRequest> {
  const ResetInstanceAttributeRequestEc2QuerySerializer()
      : super('ResetInstanceAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ResetInstanceAttributeRequest,
        _$ResetInstanceAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ResetInstanceAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResetInstanceAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'attribute':
          result.attribute = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.InstanceAttributeName),
          ) as _i3.InstanceAttributeName);
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as ResetInstanceAttributeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ResetInstanceAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('Attribute'))
      ..add(serializers.serialize(
        payload.attribute,
        specifiedType: const FullType.nullable(_i3.InstanceAttributeName),
      ));
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
    return result;
  }
}
