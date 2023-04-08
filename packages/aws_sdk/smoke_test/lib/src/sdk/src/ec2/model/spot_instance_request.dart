// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.spot_instance_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i10;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_interruption_behavior.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_specification.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ri_product_description.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_state.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_state_fault.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_status.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_type.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i7;

part 'spot_instance_request.g.dart';

/// Describes a Spot Instance request.
abstract class SpotInstanceRequest
    with _i1.AWSEquatable<SpotInstanceRequest>
    implements Built<SpotInstanceRequest, SpotInstanceRequestBuilder> {
  /// Describes a Spot Instance request.
  factory SpotInstanceRequest({
    String? actualBlockHourlyPrice,
    String? availabilityZoneGroup,
    int? blockDurationMinutes,
    DateTime? createTime,
    _i2.SpotInstanceStateFault? fault,
    String? instanceId,
    String? launchGroup,
    _i3.LaunchSpecification? launchSpecification,
    String? launchedAvailabilityZone,
    _i4.RiProductDescription? productDescription,
    String? spotInstanceRequestId,
    String? spotPrice,
    _i5.SpotInstanceState? state,
    _i6.SpotInstanceStatus? status,
    List<_i7.Tag>? tags,
    _i8.SpotInstanceType? type,
    DateTime? validFrom,
    DateTime? validUntil,
    _i9.InstanceInterruptionBehavior? instanceInterruptionBehavior,
  }) {
    blockDurationMinutes ??= 0;
    return _$SpotInstanceRequest._(
      actualBlockHourlyPrice: actualBlockHourlyPrice,
      availabilityZoneGroup: availabilityZoneGroup,
      blockDurationMinutes: blockDurationMinutes,
      createTime: createTime,
      fault: fault,
      instanceId: instanceId,
      launchGroup: launchGroup,
      launchSpecification: launchSpecification,
      launchedAvailabilityZone: launchedAvailabilityZone,
      productDescription: productDescription,
      spotInstanceRequestId: spotInstanceRequestId,
      spotPrice: spotPrice,
      state: state,
      status: status,
      tags: tags == null ? null : _i10.BuiltList(tags),
      type: type,
      validFrom: validFrom,
      validUntil: validUntil,
      instanceInterruptionBehavior: instanceInterruptionBehavior,
    );
  }

  /// Describes a Spot Instance request.
  factory SpotInstanceRequest.build(
          [void Function(SpotInstanceRequestBuilder) updates]) =
      _$SpotInstanceRequest;

  const SpotInstanceRequest._();

  static const List<_i11.SmithySerializer> serializers = [
    SpotInstanceRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SpotInstanceRequestBuilder b) {
    b.blockDurationMinutes = 0;
  }

  /// Deprecated.
  String? get actualBlockHourlyPrice;

  /// The Availability Zone group. If you specify the same Availability Zone group for all Spot Instance requests, all Spot Instances are launched in the same Availability Zone.
  String? get availabilityZoneGroup;

  /// Deprecated.
  int get blockDurationMinutes;

  /// The date and time when the Spot Instance request was created, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z).
  DateTime? get createTime;

  /// The fault codes for the Spot Instance request, if any.
  _i2.SpotInstanceStateFault? get fault;

  /// The instance ID, if an instance has been launched to fulfill the Spot Instance request.
  String? get instanceId;

  /// The instance launch group. Launch groups are Spot Instances that launch together and terminate together.
  String? get launchGroup;

  /// Additional information for launching instances.
  _i3.LaunchSpecification? get launchSpecification;

  /// The Availability Zone in which the request is launched.
  String? get launchedAvailabilityZone;

  /// The product description associated with the Spot Instance.
  _i4.RiProductDescription? get productDescription;

  /// The ID of the Spot Instance request.
  String? get spotInstanceRequestId;

  /// The maximum price per unit hour that you are willing to pay for a Spot Instance. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
  ///
  /// If you specify a maximum price, your instances will be interrupted more frequently than if you do not specify this parameter.
  String? get spotPrice;

  /// The state of the Spot Instance request. Spot request status information helps track your Spot Instance requests. For more information, see [Spot request status](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-request-status.html) in the _Amazon EC2 User Guide for Linux Instances_.
  _i5.SpotInstanceState? get state;

  /// The status code and status message describing the Spot Instance request.
  _i6.SpotInstanceStatus? get status;

  /// Any tags assigned to the resource.
  _i10.BuiltList<_i7.Tag>? get tags;

  /// The Spot Instance request type.
  _i8.SpotInstanceType? get type;

  /// The start date of the request, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z). The request becomes active at this date and time.
  DateTime? get validFrom;

  /// The end date of the request, in UTC format (_YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z).
  ///
  /// *   For a persistent request, the request remains active until the `validUntil` date and time is reached. Otherwise, the request remains active until you cancel it.
  ///
  /// *   For a one-time request, the request remains active until all instances launch, the request is canceled, or the `validUntil` date and time is reached. By default, the request is valid for 7 days from the date the request was created.
  DateTime? get validUntil;

  /// The behavior when a Spot Instance is interrupted.
  _i9.InstanceInterruptionBehavior? get instanceInterruptionBehavior;
  @override
  List<Object?> get props => [
        actualBlockHourlyPrice,
        availabilityZoneGroup,
        blockDurationMinutes,
        createTime,
        fault,
        instanceId,
        launchGroup,
        launchSpecification,
        launchedAvailabilityZone,
        productDescription,
        spotInstanceRequestId,
        spotPrice,
        state,
        status,
        tags,
        type,
        validFrom,
        validUntil,
        instanceInterruptionBehavior,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotInstanceRequest');
    helper.add(
      'actualBlockHourlyPrice',
      actualBlockHourlyPrice,
    );
    helper.add(
      'availabilityZoneGroup',
      availabilityZoneGroup,
    );
    helper.add(
      'blockDurationMinutes',
      blockDurationMinutes,
    );
    helper.add(
      'createTime',
      createTime,
    );
    helper.add(
      'fault',
      fault,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'launchGroup',
      launchGroup,
    );
    helper.add(
      'launchSpecification',
      launchSpecification,
    );
    helper.add(
      'launchedAvailabilityZone',
      launchedAvailabilityZone,
    );
    helper.add(
      'productDescription',
      productDescription,
    );
    helper.add(
      'spotInstanceRequestId',
      spotInstanceRequestId,
    );
    helper.add(
      'spotPrice',
      spotPrice,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'type',
      type,
    );
    helper.add(
      'validFrom',
      validFrom,
    );
    helper.add(
      'validUntil',
      validUntil,
    );
    helper.add(
      'instanceInterruptionBehavior',
      instanceInterruptionBehavior,
    );
    return helper.toString();
  }
}

