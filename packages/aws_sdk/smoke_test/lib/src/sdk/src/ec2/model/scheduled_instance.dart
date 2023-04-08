// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.scheduled_instance; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instance_recurrence.dart'
    as _i2;

part 'scheduled_instance.g.dart';

/// Describes a Scheduled Instance.
abstract class ScheduledInstance
    with _i1.AWSEquatable<ScheduledInstance>
    implements Built<ScheduledInstance, ScheduledInstanceBuilder> {
  /// Describes a Scheduled Instance.
  factory ScheduledInstance({
    String? availabilityZone,
    DateTime? createDate,
    String? hourlyPrice,
    int? instanceCount,
    String? instanceType,
    String? networkPlatform,
    DateTime? nextSlotStartTime,
    String? platform,
    DateTime? previousSlotEndTime,
    _i2.ScheduledInstanceRecurrence? recurrence,
    String? scheduledInstanceId,
    int? slotDurationInHours,
    DateTime? termEndDate,
    DateTime? termStartDate,
    int? totalScheduledInstanceHours,
  }) {
    instanceCount ??= 0;
    slotDurationInHours ??= 0;
    totalScheduledInstanceHours ??= 0;
    return _$ScheduledInstance._(
      availabilityZone: availabilityZone,
      createDate: createDate,
      hourlyPrice: hourlyPrice,
      instanceCount: instanceCount,
      instanceType: instanceType,
      networkPlatform: networkPlatform,
      nextSlotStartTime: nextSlotStartTime,
      platform: platform,
      previousSlotEndTime: previousSlotEndTime,
      recurrence: recurrence,
      scheduledInstanceId: scheduledInstanceId,
      slotDurationInHours: slotDurationInHours,
      termEndDate: termEndDate,
      termStartDate: termStartDate,
      totalScheduledInstanceHours: totalScheduledInstanceHours,
    );
  }

  /// Describes a Scheduled Instance.
  factory ScheduledInstance.build(
      [void Function(ScheduledInstanceBuilder) updates]) = _$ScheduledInstance;

  const ScheduledInstance._();

  static const List<_i3.SmithySerializer> serializers = [
    ScheduledInstanceEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScheduledInstanceBuilder b) {
    b.instanceCount = 0;
    b.slotDurationInHours = 0;
    b.totalScheduledInstanceHours = 0;
  }

  /// The Availability Zone.
  String? get availabilityZone;

  /// The date when the Scheduled Instance was purchased.
  DateTime? get createDate;

  /// The hourly price for a single instance.
  String? get hourlyPrice;

  /// The number of instances.
  int get instanceCount;

  /// The instance type.
  String? get instanceType;

  /// The network platform (`EC2-Classic` or `EC2-VPC`).
  String? get networkPlatform;

  /// The time for the next schedule to start.
  DateTime? get nextSlotStartTime;

  /// The platform (`Linux/UNIX` or `Windows`).
  String? get platform;

  /// The time that the previous schedule ended or will end.
  DateTime? get previousSlotEndTime;

  /// The schedule recurrence.
  _i2.ScheduledInstanceRecurrence? get recurrence;

  /// The Scheduled Instance ID.
  String? get scheduledInstanceId;

  /// The number of hours in the schedule.
  int get slotDurationInHours;

  /// The end date for the Scheduled Instance.
  DateTime? get termEndDate;

  /// The start date for the Scheduled Instance.
  DateTime? get termStartDate;

  /// The total number of hours for a single instance for the entire term.
  int get totalScheduledInstanceHours;
  @override
  List<Object?> get props => [
        availabilityZone,
        createDate,
        hourlyPrice,
        instanceCount,
        instanceType,
        networkPlatform,
        nextSlotStartTime,
        platform,
        previousSlotEndTime,
        recurrence,
        scheduledInstanceId,
        slotDurationInHours,
        termEndDate,
        termStartDate,
        totalScheduledInstanceHours,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ScheduledInstance');
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'createDate',
      createDate,
    );
    helper.add(
      'hourlyPrice',
      hourlyPrice,
    );
    helper.add(
      'instanceCount',
      instanceCount,
    );
    helper.add(
      'instanceType',
      instanceType,
    );
    helper.add(
      'networkPlatform',
      networkPlatform,
    );
    helper.add(
      'nextSlotStartTime',
      nextSlotStartTime,
    );
    helper.add(
      'platform',
      platform,
    );
    helper.add(
      'previousSlotEndTime',
      previousSlotEndTime,
    );
    helper.add(
      'recurrence',
      recurrence,
    );
    helper.add(
      'scheduledInstanceId',
      scheduledInstanceId,
    );
    helper.add(
      'slotDurationInHours',
      slotDurationInHours,
    );
    helper.add(
      'termEndDate',
      termEndDate,
    );
    helper.add(
      'termStartDate',
      termStartDate,
    );
    helper.add(
      'totalScheduledInstanceHours',
      totalScheduledInstanceHours,
    );
    return helper.toString();
  }
}

class ScheduledInstanceEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ScheduledInstance> {
  const ScheduledInstanceEc2QuerySerializer() : super('ScheduledInstance');

  @override
  Iterable<Type> get types => const [
        ScheduledInstance,
        _$ScheduledInstance,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ScheduledInstance deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledInstanceBuilder();
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
        case 'createDate':
          if (value != null) {
            result.createDate = (serializers.deserialize(
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
        case 'instanceCount':
          result.instanceCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'instanceType':
          if (value != null) {
            result.instanceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'networkPlatform':
          if (value != null) {
            result.networkPlatform = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'nextSlotStartTime':
          if (value != null) {
            result.nextSlotStartTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
        case 'previousSlotEndTime':
          if (value != null) {
            result.previousSlotEndTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
        case 'scheduledInstanceId':
          if (value != null) {
            result.scheduledInstanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'slotDurationInHours':
          result.slotDurationInHours = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'termEndDate':
          if (value != null) {
            result.termEndDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'termStartDate':
          if (value != null) {
            result.termStartDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
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
    final payload = (object as ScheduledInstance);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ScheduledInstanceResponse',
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
    if (payload.createDate != null) {
      result
        ..add(const _i3.XmlElementName('CreateDate'))
        ..add(serializers.serialize(
          payload.createDate!,
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
    result
      ..add(const _i3.XmlElementName('InstanceCount'))
      ..add(serializers.serialize(
        payload.instanceCount,
        specifiedType: const FullType(int),
      ));
    if (payload.instanceType != null) {
      result
        ..add(const _i3.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.networkPlatform != null) {
      result
        ..add(const _i3.XmlElementName('NetworkPlatform'))
        ..add(serializers.serialize(
          payload.networkPlatform!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.nextSlotStartTime != null) {
      result
        ..add(const _i3.XmlElementName('NextSlotStartTime'))
        ..add(serializers.serialize(
          payload.nextSlotStartTime!,
          specifiedType: const FullType.nullable(DateTime),
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
    if (payload.previousSlotEndTime != null) {
      result
        ..add(const _i3.XmlElementName('PreviousSlotEndTime'))
        ..add(serializers.serialize(
          payload.previousSlotEndTime!,
          specifiedType: const FullType.nullable(DateTime),
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
    if (payload.scheduledInstanceId != null) {
      result
        ..add(const _i3.XmlElementName('ScheduledInstanceId'))
        ..add(serializers.serialize(
          payload.scheduledInstanceId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i3.XmlElementName('SlotDurationInHours'))
      ..add(serializers.serialize(
        payload.slotDurationInHours,
        specifiedType: const FullType(int),
      ));
    if (payload.termEndDate != null) {
      result
        ..add(const _i3.XmlElementName('TermEndDate'))
        ..add(serializers.serialize(
          payload.termEndDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.termStartDate != null) {
      result
        ..add(const _i3.XmlElementName('TermStartDate'))
        ..add(serializers.serialize(
          payload.termStartDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    result
      ..add(const _i3.XmlElementName('TotalScheduledInstanceHours'))
      ..add(serializers.serialize(
        payload.totalScheduledInstanceHours,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
