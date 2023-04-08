// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.request_spot_instances_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_interruption_behavior.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/request_spot_launch_specification.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_type.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i5;

part 'request_spot_instances_request.g.dart';

/// Contains the parameters for RequestSpotInstances.
abstract class RequestSpotInstancesRequest
    with
        _i1.HttpInput<RequestSpotInstancesRequest>,
        _i2.AWSEquatable<RequestSpotInstancesRequest>
    implements
        Built<RequestSpotInstancesRequest, RequestSpotInstancesRequestBuilder> {
  /// Contains the parameters for RequestSpotInstances.
  factory RequestSpotInstancesRequest({
    String? availabilityZoneGroup,
    int? blockDurationMinutes,
    String? clientToken,
    bool? dryRun,
    int? instanceCount,
    String? launchGroup,
    _i3.RequestSpotLaunchSpecification? launchSpecification,
    String? spotPrice,
    _i4.SpotInstanceType? type,
    DateTime? validFrom,
    DateTime? validUntil,
    List<_i5.TagSpecification>? tagSpecifications,
    _i6.InstanceInterruptionBehavior? instanceInterruptionBehavior,
  }) {
    blockDurationMinutes ??= 0;
    dryRun ??= false;
    instanceCount ??= 0;
    return _$RequestSpotInstancesRequest._(
      availabilityZoneGroup: availabilityZoneGroup,
      blockDurationMinutes: blockDurationMinutes,
      clientToken: clientToken,
      dryRun: dryRun,
      instanceCount: instanceCount,
      launchGroup: launchGroup,
      launchSpecification: launchSpecification,
      spotPrice: spotPrice,
      type: type,
      validFrom: validFrom,
      validUntil: validUntil,
      tagSpecifications:
          tagSpecifications == null ? null : _i7.BuiltList(tagSpecifications),
      instanceInterruptionBehavior: instanceInterruptionBehavior,
    );
  }

  /// Contains the parameters for RequestSpotInstances.
  factory RequestSpotInstancesRequest.build(
          [void Function(RequestSpotInstancesRequestBuilder) updates]) =
      _$RequestSpotInstancesRequest;

  const RequestSpotInstancesRequest._();

  factory RequestSpotInstancesRequest.fromRequest(
    RequestSpotInstancesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    RequestSpotInstancesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RequestSpotInstancesRequestBuilder b) {
    b.blockDurationMinutes = 0;
    b.dryRun = false;
    b.instanceCount = 0;
  }

  /// The user-specified name for a logical grouping of requests.
  ///
  /// When you specify an Availability Zone group in a Spot Instance request, all Spot Instances in the request are launched in the same Availability Zone. Instance proximity is maintained with this parameter, but the choice of Availability Zone is not. The group applies only to requests for Spot Instances of the same instance type. Any additional Spot Instance requests that are specified with the same Availability Zone group name are launched in that same Availability Zone, as long as at least one instance from the group is still active.
  ///
  /// If there is no active instance running in the Availability Zone group that you specify for a new Spot Instance request (all instances are terminated, the request is expired, or the maximum price you specified falls below current Spot price), then Amazon EC2 launches the instance in any Availability Zone where the constraint can be met. Consequently, the subsequent set of Spot Instances could be placed in a different zone from the original request, even if you specified the same Availability Zone group.
  ///
  /// Default: Instances are launched in any available Availability Zone.
  String? get availabilityZoneGroup;

  /// Deprecated.
  int get blockDurationMinutes;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html) in the _Amazon EC2 User Guide for Linux Instances_.
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The maximum number of Spot Instances to launch.
  ///
  /// Default: 1
  int get instanceCount;

  /// The instance launch group. Launch groups are Spot Instances that launch together and terminate together.
  ///
  /// Default: Instances are launched and terminated individually
  String? get launchGroup;

  /// The launch specification.
  _i3.RequestSpotLaunchSpecification? get launchSpecification;

  /// The maximum price per unit hour that you are willing to pay for a Spot Instance. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
  ///
  /// If you specify a maximum price, your instances will be interrupted more frequently than if you do not specify this parameter.
  String? get spotPrice;

  /// The Spot Instance request type.
  ///
  /// Default: `one-time`
  _i4.SpotInstanceType? get type;

  /// The start date of the request. If this is a one-time request, the request becomes active at this date and time and remains active until all instances launch, the request expires, or the request is canceled. If the request is persistent, the request becomes active at this date and time and remains active until it expires or is canceled.
  ///
  /// The specified start date and time cannot be equal to the current date and time. You must specify a start date and time that occurs after the current date and time.
  DateTime? get validFrom;

  /// The end date of the request, in UTC format (_YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z).
  ///
  /// *   For a persistent request, the request remains active until the `ValidUntil` date and time is reached. Otherwise, the request remains active until you cancel it.
  ///
  /// *   For a one-time request, the request remains active until all instances launch, the request is canceled, or the `ValidUntil` date and time is reached. By default, the request is valid for 7 days from the date the request was created.
  DateTime? get validUntil;

  /// The key-value pair for tagging the Spot Instance request on creation. The value for `ResourceType` must be `spot-instances-request`, otherwise the Spot Instance request fails. To tag the Spot Instance request after it has been created, see [CreateTags](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html).
  _i7.BuiltList<_i5.TagSpecification>? get tagSpecifications;

  /// The behavior when a Spot Instance is interrupted. The default is `terminate`.
  _i6.InstanceInterruptionBehavior? get instanceInterruptionBehavior;
  @override
  RequestSpotInstancesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        availabilityZoneGroup,
        blockDurationMinutes,
        clientToken,
        dryRun,
        instanceCount,
        launchGroup,
        launchSpecification,
        spotPrice,
        type,
        validFrom,
        validUntil,
        tagSpecifications,
        instanceInterruptionBehavior,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RequestSpotInstancesRequest');
    helper.add(
      'availabilityZoneGroup',
      availabilityZoneGroup,
    );
    helper.add(
      'blockDurationMinutes',
      blockDurationMinutes,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'instanceCount',
      instanceCount,
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
      'spotPrice',
      spotPrice,
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
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'instanceInterruptionBehavior',
      instanceInterruptionBehavior,
    );
    return helper.toString();
  }
}

class RequestSpotInstancesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<RequestSpotInstancesRequest> {
  const RequestSpotInstancesRequestEc2QuerySerializer()
      : super('RequestSpotInstancesRequest');

  @override
  Iterable<Type> get types => const [
        RequestSpotInstancesRequest,
        _$RequestSpotInstancesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RequestSpotInstancesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestSpotInstancesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
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
        case 'clientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'instanceCount':
          result.instanceCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'launchGroup':
          if (value != null) {
            result.launchGroup = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LaunchSpecification':
          if (value != null) {
            result.launchSpecification.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.RequestSpotLaunchSpecification),
            ) as _i3.RequestSpotLaunchSpecification));
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
        case 'type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.SpotInstanceType),
            ) as _i4.SpotInstanceType);
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
        case 'TagSpecification':
          if (value != null) {
            result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i5.TagSpecification)],
              ),
            ) as _i7.BuiltList<_i5.TagSpecification>));
          }
          break;
        case 'InstanceInterruptionBehavior':
          if (value != null) {
            result.instanceInterruptionBehavior = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.InstanceInterruptionBehavior),
            ) as _i6.InstanceInterruptionBehavior);
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
    final payload = (object as RequestSpotInstancesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'RequestSpotInstancesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.availabilityZoneGroup != null) {
      result
        ..add(const _i1.XmlElementName('AvailabilityZoneGroup'))
        ..add(serializers.serialize(
          payload.availabilityZoneGroup!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('BlockDurationMinutes'))
      ..add(serializers.serialize(
        payload.blockDurationMinutes,
        specifiedType: const FullType(int),
      ));
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('InstanceCount'))
      ..add(serializers.serialize(
        payload.instanceCount,
        specifiedType: const FullType(int),
      ));
    if (payload.launchGroup != null) {
      result
        ..add(const _i1.XmlElementName('LaunchGroup'))
        ..add(serializers.serialize(
          payload.launchGroup!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.launchSpecification != null) {
      result
        ..add(const _i1.XmlElementName('LaunchSpecification'))
        ..add(serializers.serialize(
          payload.launchSpecification!,
          specifiedType: const FullType(_i3.RequestSpotLaunchSpecification),
        ));
    }
    if (payload.spotPrice != null) {
      result
        ..add(const _i1.XmlElementName('SpotPrice'))
        ..add(serializers.serialize(
          payload.spotPrice!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.type != null) {
      result
        ..add(const _i1.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType.nullable(_i4.SpotInstanceType),
        ));
    }
    if (payload.validFrom != null) {
      result
        ..add(const _i1.XmlElementName('ValidFrom'))
        ..add(serializers.serialize(
          payload.validFrom!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.validUntil != null) {
      result
        ..add(const _i1.XmlElementName('ValidUntil'))
        ..add(serializers.serialize(
          payload.validUntil!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i5.TagSpecification)],
          ),
        ));
    }
    if (payload.instanceInterruptionBehavior != null) {
      result
        ..add(const _i1.XmlElementName('InstanceInterruptionBehavior'))
        ..add(serializers.serialize(
          payload.instanceInterruptionBehavior!,
          specifiedType:
              const FullType.nullable(_i6.InstanceInterruptionBehavior),
        ));
    }
    return result;
  }
}
