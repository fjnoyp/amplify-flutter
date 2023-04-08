// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.availability_zone; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/availability_zone_message.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/availability_zone_opt_in_status.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/availability_zone_state.dart'
    as _i2;

part 'availability_zone.g.dart';

/// Describes Availability Zones, Local Zones, and Wavelength Zones.
abstract class AvailabilityZone
    with _i1.AWSEquatable<AvailabilityZone>
    implements Built<AvailabilityZone, AvailabilityZoneBuilder> {
  /// Describes Availability Zones, Local Zones, and Wavelength Zones.
  factory AvailabilityZone({
    _i2.AvailabilityZoneState? state,
    _i3.AvailabilityZoneOptInStatus? optInStatus,
    List<_i4.AvailabilityZoneMessage>? messages,
    String? regionName,
    String? zoneName,
    String? zoneId,
    String? groupName,
    String? networkBorderGroup,
    String? zoneType,
    String? parentZoneName,
    String? parentZoneId,
  }) {
    return _$AvailabilityZone._(
      state: state,
      optInStatus: optInStatus,
      messages: messages == null ? null : _i5.BuiltList(messages),
      regionName: regionName,
      zoneName: zoneName,
      zoneId: zoneId,
      groupName: groupName,
      networkBorderGroup: networkBorderGroup,
      zoneType: zoneType,
      parentZoneName: parentZoneName,
      parentZoneId: parentZoneId,
    );
  }

  /// Describes Availability Zones, Local Zones, and Wavelength Zones.
  factory AvailabilityZone.build(
      [void Function(AvailabilityZoneBuilder) updates]) = _$AvailabilityZone;

  const AvailabilityZone._();

  static const List<_i6.SmithySerializer> serializers = [
    AvailabilityZoneEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AvailabilityZoneBuilder b) {}

  /// The state of the Availability Zone, Local Zone, or Wavelength Zone. This value is always `available`.
  _i2.AvailabilityZoneState? get state;

  /// For Availability Zones, this parameter always has the value of `opt-in-not-required`.
  ///
  /// For Local Zones and Wavelength Zones, this parameter is the opt-in status. The possible values are `opted-in`, and `not-opted-in`.
  _i3.AvailabilityZoneOptInStatus? get optInStatus;

  /// Any messages about the Availability Zone, Local Zone, or Wavelength Zone.
  _i5.BuiltList<_i4.AvailabilityZoneMessage>? get messages;

  /// The name of the Region.
  String? get regionName;

  /// The name of the Availability Zone, Local Zone, or Wavelength Zone.
  String? get zoneName;

  /// The ID of the Availability Zone, Local Zone, or Wavelength Zone.
  String? get zoneId;

  /// For Availability Zones, this parameter has the same value as the Region name.
  ///
  /// For Local Zones, the name of the associated group, for example `us-west-2-lax-1`.
  ///
  /// For Wavelength Zones, the name of the associated group, for example `us-east-1-wl1-bos-wlz-1`.
  String? get groupName;

  /// The name of the network border group.
  String? get networkBorderGroup;

  /// The type of zone. The valid values are `availability-zone`, `local-zone`, and `wavelength-zone`.
  String? get zoneType;

  /// The name of the zone that handles some of the Local Zone or Wavelength Zone control plane operations, such as API calls.
  String? get parentZoneName;

  /// The ID of the zone that handles some of the Local Zone or Wavelength Zone control plane operations, such as API calls.
  String? get parentZoneId;
  @override
  List<Object?> get props => [
        state,
        optInStatus,
        messages,
        regionName,
        zoneName,
        zoneId,
        groupName,
        networkBorderGroup,
        zoneType,
        parentZoneName,
        parentZoneId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AvailabilityZone');
    helper.add(
      'state',
      state,
    );
    helper.add(
      'optInStatus',
      optInStatus,
    );
    helper.add(
      'messages',
      messages,
    );
    helper.add(
      'regionName',
      regionName,
    );
    helper.add(
      'zoneName',
      zoneName,
    );
    helper.add(
      'zoneId',
      zoneId,
    );
    helper.add(
      'groupName',
      groupName,
    );
    helper.add(
      'networkBorderGroup',
      networkBorderGroup,
    );
    helper.add(
      'zoneType',
      zoneType,
    );
    helper.add(
      'parentZoneName',
      parentZoneName,
    );
    helper.add(
      'parentZoneId',
      parentZoneId,
    );
    return helper.toString();
  }
}

class AvailabilityZoneEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<AvailabilityZone> {
  const AvailabilityZoneEc2QuerySerializer() : super('AvailabilityZone');

  @override
  Iterable<Type> get types => const [
        AvailabilityZone,
        _$AvailabilityZone,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AvailabilityZone deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AvailabilityZoneBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'zoneState':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AvailabilityZoneState),
            ) as _i2.AvailabilityZoneState);
          }
          break;
        case 'optInStatus':
          if (value != null) {
            result.optInStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AvailabilityZoneOptInStatus),
            ) as _i3.AvailabilityZoneOptInStatus);
          }
          break;
        case 'messageSet':
          if (value != null) {
            result.messages.replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.AvailabilityZoneMessage)],
              ),
            ) as _i5.BuiltList<_i4.AvailabilityZoneMessage>));
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
        case 'zoneName':
          if (value != null) {
            result.zoneName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'zoneId':
          if (value != null) {
            result.zoneId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'groupName':
          if (value != null) {
            result.groupName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'networkBorderGroup':
          if (value != null) {
            result.networkBorderGroup = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'zoneType':
          if (value != null) {
            result.zoneType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'parentZoneName':
          if (value != null) {
            result.parentZoneName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'parentZoneId':
          if (value != null) {
            result.parentZoneId = (serializers.deserialize(
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
    final payload = (object as AvailabilityZone);
    final result = <Object?>[
      const _i6.XmlElementName(
        'AvailabilityZoneResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.state != null) {
      result
        ..add(const _i6.XmlElementName('ZoneState'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i2.AvailabilityZoneState),
        ));
    }
    if (payload.optInStatus != null) {
      result
        ..add(const _i6.XmlElementName('OptInStatus'))
        ..add(serializers.serialize(
          payload.optInStatus!,
          specifiedType:
              const FullType.nullable(_i3.AvailabilityZoneOptInStatus),
        ));
    }
    if (payload.messages != null) {
      result
        ..add(const _i6.XmlElementName('MessageSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.messages!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.AvailabilityZoneMessage)],
          ),
        ));
    }
    if (payload.regionName != null) {
      result
        ..add(const _i6.XmlElementName('RegionName'))
        ..add(serializers.serialize(
          payload.regionName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.zoneName != null) {
      result
        ..add(const _i6.XmlElementName('ZoneName'))
        ..add(serializers.serialize(
          payload.zoneName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.zoneId != null) {
      result
        ..add(const _i6.XmlElementName('ZoneId'))
        ..add(serializers.serialize(
          payload.zoneId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.groupName != null) {
      result
        ..add(const _i6.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          payload.groupName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.networkBorderGroup != null) {
      result
        ..add(const _i6.XmlElementName('NetworkBorderGroup'))
        ..add(serializers.serialize(
          payload.networkBorderGroup!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.zoneType != null) {
      result
        ..add(const _i6.XmlElementName('ZoneType'))
        ..add(serializers.serialize(
          payload.zoneType!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.parentZoneName != null) {
      result
        ..add(const _i6.XmlElementName('ParentZoneName'))
        ..add(serializers.serialize(
          payload.parentZoneName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.parentZoneId != null) {
      result
        ..add(const _i6.XmlElementName('ParentZoneId'))
        ..add(serializers.serialize(
          payload.parentZoneId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
