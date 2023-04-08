// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_spot_placement_scores_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_requirements_with_metadata_request.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/target_capacity_unit_type.dart'
    as _i3;

part 'get_spot_placement_scores_request.g.dart';

abstract class GetSpotPlacementScoresRequest
    with
        _i1.HttpInput<GetSpotPlacementScoresRequest>,
        _i2.AWSEquatable<GetSpotPlacementScoresRequest>
    implements
        Built<GetSpotPlacementScoresRequest,
            GetSpotPlacementScoresRequestBuilder> {
  factory GetSpotPlacementScoresRequest({
    List<String>? instanceTypes,
    int? targetCapacity,
    _i3.TargetCapacityUnitType? targetCapacityUnitType,
    bool? singleAvailabilityZone,
    List<String>? regionNames,
    _i4.InstanceRequirementsWithMetadataRequest?
        instanceRequirementsWithMetadata,
    bool? dryRun,
    int? maxResults,
    String? nextToken,
  }) {
    targetCapacity ??= 0;
    singleAvailabilityZone ??= false;
    dryRun ??= false;
    maxResults ??= 0;
    return _$GetSpotPlacementScoresRequest._(
      instanceTypes:
          instanceTypes == null ? null : _i5.BuiltList(instanceTypes),
      targetCapacity: targetCapacity,
      targetCapacityUnitType: targetCapacityUnitType,
      singleAvailabilityZone: singleAvailabilityZone,
      regionNames: regionNames == null ? null : _i5.BuiltList(regionNames),
      instanceRequirementsWithMetadata: instanceRequirementsWithMetadata,
      dryRun: dryRun,
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory GetSpotPlacementScoresRequest.build(
          [void Function(GetSpotPlacementScoresRequestBuilder) updates]) =
      _$GetSpotPlacementScoresRequest;

  const GetSpotPlacementScoresRequest._();

  factory GetSpotPlacementScoresRequest.fromRequest(
    GetSpotPlacementScoresRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetSpotPlacementScoresRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetSpotPlacementScoresRequestBuilder b) {
    b.targetCapacity = 0;
    b.singleAvailabilityZone = false;
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// The instance types. We recommend that you specify at least three instance types. If you specify one or two instance types, or specify variations of a single instance type (for example, an `m3.xlarge` with and without instance storage), the returned placement score will always be low.
  ///
  /// If you specify `InstanceTypes`, you can't specify `InstanceRequirementsWithMetadata`.
  _i5.BuiltList<String>? get instanceTypes;

  /// The target capacity.
  int get targetCapacity;

  /// The unit for the target capacity.
  ///
  /// Default: `units` (translates to number of instances)
  _i3.TargetCapacityUnitType? get targetCapacityUnitType;

  /// Specify `true` so that the response returns a list of scored Availability Zones. Otherwise, the response returns a list of scored Regions.
  ///
  /// A list of scored Availability Zones is useful if you want to launch all of your Spot capacity into a single Availability Zone.
  bool get singleAvailabilityZone;

  /// The Regions used to narrow down the list of Regions to be scored. Enter the Region code, for example, `us-east-1`.
  _i5.BuiltList<String>? get regionNames;

  /// The attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with those attributes.
  ///
  /// If you specify `InstanceRequirementsWithMetadata`, you can't specify `InstanceTypes`.
  _i4.InstanceRequirementsWithMetadataRequest?
      get instanceRequirementsWithMetadata;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The maximum number of results to return in a single call. Specify a value between 1 and  1000. The default value is 1000. To retrieve the remaining results, make another call with  the returned `NextToken` value.
  int get maxResults;

  /// The token for the next set of results.
  String? get nextToken;
  @override
  GetSpotPlacementScoresRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceTypes,
        targetCapacity,
        targetCapacityUnitType,
        singleAvailabilityZone,
        regionNames,
        instanceRequirementsWithMetadata,
        dryRun,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetSpotPlacementScoresRequest');
    helper.add(
      'instanceTypes',
      instanceTypes,
    );
    helper.add(
      'targetCapacity',
      targetCapacity,
    );
    helper.add(
      'targetCapacityUnitType',
      targetCapacityUnitType,
    );
    helper.add(
      'singleAvailabilityZone',
      singleAvailabilityZone,
    );
    helper.add(
      'regionNames',
      regionNames,
    );
    helper.add(
      'instanceRequirementsWithMetadata',
      instanceRequirementsWithMetadata,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetSpotPlacementScoresRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<GetSpotPlacementScoresRequest> {
  const GetSpotPlacementScoresRequestEc2QuerySerializer()
      : super('GetSpotPlacementScoresRequest');

  @override
  Iterable<Type> get types => const [
        GetSpotPlacementScoresRequest,
        _$GetSpotPlacementScoresRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetSpotPlacementScoresRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSpotPlacementScoresRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'InstanceType':
          if (value != null) {
            result.instanceTypes.replace((const _i1.XmlBuiltListSerializer(
                    indexer: _i1.XmlIndexer.ec2QueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(String)],
              ),
            ) as _i5.BuiltList<String>));
          }
          break;
        case 'TargetCapacity':
          result.targetCapacity = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'TargetCapacityUnitType':
          if (value != null) {
            result.targetCapacityUnitType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.TargetCapacityUnitType),
            ) as _i3.TargetCapacityUnitType);
          }
          break;
        case 'SingleAvailabilityZone':
          result.singleAvailabilityZone = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'RegionName':
          if (value != null) {
            result.regionNames.replace((const _i1.XmlBuiltListSerializer(
                    indexer: _i1.XmlIndexer.ec2QueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(String)],
              ),
            ) as _i5.BuiltList<String>));
          }
          break;
        case 'InstanceRequirementsWithMetadata':
          if (value != null) {
            result.instanceRequirementsWithMetadata
                .replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i4.InstanceRequirementsWithMetadataRequest),
            ) as _i4.InstanceRequirementsWithMetadataRequest));
          }
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
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
    final payload = (object as GetSpotPlacementScoresRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetSpotPlacementScoresRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceTypes != null) {
      result
        ..add(const _i1.XmlElementName('InstanceType'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          payload.instanceTypes!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('TargetCapacity'))
      ..add(serializers.serialize(
        payload.targetCapacity,
        specifiedType: const FullType(int),
      ));
    if (payload.targetCapacityUnitType != null) {
      result
        ..add(const _i1.XmlElementName('TargetCapacityUnitType'))
        ..add(serializers.serialize(
          payload.targetCapacityUnitType!,
          specifiedType: const FullType.nullable(_i3.TargetCapacityUnitType),
        ));
    }
    result
      ..add(const _i1.XmlElementName('SingleAvailabilityZone'))
      ..add(serializers.serialize(
        payload.singleAvailabilityZone,
        specifiedType: const FullType(bool),
      ));
    if (payload.regionNames != null) {
      result
        ..add(const _i1.XmlElementName('RegionName'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          payload.regionNames!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.instanceRequirementsWithMetadata != null) {
      result
        ..add(const _i1.XmlElementName('InstanceRequirementsWithMetadata'))
        ..add(serializers.serialize(
          payload.instanceRequirementsWithMetadata!,
          specifiedType:
              const FullType(_i4.InstanceRequirementsWithMetadataRequest),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        payload.maxResults,
        specifiedType: const FullType(int),
      ));
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