class SpotInstanceRequestEc2QuerySerializer
    extends _i11.StructuredSmithySerializer<SpotInstanceRequest> {
  const SpotInstanceRequestEc2QuerySerializer() : super('SpotInstanceRequest');

  @override
  Iterable<Type> get types => const [
        SpotInstanceRequest,
        _$SpotInstanceRequest,
      ];
  @override
  Iterable<_i11.ShapeId> get supportedProtocols => const [
        _i11.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotInstanceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotInstanceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'actualBlockHourlyPrice':
          if (value != null) {
            result.actualBlockHourlyPrice = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'availabilityZoneGroup':
          if (value != null) {
            result.availabilityZoneGroup = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'blockDurationMinutes':
          result.blockDurationMinutes = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'createTime':
          if (value != null) {
            result.createTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'fault':
          if (value != null) {
            result.fault.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.SpotInstanceStateFault),
            ) as _i2.SpotInstanceStateFault));
          }
          break;
        case 'instanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'launchGroup':
          if (value != null) {
            result.launchGroup = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'launchSpecification':
          if (value != null) {
            result.launchSpecification.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.LaunchSpecification),
            ) as _i3.LaunchSpecification));
          }
          break;
        case 'launchedAvailabilityZone':
          if (value != null) {
            result.launchedAvailabilityZone = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'productDescription':
          if (value != null) {
            result.productDescription = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.RiProductDescription),
            ) as _i4.RiProductDescription);
          }
          break;
        case 'spotInstanceRequestId':
          if (value != null) {
            result.spotInstanceRequestId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'spotPrice':
          if (value != null) {
            result.spotPrice = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.SpotInstanceState),
            ) as _i5.SpotInstanceState);
          }
          break;
        case 'status':
          if (value != null) {
            result.status.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.SpotInstanceStatus),
            ) as _i6.SpotInstanceStatus));
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
        case 'type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.SpotInstanceType),
            ) as _i8.SpotInstanceType);
          }
          break;
        case 'validFrom':
          if (value != null) {
            result.validFrom = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'validUntil':
          if (value != null) {
            result.validUntil = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'instanceInterruptionBehavior':
          if (value != null) {
            result.instanceInterruptionBehavior = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i9.InstanceInterruptionBehavior),
            ) as _i9.InstanceInterruptionBehavior);
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
    final payload = (object as SpotInstanceRequest);
    final result = <Object?>[
      const _i11.XmlElementName(
        'SpotInstanceRequestResponse',
        _i11.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.actualBlockHourlyPrice != null) {
      result
        ..add(const _i11.XmlElementName('ActualBlockHourlyPrice'))
        ..add(serializers.serialize(
          payload.actualBlockHourlyPrice!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.availabilityZoneGroup != null) {
      result
        ..add(const _i11.XmlElementName('AvailabilityZoneGroup'))
        ..add(serializers.serialize(
          payload.availabilityZoneGroup!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i11.XmlElementName('BlockDurationMinutes'))
      ..add(serializers.serialize(
        payload.blockDurationMinutes,
        specifiedType: const FullType(int),
      ));
    if (payload.createTime != null) {
      result
        ..add(const _i11.XmlElementName('CreateTime'))
        ..add(serializers.serialize(
          payload.createTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.fault != null) {
      result
        ..add(const _i11.XmlElementName('Fault'))
        ..add(serializers.serialize(
          payload.fault!,
          specifiedType: const FullType(_i2.SpotInstanceStateFault),
        ));
    }
    if (payload.instanceId != null) {
      result
        ..add(const _i11.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.launchGroup != null) {
      result
        ..add(const _i11.XmlElementName('LaunchGroup'))
        ..add(serializers.serialize(
          payload.launchGroup!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.launchSpecification != null) {
      result
        ..add(const _i11.XmlElementName('LaunchSpecification'))
        ..add(serializers.serialize(
          payload.launchSpecification!,
          specifiedType: const FullType(_i3.LaunchSpecification),
        ));
    }
    if (payload.launchedAvailabilityZone != null) {
      result
        ..add(const _i11.XmlElementName('LaunchedAvailabilityZone'))
        ..add(serializers.serialize(
          payload.launchedAvailabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.productDescription != null) {
      result
        ..add(const _i11.XmlElementName('ProductDescription'))
        ..add(serializers.serialize(
          payload.productDescription!,
          specifiedType: const FullType.nullable(_i4.RiProductDescription),
        ));
    }
    if (payload.spotInstanceRequestId != null) {
      result
        ..add(const _i11.XmlElementName('SpotInstanceRequestId'))
        ..add(serializers.serialize(
          payload.spotInstanceRequestId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.spotPrice != null) {
      result
        ..add(const _i11.XmlElementName('SpotPrice'))
        ..add(serializers.serialize(
          payload.spotPrice!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i11.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i5.SpotInstanceState),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i11.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType(_i6.SpotInstanceStatus),
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
    if (payload.type != null) {
      result
        ..add(const _i11.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType.nullable(_i8.SpotInstanceType),
        ));
    }
    if (payload.validFrom != null) {
      result
        ..add(const _i11.XmlElementName('ValidFrom'))
        ..add(serializers.serialize(
          payload.validFrom!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.validUntil != null) {
      result
        ..add(const _i11.XmlElementName('ValidUntil'))
        ..add(serializers.serialize(
          payload.validUntil!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.instanceInterruptionBehavior != null) {
      result
        ..add(const _i11.XmlElementName('InstanceInterruptionBehavior'))
        ..add(serializers.serialize(
          payload.instanceInterruptionBehavior!,
          specifiedType:
              const FullType.nullable(_i9.InstanceInterruptionBehavior),
        ));
    }
    return result;
  }
}
