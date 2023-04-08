// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.host; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i10;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/allocation_state.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/allows_multiple_instance_types.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/auto_placement.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/available_capacity.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/host_instance.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/host_properties.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/host_recovery.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i7;

part 'host.g.dart';

/// Describes the properties of the Dedicated Host.
abstract class Host
    with _i1.AWSEquatable<Host>
    implements Built<Host, HostBuilder> {
  /// Describes the properties of the Dedicated Host.
  factory Host({
    _i2.AutoPlacement? autoPlacement,
    String? availabilityZone,
    _i3.AvailableCapacity? availableCapacity,
    String? clientToken,
    String? hostId,
    _i4.HostProperties? hostProperties,
    String? hostReservationId,
    List<_i5.HostInstance>? instances,
    _i6.AllocationState? state,
    DateTime? allocationTime,
    DateTime? releaseTime,
    List<_i7.Tag>? tags,
    _i8.HostRecovery? hostRecovery,
    _i9.AllowsMultipleInstanceTypes? allowsMultipleInstanceTypes,
    String? ownerId,
    String? availabilityZoneId,
    bool? memberOfServiceLinkedResourceGroup,
    String? outpostArn,
  }) {
    memberOfServiceLinkedResourceGroup ??= false;
    return _$Host._(
      autoPlacement: autoPlacement,
      availabilityZone: availabilityZone,
      availableCapacity: availableCapacity,
      clientToken: clientToken,
      hostId: hostId,
      hostProperties: hostProperties,
      hostReservationId: hostReservationId,
      instances: instances == null ? null : _i10.BuiltList(instances),
      state: state,
      allocationTime: allocationTime,
      releaseTime: releaseTime,
      tags: tags == null ? null : _i10.BuiltList(tags),
      hostRecovery: hostRecovery,
      allowsMultipleInstanceTypes: allowsMultipleInstanceTypes,
      ownerId: ownerId,
      availabilityZoneId: availabilityZoneId,
      memberOfServiceLinkedResourceGroup: memberOfServiceLinkedResourceGroup,
      outpostArn: outpostArn,
    );
  }

  /// Describes the properties of the Dedicated Host.
  factory Host.build([void Function(HostBuilder) updates]) = _$Host;

  const Host._();

  static const List<_i11.SmithySerializer> serializers = [
    HostEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HostBuilder b) {
    b.memberOfServiceLinkedResourceGroup = false;
  }

  /// Whether auto-placement is on or off.
  _i2.AutoPlacement? get autoPlacement;

  /// The Availability Zone of the Dedicated Host.
  String? get availabilityZone;

  /// Information about the instances running on the Dedicated Host.
  _i3.AvailableCapacity? get availableCapacity;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// The ID of the Dedicated Host.
  String? get hostId;

  /// The hardware specifications of the Dedicated Host.
  _i4.HostProperties? get hostProperties;

  /// The reservation ID of the Dedicated Host. This returns a `null` response if the Dedicated Host doesn't have an associated reservation.
  String? get hostReservationId;

  /// The IDs and instance type that are currently running on the Dedicated Host.
  _i10.BuiltList<_i5.HostInstance>? get instances;

  /// The Dedicated Host's state.
  _i6.AllocationState? get state;

  /// The time that the Dedicated Host was allocated.
  DateTime? get allocationTime;

  /// The time that the Dedicated Host was released.
  DateTime? get releaseTime;

  /// Any tags assigned to the Dedicated Host.
  _i10.BuiltList<_i7.Tag>? get tags;

  /// Indicates whether host recovery is enabled or disabled for the Dedicated Host.
  _i8.HostRecovery? get hostRecovery;

  /// Indicates whether the Dedicated Host supports multiple instance types of the same instance family. If the value is `on`, the Dedicated Host supports multiple instance types in the instance family. If the value is `off`, the Dedicated Host supports a single instance type only.
  _i9.AllowsMultipleInstanceTypes? get allowsMultipleInstanceTypes;

  /// The ID of the Amazon Web Services account that owns the Dedicated Host.
  String? get ownerId;

  /// The ID of the Availability Zone in which the Dedicated Host is allocated.
  String? get availabilityZoneId;

  /// Indicates whether the Dedicated Host is in a host resource group. If **memberOfServiceLinkedResourceGroup** is `true`, the host is in a host resource group; otherwise, it is not.
  bool get memberOfServiceLinkedResourceGroup;

  /// The Amazon Resource Name (ARN) of the Amazon Web Services Outpost on which the Dedicated Host is allocated.
  String? get outpostArn;
  @override
  List<Object?> get props => [
        autoPlacement,
        availabilityZone,
        availableCapacity,
        clientToken,
        hostId,
        hostProperties,
        hostReservationId,
        instances,
        state,
        allocationTime,
        releaseTime,
        tags,
        hostRecovery,
        allowsMultipleInstanceTypes,
        ownerId,
        availabilityZoneId,
        memberOfServiceLinkedResourceGroup,
        outpostArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Host');
    helper.add(
      'autoPlacement',
      autoPlacement,
    );
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'availableCapacity',
      availableCapacity,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'hostId',
      hostId,
    );
    helper.add(
      'hostProperties',
      hostProperties,
    );
    helper.add(
      'hostReservationId',
      hostReservationId,
    );
    helper.add(
      'instances',
      instances,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'allocationTime',
      allocationTime,
    );
    helper.add(
      'releaseTime',
      releaseTime,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'hostRecovery',
      hostRecovery,
    );
    helper.add(
      'allowsMultipleInstanceTypes',
      allowsMultipleInstanceTypes,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'availabilityZoneId',
      availabilityZoneId,
    );
    helper.add(
      'memberOfServiceLinkedResourceGroup',
      memberOfServiceLinkedResourceGroup,
    );
    helper.add(
      'outpostArn',
      outpostArn,
    );
    return helper.toString();
  }
}

