// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.ipam_pool_cidr_failure_reason; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_cidr_failure_code.dart'
    as _i2;

part 'ipam_pool_cidr_failure_reason.g.dart';

/// Details related to why an IPAM pool CIDR failed to be provisioned.
abstract class IpamPoolCidrFailureReason
    with _i1.AWSEquatable<IpamPoolCidrFailureReason>
    implements
        Built<IpamPoolCidrFailureReason, IpamPoolCidrFailureReasonBuilder> {
  /// Details related to why an IPAM pool CIDR failed to be provisioned.
  factory IpamPoolCidrFailureReason({
    _i2.IpamPoolCidrFailureCode? code,
    String? message,
  }) {
    return _$IpamPoolCidrFailureReason._(
      code: code,
      message: message,
    );
  }

  /// Details related to why an IPAM pool CIDR failed to be provisioned.
  factory IpamPoolCidrFailureReason.build(
          [void Function(IpamPoolCidrFailureReasonBuilder) updates]) =
      _$IpamPoolCidrFailureReason;

  const IpamPoolCidrFailureReason._();

  static const List<_i3.SmithySerializer> serializers = [
    IpamPoolCidrFailureReasonEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IpamPoolCidrFailureReasonBuilder b) {}

  /// An error code related to why an IPAM pool CIDR failed to be provisioned.
  _i2.IpamPoolCidrFailureCode? get code;

  /// A message related to why an IPAM pool CIDR failed to be provisioned.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpamPoolCidrFailureReason');
    helper.add(
      'code',
      code,
    );
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class IpamPoolCidrFailureReasonEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<IpamPoolCidrFailureReason> {
  const IpamPoolCidrFailureReasonEc2QuerySerializer()
      : super('IpamPoolCidrFailureReason');

  @override
  Iterable<Type> get types => const [
        IpamPoolCidrFailureReason,
        _$IpamPoolCidrFailureReason,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpamPoolCidrFailureReason deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamPoolCidrFailureReasonBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'code':
          if (value != null) {
            result.code = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.IpamPoolCidrFailureCode),
            ) as _i2.IpamPoolCidrFailureCode);
          }
          break;
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
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
    final payload = (object as IpamPoolCidrFailureReason);
    final result = <Object?>[
      const _i3.XmlElementName(
        'IpamPoolCidrFailureReasonResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.code != null) {
      result
        ..add(const _i3.XmlElementName('Code'))
        ..add(serializers.serialize(
          payload.code!,
          specifiedType: const FullType.nullable(_i2.IpamPoolCidrFailureCode),
        ));
    }
    if (payload.message != null) {
      result
        ..add(const _i3.XmlElementName('Message'))
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
