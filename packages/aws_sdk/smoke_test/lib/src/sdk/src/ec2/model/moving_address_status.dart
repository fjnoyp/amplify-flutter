// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.moving_address_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/move_status.dart' as _i2;

part 'moving_address_status.g.dart';

/// Describes the status of a moving Elastic IP address.
///
/// We are retiring EC2-Classic. We recommend that you migrate from EC2-Classic to a VPC. For more information, see [Migrate from EC2-Classic to a VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in the _Amazon Elastic Compute Cloud User Guide_.
abstract class MovingAddressStatus
    with _i1.AWSEquatable<MovingAddressStatus>
    implements Built<MovingAddressStatus, MovingAddressStatusBuilder> {
  /// Describes the status of a moving Elastic IP address.
  ///
  /// We are retiring EC2-Classic. We recommend that you migrate from EC2-Classic to a VPC. For more information, see [Migrate from EC2-Classic to a VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in the _Amazon Elastic Compute Cloud User Guide_.
  factory MovingAddressStatus({
    _i2.MoveStatus? moveStatus,
    String? publicIp,
  }) {
    return _$MovingAddressStatus._(
      moveStatus: moveStatus,
      publicIp: publicIp,
    );
  }

  /// Describes the status of a moving Elastic IP address.
  ///
  /// We are retiring EC2-Classic. We recommend that you migrate from EC2-Classic to a VPC. For more information, see [Migrate from EC2-Classic to a VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in the _Amazon Elastic Compute Cloud User Guide_.
  factory MovingAddressStatus.build(
          [void Function(MovingAddressStatusBuilder) updates]) =
      _$MovingAddressStatus;

  const MovingAddressStatus._();

  static const List<_i3.SmithySerializer> serializers = [
    MovingAddressStatusEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MovingAddressStatusBuilder b) {}

  /// The status of the Elastic IP address that's being moved to the EC2-VPC platform, or restored to the EC2-Classic platform.
  _i2.MoveStatus? get moveStatus;

  /// The Elastic IP address.
  String? get publicIp;
  @override
  List<Object?> get props => [
        moveStatus,
        publicIp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MovingAddressStatus');
    helper.add(
      'moveStatus',
      moveStatus,
    );
    helper.add(
      'publicIp',
      publicIp,
    );
    return helper.toString();
  }
}

class MovingAddressStatusEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<MovingAddressStatus> {
  const MovingAddressStatusEc2QuerySerializer() : super('MovingAddressStatus');

  @override
  Iterable<Type> get types => const [
        MovingAddressStatus,
        _$MovingAddressStatus,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  MovingAddressStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MovingAddressStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'moveStatus':
          if (value != null) {
            result.moveStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.MoveStatus),
            ) as _i2.MoveStatus);
          }
          break;
        case 'publicIp':
          if (value != null) {
            result.publicIp = (serializers.deserialize(
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
    final payload = (object as MovingAddressStatus);
    final result = <Object?>[
      const _i3.XmlElementName(
        'MovingAddressStatusResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.moveStatus != null) {
      result
        ..add(const _i3.XmlElementName('MoveStatus'))
        ..add(serializers.serialize(
          payload.moveStatus!,
          specifiedType: const FullType.nullable(_i2.MoveStatus),
        ));
    }
    if (payload.publicIp != null) {
      result
        ..add(const _i3.XmlElementName('PublicIp'))
        ..add(serializers.serialize(
          payload.publicIp!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
