// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_availability_zones_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/availability_zone.dart' as _i2;

part 'describe_availability_zones_result.g.dart';

abstract class DescribeAvailabilityZonesResult
    with
        _i1.AWSEquatable<DescribeAvailabilityZonesResult>
    implements
        Built<DescribeAvailabilityZonesResult,
            DescribeAvailabilityZonesResultBuilder> {
  factory DescribeAvailabilityZonesResult(
      {List<_i2.AvailabilityZone>? availabilityZones}) {
    return _$DescribeAvailabilityZonesResult._(
        availabilityZones: availabilityZones == null
            ? null
            : _i3.BuiltList(availabilityZones));
  }

  factory DescribeAvailabilityZonesResult.build(
          [void Function(DescribeAvailabilityZonesResultBuilder) updates]) =
      _$DescribeAvailabilityZonesResult;

  const DescribeAvailabilityZonesResult._();

  /// Constructs a [DescribeAvailabilityZonesResult] from a [payload] and [response].
  factory DescribeAvailabilityZonesResult.fromResponse(
    DescribeAvailabilityZonesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeAvailabilityZonesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeAvailabilityZonesResultBuilder b) {}

  /// Information about the Availability Zones, Local Zones, and Wavelength Zones.
  _i3.BuiltList<_i2.AvailabilityZone>? get availabilityZones;
  @override
  List<Object?> get props => [availabilityZones];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeAvailabilityZonesResult');
    helper.add(
      'availabilityZones',
      availabilityZones,
    );
    return helper.toString();
  }
}

class DescribeAvailabilityZonesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeAvailabilityZonesResult> {
  const DescribeAvailabilityZonesResultEc2QuerySerializer()
      : super('DescribeAvailabilityZonesResult');

  @override
  Iterable<Type> get types => const [
        DescribeAvailabilityZonesResult,
        _$DescribeAvailabilityZonesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeAvailabilityZonesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAvailabilityZonesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'availabilityZoneInfo':
          if (value != null) {
            result.availabilityZones.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.AvailabilityZone)],
              ),
            ) as _i3.BuiltList<_i2.AvailabilityZone>));
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
    final payload = (object as DescribeAvailabilityZonesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeAvailabilityZonesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.availabilityZones != null) {
      result
        ..add(const _i4.XmlElementName('AvailabilityZoneInfo'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.availabilityZones!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.AvailabilityZone)],
          ),
        ));
    }
    return result;
  }
}
