// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_instance_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_attribute_name.dart'
    as _i3;

part 'describe_instance_attribute_request.g.dart';

abstract class DescribeInstanceAttributeRequest
    with
        _i1.HttpInput<DescribeInstanceAttributeRequest>,
        _i2.AWSEquatable<DescribeInstanceAttributeRequest>
    implements
        Built<DescribeInstanceAttributeRequest,
            DescribeInstanceAttributeRequestBuilder> {
  factory DescribeInstanceAttributeRequest({
    required _i3.InstanceAttributeName attribute,
    bool? dryRun,
    required String instanceId,
  }) {
    dryRun ??= false;
    return _$DescribeInstanceAttributeRequest._(
      attribute: attribute,
      dryRun: dryRun,
      instanceId: instanceId,
    );
  }

  factory DescribeInstanceAttributeRequest.build(
          [void Function(DescribeInstanceAttributeRequestBuilder) updates]) =
      _$DescribeInstanceAttributeRequest;

  const DescribeInstanceAttributeRequest._();

  factory DescribeInstanceAttributeRequest.fromRequest(
    DescribeInstanceAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeInstanceAttributeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeInstanceAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// The instance attribute.
  ///
  /// Note: The `enaSupport` attribute is not supported at this time.
  _i3.InstanceAttributeName get attribute;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the instance.
  String get instanceId;
  @override
  DescribeInstanceAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        attribute,
        dryRun,
        instanceId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeInstanceAttributeRequest');
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

class DescribeInstanceAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeInstanceAttributeRequest> {
  const DescribeInstanceAttributeRequestEc2QuerySerializer()
      : super('DescribeInstanceAttributeRequest');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceAttributeRequest,
        _$DescribeInstanceAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceAttributeRequestBuilder();
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
    final payload = (object as DescribeInstanceAttributeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeInstanceAttributeRequestResponse',
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
