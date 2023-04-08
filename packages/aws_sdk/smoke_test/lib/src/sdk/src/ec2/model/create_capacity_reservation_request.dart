// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_capacity_reservation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_instance_platform.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_tenancy.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/end_date_type.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_match_criteria.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i7;

part 'create_capacity_reservation_request.g.dart';

abstract class CreateCapacityReservationRequest
    with
        _i1.HttpInput<CreateCapacityReservationRequest>,
        _i2.AWSEquatable<CreateCapacityReservationRequest>
    implements
        Built<CreateCapacityReservationRequest,
            CreateCapacityReservationRequestBuilder> {
  factory CreateCapacityReservationRequest({
    String? clientToken,
    required String instanceType,
    required _i3.CapacityReservationInstancePlatform instancePlatform,
    String? availabilityZone,
    String? availabilityZoneId,
    _i4.CapacityReservationTenancy? tenancy,
    int? instanceCount,
    bool? ebsOptimized,
    bool? ephemeralStorage,
    DateTime? endDate,
    _i5.EndDateType? endDateType,
    _i6.InstanceMatchCriteria? instanceMatchCriteria,
    List<_i7.TagSpecification>? tagSpecifications,
    bool? dryRun,
    String? outpostArn,
    String? placementGroupArn,
  }) {
    instanceCount ??= 0;
    ebsOptimized ??= false;
    ephemeralStorage ??= false;
    dryRun ??= false;
    return _$CreateCapacityReservationRequest._(
      clientToken: clientToken,
      instanceType: instanceType,
      instancePlatform: instancePlatform,
      availabilityZone: availabilityZone,
      availabilityZoneId: availabilityZoneId,
      tenancy: tenancy,
      instanceCount: instanceCount,
      ebsOptimized: ebsOptimized,
      ephemeralStorage: ephemeralStorage,
      endDate: endDate,
      endDateType: endDateType,
      instanceMatchCriteria: instanceMatchCriteria,
      tagSpecifications:
          tagSpecifications == null ? null : _i8.BuiltList(tagSpecifications),
      dryRun: dryRun,
      outpostArn: outpostArn,
      placementGroupArn: placementGroupArn,
    );
  }

  factory CreateCapacityReservationRequest.build(
          [void Function(CreateCapacityReservationRequestBuilder) updates]) =
      _$CreateCapacityReservationRequest;

  const CreateCapacityReservationRequest._();

  factory CreateCapacityReservationRequest.fromRequest(
    CreateCapacityReservationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateCapacityReservationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateCapacityReservationRequestBuilder b) {
    b.instanceCount = 0;
    b.ebsOptimized = false;
    b.ephemeralStorage = false;
    b.dryRun = false;
  }

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensure Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// The instance type for which to reserve capacity. For more information, see [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the _Amazon EC2 User Guide_.
  String get instanceType;

  /// The type of operating system for which to reserve capacity.
  _i3.CapacityReservationInstancePlatform get instancePlatform;

  /// The Availability Zone in which to create the Capacity Reservation.
  String? get availabilityZone;

  /// The ID of the Availability Zone in which to create the Capacity Reservation.
  String? get availabilityZoneId;

  /// Indicates the tenancy of the Capacity Reservation. A Capacity Reservation can have one of the following tenancy settings:
  ///
  /// *   `default` \- The Capacity Reservation is created on hardware that is shared with other Amazon Web Services accounts.
  ///
  /// *   `dedicated` \- The Capacity Reservation is created on single-tenant hardware that is dedicated to a single Amazon Web Services account.
  _i4.CapacityReservationTenancy? get tenancy;

  /// The number of instances for which to reserve capacity.
  ///
  /// Valid range: 1 - 1000
  int get instanceCount;

  /// Indicates whether the Capacity Reservation supports EBS-optimized instances. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS- optimized instance.
  bool get ebsOptimized;

  /// _Deprecated._
  bool get ephemeralStorage;

  /// The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. The Capacity Reservation's state changes to `expired` when it reaches its end date and time.
  ///
  /// You must provide an `EndDate` value if `EndDateType` is `limited`. Omit `EndDate` if `EndDateType` is `unlimited`.
  ///
  /// If the `EndDateType` is `limited`, the Capacity Reservation is cancelled within an hour from the specified time. For example, if you specify 5/31/2019, 13:30:55, the Capacity Reservation is guaranteed to end between 13:30:55 and 14:30:55 on 5/31/2019.
  DateTime? get endDate;

  /// Indicates the way in which the Capacity Reservation ends. A Capacity Reservation can have one of the following end types:
  ///
  /// *   `unlimited` \- The Capacity Reservation remains active until you explicitly cancel it. Do not provide an `EndDate` if the `EndDateType` is `unlimited`.
  ///
  /// *   `limited` \- The Capacity Reservation expires automatically at a specified date and time. You must provide an `EndDate` value if the `EndDateType` value is `limited`.
  _i5.EndDateType? get endDateType;

  /// Indicates the type of instance launches that the Capacity Reservation accepts. The options include:
  ///
  /// *   `open` \- The Capacity Reservation automatically matches all instances that have matching attributes (instance type, platform, and Availability Zone). Instances that have matching attributes run in the Capacity Reservation automatically without specifying any additional parameters.
  ///
  /// *   `targeted` \- The Capacity Reservation only accepts instances that have matching attributes (instance type, platform, and Availability Zone), and explicitly target the Capacity Reservation. This ensures that only permitted instances can use the reserved capacity.
  ///
  ///
  /// Default: `open`
  _i6.InstanceMatchCriteria? get instanceMatchCriteria;

  /// The tags to apply to the Capacity Reservation during launch.
  _i8.BuiltList<_i7.TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The Amazon Resource Name (ARN) of the Outpost on which to create the Capacity Reservation.
  String? get outpostArn;

  /// The Amazon Resource Name (ARN) of the cluster placement group in which to create the Capacity Reservation. For more information, see [Capacity Reservations for cluster placement groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/cr-cpg.html) in the _Amazon EC2 User Guide_.
  String? get placementGroupArn;
  @override
  CreateCapacityReservationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientToken,
        instanceType,
        instancePlatform,
        availabilityZone,
        availabilityZoneId,
        tenancy,
        instanceCount,
        ebsOptimized,
        ephemeralStorage,
        endDate,
        endDateType,
        instanceMatchCriteria,
        tagSpecifications,
        dryRun,
        outpostArn,
        placementGroupArn,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateCapacityReservationRequest');
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'instanceType',
      instanceType,
    );
    helper.add(
      'instancePlatform',
      instancePlatform,
    );
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'availabilityZoneId',
      availabilityZoneId,
    );
    helper.add(
      'tenancy',
      tenancy,
    );
    helper.add(
      'instanceCount',
      instanceCount,
    );
    helper.add(
      'ebsOptimized',
      ebsOptimized,
    );
    helper.add(
      'ephemeralStorage',
      ephemeralStorage,
    );
    helper.add(
      'endDate',
      endDate,
    );
    helper.add(
      'endDateType',
      endDateType,
    );
    helper.add(
      'instanceMatchCriteria',
      instanceMatchCriteria,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'outpostArn',
      outpostArn,
    );
    helper.add(
      'placementGroupArn',
      placementGroupArn,
    );
    return helper.toString();
  }
}

class CreateCapacityReservationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateCapacityReservationRequest> {
  const CreateCapacityReservationRequestEc2QuerySerializer()
      : super('CreateCapacityReservationRequest');

  @override
  Iterable<Type> get types => const [
        CreateCapacityReservationRequest,
        _$CreateCapacityReservationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateCapacityReservationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCapacityReservationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'InstanceType':
          result.instanceType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'InstancePlatform':
          result.instancePlatform = (serializers.deserialize(
            value!,
            specifiedType:
                const FullType(_i3.CapacityReservationInstancePlatform),
          ) as _i3.CapacityReservationInstancePlatform);
          break;
        case 'AvailabilityZone':
          if (value != null) {
            result.availabilityZone = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AvailabilityZoneId':
          if (value != null) {
            result.availabilityZoneId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Tenancy':
          if (value != null) {
            result.tenancy = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.CapacityReservationTenancy),
            ) as _i4.CapacityReservationTenancy);
          }
          break;
        case 'InstanceCount':
          result.instanceCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'EbsOptimized':
          result.ebsOptimized = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'EphemeralStorage':
          result.ephemeralStorage = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'EndDate':
          if (value != null) {
            result.endDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'EndDateType':
          if (value != null) {
            result.endDateType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.EndDateType),
            ) as _i5.EndDateType);
          }
          break;
        case 'InstanceMatchCriteria':
          if (value != null) {
            result.instanceMatchCriteria = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.InstanceMatchCriteria),
            ) as _i6.InstanceMatchCriteria);
          }
          break;
        case 'TagSpecifications':
          if (value != null) {
            result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i7.TagSpecification)],
              ),
            ) as _i8.BuiltList<_i7.TagSpecification>));
          }
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'OutpostArn':
          if (value != null) {
            result.outpostArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PlacementGroupArn':
          if (value != null) {
            result.placementGroupArn = (serializers.deserialize(
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
    final payload = (object as CreateCapacityReservationRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateCapacityReservationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('InstanceType'))
      ..add(serializers.serialize(
        payload.instanceType,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('InstancePlatform'))
      ..add(serializers.serialize(
        payload.instancePlatform,
        specifiedType:
            const FullType.nullable(_i3.CapacityReservationInstancePlatform),
      ));
    if (payload.availabilityZone != null) {
      result
        ..add(const _i1.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.availabilityZoneId != null) {
      result
        ..add(const _i1.XmlElementName('AvailabilityZoneId'))
        ..add(serializers.serialize(
          payload.availabilityZoneId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tenancy != null) {
      result
        ..add(const _i1.XmlElementName('Tenancy'))
        ..add(serializers.serialize(
          payload.tenancy!,
          specifiedType:
              const FullType.nullable(_i4.CapacityReservationTenancy),
        ));
    }
    result
      ..add(const _i1.XmlElementName('InstanceCount'))
      ..add(serializers.serialize(
        payload.instanceCount,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i1.XmlElementName('EbsOptimized'))
      ..add(serializers.serialize(
        payload.ebsOptimized,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('EphemeralStorage'))
      ..add(serializers.serialize(
        payload.ephemeralStorage,
        specifiedType: const FullType(bool),
      ));
    if (payload.endDate != null) {
      result
        ..add(const _i1.XmlElementName('EndDate'))
        ..add(serializers.serialize(
          payload.endDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.endDateType != null) {
      result
        ..add(const _i1.XmlElementName('EndDateType'))
        ..add(serializers.serialize(
          payload.endDateType!,
          specifiedType: const FullType.nullable(_i5.EndDateType),
        ));
    }
    if (payload.instanceMatchCriteria != null) {
      result
        ..add(const _i1.XmlElementName('InstanceMatchCriteria'))
        ..add(serializers.serialize(
          payload.instanceMatchCriteria!,
          specifiedType: const FullType.nullable(_i6.InstanceMatchCriteria),
        ));
    }
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('TagSpecifications'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i7.TagSpecification)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.outpostArn != null) {
      result
        ..add(const _i1.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          payload.outpostArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.placementGroupArn != null) {
      result
        ..add(const _i1.XmlElementName('PlacementGroupArn'))
        ..add(serializers.serialize(
          payload.placementGroupArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
