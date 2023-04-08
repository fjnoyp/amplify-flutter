// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_type_offering; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/location_type.dart' as _i3;

part 'instance_type_offering.g.dart';

/// The instance types offered.
abstract class InstanceTypeOffering
    with _i1.AWSEquatable<InstanceTypeOffering>
    implements Built<InstanceTypeOffering, InstanceTypeOfferingBuilder> {
  /// The instance types offered.
  factory InstanceTypeOffering({
    _i2.InstanceType? instanceType,
    _i3.LocationType? locationType,
    String? location,
  }) {
    return _$InstanceTypeOffering._(
      instanceType: instanceType,
      locationType: locationType,
      location: location,
    );
  }

  /// The instance types offered.
  factory InstanceTypeOffering.build(
          [void Function(InstanceTypeOfferingBuilder) updates]) =
      _$InstanceTypeOffering;

  const InstanceTypeOffering._();

  static const List<_i4.SmithySerializer> serializers = [
    InstanceTypeOfferingEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceTypeOfferingBuilder b) {}

  /// The instance type. For more information, see [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the _Amazon EC2 User Guide_.
  _i2.InstanceType? get instanceType;

  /// The location type.
  _i3.LocationType? get locationType;

  /// The identifier for the location. This depends on the location type. For example, if the location type is `region`, the location is the Region code (for example, `us-east-2`.)
  String? get location;
  @override
  List<Object?> get props => [
        instanceType,
        locationType,
        location,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceTypeOffering');
    helper.add(
      'instanceType',
      instanceType,
    );
    helper.add(
      'locationType',
      locationType,
    );
    helper.add(
      'location',
      location,
    );
    return helper.toString();
  }
}

class InstanceTypeOfferingEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<InstanceTypeOffering> {
  const InstanceTypeOfferingEc2QuerySerializer()
      : super('InstanceTypeOffering');

  @override
  Iterable<Type> get types => const [
        InstanceTypeOffering,
        _$InstanceTypeOffering,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceTypeOffering deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceTypeOfferingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceType':
          if (value != null) {
            result.instanceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.InstanceType),
            ) as _i2.InstanceType);
          }
          break;
        case 'locationType':
          if (value != null) {
            result.locationType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.LocationType),
            ) as _i3.LocationType);
          }
          break;
        case 'location':
          if (value != null) {
            result.location = (serializers.deserialize(
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
    final payload = (object as InstanceTypeOffering);
    final result = <Object?>[
      const _i4.XmlElementName(
        'InstanceTypeOfferingResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceType != null) {
      result
        ..add(const _i4.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType.nullable(_i2.InstanceType),
        ));
    }
    if (payload.locationType != null) {
      result
        ..add(const _i4.XmlElementName('LocationType'))
        ..add(serializers.serialize(
          payload.locationType!,
          specifiedType: const FullType.nullable(_i3.LocationType),
        ));
    }
    if (payload.location != null) {
      result
        ..add(const _i4.XmlElementName('Location'))
        ..add(serializers.serialize(
          payload.location!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
