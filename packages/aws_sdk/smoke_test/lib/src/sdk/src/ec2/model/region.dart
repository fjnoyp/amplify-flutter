// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.region; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'region.g.dart';

/// Describes a Region.
abstract class Region
    with _i1.AWSEquatable<Region>
    implements Built<Region, RegionBuilder> {
  /// Describes a Region.
  factory Region({
    String? endpoint,
    String? regionName,
    String? optInStatus,
  }) {
    return _$Region._(
      endpoint: endpoint,
      regionName: regionName,
      optInStatus: optInStatus,
    );
  }

  /// Describes a Region.
  factory Region.build([void Function(RegionBuilder) updates]) = _$Region;

  const Region._();

  static const List<_i2.SmithySerializer> serializers = [
    RegionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RegionBuilder b) {}

  /// The Region service endpoint.
  String? get endpoint;

  /// The name of the Region.
  String? get regionName;

  /// The Region opt-in status. The possible values are `opt-in-not-required`, `opted-in`, and `not-opted-in`.
  String? get optInStatus;
  @override
  List<Object?> get props => [
        endpoint,
        regionName,
        optInStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Region');
    helper.add(
      'endpoint',
      endpoint,
    );
    helper.add(
      'regionName',
      regionName,
    );
    helper.add(
      'optInStatus',
      optInStatus,
    );
    return helper.toString();
  }
}

class RegionEc2QuerySerializer extends _i2.StructuredSmithySerializer<Region> {
  const RegionEc2QuerySerializer() : super('Region');

  @override
  Iterable<Type> get types => const [
        Region,
        _$Region,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Region deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'regionEndpoint':
          if (value != null) {
            result.endpoint = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'regionName':
          if (value != null) {
            result.regionName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'optInStatus':
          if (value != null) {
            result.optInStatus = (serializers.deserialize(
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
    final payload = (object as Region);
    final result = <Object?>[
      const _i2.XmlElementName(
        'RegionResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.endpoint != null) {
      result
        ..add(const _i2.XmlElementName('RegionEndpoint'))
        ..add(serializers.serialize(
          payload.endpoint!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.regionName != null) {
      result
        ..add(const _i2.XmlElementName('RegionName'))
        ..add(serializers.serialize(
          payload.regionName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.optInStatus != null) {
      result
        ..add(const _i2.XmlElementName('OptInStatus'))
        ..add(serializers.serialize(
          payload.optInStatus!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
