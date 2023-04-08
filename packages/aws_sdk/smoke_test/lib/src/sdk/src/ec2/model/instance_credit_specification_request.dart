// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_credit_specification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'instance_credit_specification_request.g.dart';

/// Describes the credit option for CPU usage of a burstable performance instance.
abstract class InstanceCreditSpecificationRequest
    with
        _i1.AWSEquatable<InstanceCreditSpecificationRequest>
    implements
        Built<InstanceCreditSpecificationRequest,
            InstanceCreditSpecificationRequestBuilder> {
  /// Describes the credit option for CPU usage of a burstable performance instance.
  factory InstanceCreditSpecificationRequest({
    String? instanceId,
    String? cpuCredits,
  }) {
    return _$InstanceCreditSpecificationRequest._(
      instanceId: instanceId,
      cpuCredits: cpuCredits,
    );
  }

  /// Describes the credit option for CPU usage of a burstable performance instance.
  factory InstanceCreditSpecificationRequest.build(
          [void Function(InstanceCreditSpecificationRequestBuilder) updates]) =
      _$InstanceCreditSpecificationRequest;

  const InstanceCreditSpecificationRequest._();

  static const List<_i2.SmithySerializer> serializers = [
    InstanceCreditSpecificationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceCreditSpecificationRequestBuilder b) {}

  /// The ID of the instance.
  String? get instanceId;

  /// The credit option for CPU usage of the instance.
  ///
  /// Valid values: `standard` | `unlimited`
  ///
  /// T3 instances with `host` tenancy do not support the `unlimited` CPU credit option.
  String? get cpuCredits;
  @override
  List<Object?> get props => [
        instanceId,
        cpuCredits,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InstanceCreditSpecificationRequest');
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'cpuCredits',
      cpuCredits,
    );
    return helper.toString();
  }
}

class InstanceCreditSpecificationRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InstanceCreditSpecificationRequest> {
  const InstanceCreditSpecificationRequestEc2QuerySerializer()
      : super('InstanceCreditSpecificationRequest');

  @override
  Iterable<Type> get types => const [
        InstanceCreditSpecificationRequest,
        _$InstanceCreditSpecificationRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceCreditSpecificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceCreditSpecificationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'InstanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'CpuCredits':
          if (value != null) {
            result.cpuCredits = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
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
    final payload = (object as InstanceCreditSpecificationRequest);
    final result = <Object?>[
      const _i2.XmlElementName(
        'InstanceCreditSpecificationRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceId != null) {
      result
        ..add(const _i2.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.cpuCredits != null) {
      result
        ..add(const _i2.XmlElementName('CpuCredits'))
        ..add(serializers.serialize(
          payload.cpuCredits!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