class HostEc2QuerySerializer extends _i11.StructuredSmithySerializer<Host> {
  const HostEc2QuerySerializer() : super('Host');

  @override
  Iterable<Type> get types => const [
        Host,
        _$Host,
      ];
  @override
  Iterable<_i11.ShapeId> get supportedProtocols => const [
        _i11.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Host deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HostBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'autoPlacement':
          if (value != null) {
            result.autoPlacement = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AutoPlacement),
            ) as _i2.AutoPlacement);
          }
          break;
        case 'availabilityZone':
          if (value != null) {
            result.availabilityZone = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'availableCapacity':
          if (value != null) {
            result.availableCapacity.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AvailableCapacity),
            ) as _i3.AvailableCapacity));
          }
          break;
        case 'clientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'hostId':
          if (value != null) {
            result.hostId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'hostProperties':
          if (value != null) {
            result.hostProperties.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.HostProperties),
            ) as _i4.HostProperties));
          }
          break;
        case 'hostReservationId':
          if (value != null) {
            result.hostReservationId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'instances':
          if (value != null) {
            result.instances.replace((const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i5.HostInstance)],
              ),
            ) as _i10.BuiltList<_i5.HostInstance>));
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.AllocationState),
            ) as _i6.AllocationState);
          }
          break;
        case 'allocationTime':
          if (value != null) {
            result.allocationTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'releaseTime':
          if (value != null) {
            result.releaseTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i7.Tag)],
              ),
            ) as _i10.BuiltList<_i7.Tag>));
          }
          break;
        case 'hostRecovery':
          if (value != null) {
            result.hostRecovery = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.HostRecovery),
            ) as _i8.HostRecovery);
          }
          break;
        case 'allowsMultipleInstanceTypes':
          if (value != null) {
            result.allowsMultipleInstanceTypes = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i9.AllowsMultipleInstanceTypes),
            ) as _i9.AllowsMultipleInstanceTypes);
          }
          break;
        case 'ownerId':
          if (value != null) {
            result.ownerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'availabilityZoneId':
          if (value != null) {
            result.availabilityZoneId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'memberOfServiceLinkedResourceGroup':
          result.memberOfServiceLinkedResourceGroup = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'outpostArn':
          if (value != null) {
            result.outpostArn = (serializers.deserialize(
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
    final payload = (object as Host);
    final result = <Object?>[
      const _i11.XmlElementName(
        'HostResponse',
        _i11.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.autoPlacement != null) {
      result
        ..add(const _i11.XmlElementName('AutoPlacement'))
        ..add(serializers.serialize(
          payload.autoPlacement!,
          specifiedType: const FullType.nullable(_i2.AutoPlacement),
        ));
    }
    if (payload.availabilityZone != null) {
      result
        ..add(const _i11.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.availableCapacity != null) {
      result
        ..add(const _i11.XmlElementName('AvailableCapacity'))
        ..add(serializers.serialize(
          payload.availableCapacity!,
          specifiedType: const FullType(_i3.AvailableCapacity),
        ));
    }
    if (payload.clientToken != null) {
      result
        ..add(const _i11.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.hostId != null) {
      result
        ..add(const _i11.XmlElementName('HostId'))
        ..add(serializers.serialize(
          payload.hostId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.hostProperties != null) {
      result
        ..add(const _i11.XmlElementName('HostProperties'))
        ..add(serializers.serialize(
          payload.hostProperties!,
          specifiedType: const FullType(_i4.HostProperties),
        ));
    }
    if (payload.hostReservationId != null) {
      result
        ..add(const _i11.XmlElementName('HostReservationId'))
        ..add(serializers.serialize(
          payload.hostReservationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instances != null) {
      result
        ..add(const _i11.XmlElementName('Instances'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.instances!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i5.HostInstance)],
          ),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i11.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i6.AllocationState),
        ));
    }
    if (payload.allocationTime != null) {
      result
        ..add(const _i11.XmlElementName('AllocationTime'))
        ..add(serializers.serialize(
          payload.allocationTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.releaseTime != null) {
      result
        ..add(const _i11.XmlElementName('ReleaseTime'))
        ..add(serializers.serialize(
          payload.releaseTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i11.XmlElementName('TagSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i7.Tag)],
          ),
        ));
    }
    if (payload.hostRecovery != null) {
      result
        ..add(const _i11.XmlElementName('HostRecovery'))
        ..add(serializers.serialize(
          payload.hostRecovery!,
          specifiedType: const FullType.nullable(_i8.HostRecovery),
        ));
    }
    if (payload.allowsMultipleInstanceTypes != null) {
      result
        ..add(const _i11.XmlElementName('AllowsMultipleInstanceTypes'))
        ..add(serializers.serialize(
          payload.allowsMultipleInstanceTypes!,
          specifiedType:
              const FullType.nullable(_i9.AllowsMultipleInstanceTypes),
        ));
    }
    if (payload.ownerId != null) {
      result
        ..add(const _i11.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.availabilityZoneId != null) {
      result
        ..add(const _i11.XmlElementName('AvailabilityZoneId'))
        ..add(serializers.serialize(
          payload.availabilityZoneId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i11.XmlElementName('MemberOfServiceLinkedResourceGroup'))
      ..add(serializers.serialize(
        payload.memberOfServiceLinkedResourceGroup,
        specifiedType: const FullType(bool),
      ));
    if (payload.outpostArn != null) {
      result
        ..add(const _i11.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          payload.outpostArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
