// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.scheduled_instance_availability; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instance_recurrence.dart'
    as _i2;

part 'scheduled_instance_availability.g.dart';

/// Describes a schedule that is available for your Scheduled Instances.
abstract class ScheduledInstanceAvailability
    with
        _i1.AWSEquatable<ScheduledInstanceAvailability>
    implements
        Built<ScheduledInstanceAvailability,
            ScheduledInstanceAvailabilityBuilder> {
  /// Describes a schedule that is available for your Scheduled Instances.
  factory ScheduledInstanceAvailability({
    String? availabilityZone,
    int? availableInstanceCount,
    DateTime? firstSlotStartTime,
    String? hourlyPrice,
    String? instanceType,
    int? maxTermDurationInDays,
    int? minTermDurationInDays,
    String? networkPlatform,
    String? platform,
    String? purchaseToken,
    _i2.ScheduledInstanceRecurrence? recurrence,
    int? slotDurationInHours,
    int? totalScheduledInstanceHours,
  }) {
    availableInstanceCount ??= 0;
    maxTermDurationInDays ??= 0;
    minTermDurationInDays ??= 0;
    slotDurationInHours ??= 0;
    totalScheduledInstanceHours ??= 0;
    return _$ScheduledInstanceAvailability._(
      availabilityZone: availabilityZone,
      availableInstanceCount: availableInstanceCount,
      firstSlotStartTime: firstSlotStartTime,
      hourlyPrice: hourlyPrice,
      instanceType: instanceType,
      maxTermDurationInDays: maxTermDurationInDays,
      minTermDurationInDays: minTermDurationInDays,
      networkPlatform: networkPlatform,
      platform: platform,
      purchaseToken: purchaseToken,
      recurrence: recurrence,
      slotDurationInHours: slotDurationInHours,
      totalScheduledInstanceHours: totalScheduledInstanceHours,
    );
  }

  /// Describes a schedule that is available for your Scheduled Instances.
  factory ScheduledInstanceAvailability.build(
          [void Function(ScheduledInstanceAvailabilityBuilder) updates]) =
      _$ScheduledInstanceAvailability;

  const ScheduledInstanceAvailability._();

  static const List<_i3.SmithySerializer> serializers = [
    ScheduledInstanceAvailabilityEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScheduledInstanceAvailabilityBuilder b) {
    b.availableInstanceCount = 0;
    b.maxTermDurationInDays = 0;
    b.minTermDurationInDays = 0;
    b.slotDurationInHours = 0;
    b.totalScheduledInstanceHours = 0;
  }

  /// The Availability Zone.
  String? get availabilityZone;

  /// The number of available instances.
  int get availableInstanceCount;

  /// The time period for the first schedule to start.
  DateTime? get firstSlotStartTime;

  /// The hourly price for a single instance.
  String? get hourlyPrice;

  /// The instance type. You can specify one of the C3, C4, M4, or R3 instance types.
  String? get instanceType;

  /// The maximum term. The only possible value is 365 days.
  int get maxTermDurationInDays;

  /// The minimum term. The only possible value is 365 days.
  int get minTermDurationInDays;

  /// The network platform (`EC2-Classic` or `EC2-VPC`).
  String? get networkPlatform;

  /// The platform (`Linux/UNIX` or `Windows`).
  String? get platform;

  /// The purchase token. This token expires in two hours.
  String? get purchaseToken;

  /// The schedule recurrence.
  _i2.ScheduledInstanceRecurrence? get recurrence;

  /// The number of hours in the schedule.
  int get slotDurationInHours;

  /// The total number of hours for a single instance for the entire term.
  int get totalScheduledInstanceHours;
  @override
  List<Object?> get props => [
        availabilityZone,
        availableInstanceCount,
        firstSlotStartTime,
        hourlyPrice,
        instanceType,
        maxTermDurationInDays,
        minTermDurationInDays,
        networkPlatform,
        platform,
        purchaseToken,
        recurrence,
        slotDurationInHours,
        totalScheduledInstanceHours,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ScheduledInstanceAvailability');
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'availableInstanceCount',
      availableInstanceCount,
    );
    helper.add(
      'firstSlotStartTime',
      firstSlotStartTime,
    );
    helper.add(
      'hourlyPrice',
      hourlyPrice,
    );
    helper.add(
      'instanceType',
      instanceType,
    );
    helper.add(
      'maxTermDurationInDays',
      maxTermDurationInDays,
    );
    helper.add(
      'minTermDurationInDays',
      minTermDurationInDays,
    );
    helper.add(
      'networkPlatform',
      networkPlatform,
    );
    helper.add(
      'platform',
      platform,
    );
    helper.add(
      'purchaseToken',
      purchaseToken,
    );
    helper.add(
      'recurrence',
      recurrence,
    );
    helper.add(
      'slotDurationInHours',
      slotDurationInHours,
    );
    helper.add(
      'totalScheduledInstanceHours',
      totalScheduledInstanceHours,
    );
    return helper.toString();
  }
}

class ScheduledInstanceAvailabilityEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ScheduledInstanceAvailability> {
  const ScheduledInstanceAvailabilityEc2QuerySerializer()
      : super('ScheduledInstanceAvailability');

  @override
  Iterable<Type> get types => const [
        ScheduledInstanceAvailability,
        _$ScheduledInstanceAvailability,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ScheduledInstanceAvailability deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledInstanceAvailabilityBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'availabilityZone':
          if (value != null) {
            result.availabilityZone = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'availableInstanceCount':
          result.availableInstanceCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'firstSlotStartTime':
          if (value != null) {
            result.firstSlotStartTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'hourlyPrice':
          if (value != null) {
            result.hourlyPrice = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'instanceType':
          if (value != null) {
            result.instanceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'maxTermDurationInDays':
          result.maxTermDurationInDays = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'minTermDurationInDays':
          result.minTermDurationInDays = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'networkPlatform':
          if (value != null) {
            result.networkPlatform = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'platform':
          if (value != null) {
            result.platform = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'purchaseToken':
          if (value != null) {
            result.purchaseToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'recurrence':
          if (value != null) {
            result.recurrence.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ScheduledInstanceRecurrence),
            ) as _i2.ScheduledInstanceRecurrence));
          }
          break;
        case 'slotDurationInHours':
          result.slotDurationInHours = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'totalScheduledInstanceHours':
          result.totalScheduledInstanceHours = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as ScheduledInstanceAvailability);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ScheduledInstanceAvailabilityResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.availabilityZone != null) {
      result
        ..add(const _i3.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i3.XmlElementName('AvailableInstanceCount'))
      ..add(serializers.serialize(
        payload.availableInstanceCount,
        specifiedType: const FullType(int),
      ));
    if (payload.firstSlotStartTime != null) {
      result
        ..add(const _i3.XmlElementName('FirstSlotStartTime'))
        ..add(serializers.serialize(
          payload.firstSlotStartTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.hourlyPrice != null) {
      result
        ..add(const _i3.XmlElementName('HourlyPrice'))
        ..add(serializers.serialize(
          payload.hourlyPrice!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceType != null) {
      result
        ..add(const _i3.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i3.XmlElementName('MaxTermDurationInDays'))
      ..add(serializers.serialize(
        payload.maxTermDurationInDays,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i3.XmlElementName('MinTermDurationInDays'))
      ..add(serializers.serialize(
        payload.minTermDurationInDays,
        specifiedType: const FullType(int),
      ));
    if (payload.networkPlatform != null) {
      result
        ..add(const _i3.XmlElementName('NetworkPlatform'))
        ..add(serializers.serialize(
          payload.networkPlatform!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.platform != null) {
      result
        ..add(const _i3.XmlElementName('Platform'))
        ..add(serializers.serialize(
          payload.platform!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.purchaseToken != null) {
      result
        ..add(const _i3.XmlElementName('PurchaseToken'))
        ..add(serializers.serialize(
          payload.purchaseToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.recurrence != null) {
      result
        ..add(const _i3.XmlElementName('Recurrence'))
        ..add(serializers.serialize(
          payload.recurrence!,
          specifiedType: const FullType(_i2.ScheduledInstanceRecurrence),
        ));
    }
    result
      ..add(const _i3.XmlElementName('SlotDurationInHours'))
      ..add(serializers.serialize(
        payload.slotDurationInHours,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i3.XmlElementName('TotalScheduledInstanceHours'))
      ..add(serializers.serialize(
        payload.totalScheduledInstanceHours,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
