// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_placement_group_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/placement_strategy.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/spread_level.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i4;

part 'create_placement_group_request.g.dart';

abstract class CreatePlacementGroupRequest
    with
        _i1.HttpInput<CreatePlacementGroupRequest>,
        _i2.AWSEquatable<CreatePlacementGroupRequest>
    implements
        Built<CreatePlacementGroupRequest, CreatePlacementGroupRequestBuilder> {
  factory CreatePlacementGroupRequest({
    bool? dryRun,
    String? groupName,
    _i3.PlacementStrategy? strategy,
    int? partitionCount,
    List<_i4.TagSpecification>? tagSpecifications,
    _i5.SpreadLevel? spreadLevel,
  }) {
    dryRun ??= false;
    partitionCount ??= 0;
    return _$CreatePlacementGroupRequest._(
      dryRun: dryRun,
      groupName: groupName,
      strategy: strategy,
      partitionCount: partitionCount,
      tagSpecifications:
          tagSpecifications == null ? null : _i6.BuiltList(tagSpecifications),
      spreadLevel: spreadLevel,
    );
  }

  factory CreatePlacementGroupRequest.build(
          [void Function(CreatePlacementGroupRequestBuilder) updates]) =
      _$CreatePlacementGroupRequest;

  const CreatePlacementGroupRequest._();

  factory CreatePlacementGroupRequest.fromRequest(
    CreatePlacementGroupRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreatePlacementGroupRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreatePlacementGroupRequestBuilder b) {
    b.dryRun = false;
    b.partitionCount = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// A name for the placement group. Must be unique within the scope of your account for the Region.
  ///
  /// Constraints: Up to 255 ASCII characters
  String? get groupName;

  /// The placement strategy.
  _i3.PlacementStrategy? get strategy;

  /// The number of partitions. Valid only when **Strategy** is set to `partition`.
  int get partitionCount;

  /// The tags to apply to the new placement group.
  _i6.BuiltList<_i4.TagSpecification>? get tagSpecifications;

  /// Determines how placement groups spread instances.
  ///
  /// *   Host – You can use `host` only with Outpost placement groups.
  ///
  /// *   Rack – No usage restrictions.
  _i5.SpreadLevel? get spreadLevel;
  @override
  CreatePlacementGroupRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        groupName,
        strategy,
        partitionCount,
        tagSpecifications,
        spreadLevel,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreatePlacementGroupRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'groupName',
      groupName,
    );
    helper.add(
      'strategy',
      strategy,
    );
    helper.add(
      'partitionCount',
      partitionCount,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'spreadLevel',
      spreadLevel,
    );
    return helper.toString();
  }
}

class CreatePlacementGroupRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreatePlacementGroupRequest> {
  const CreatePlacementGroupRequestEc2QuerySerializer()
      : super('CreatePlacementGroupRequest');

  @override
  Iterable<Type> get types => const [
        CreatePlacementGroupRequest,
        _$CreatePlacementGroupRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreatePlacementGroupRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePlacementGroupRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'groupName':
          if (value != null) {
            result.groupName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'strategy':
          if (value != null) {
            result.strategy = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.PlacementStrategy),
            ) as _i3.PlacementStrategy);
          }
          break;
        case 'PartitionCount':
          result.partitionCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
                _i6.BuiltList,
                [FullType(_i4.TagSpecification)],
              ),
            ) as _i6.BuiltList<_i4.TagSpecification>));
          }
          break;
        case 'SpreadLevel':
          if (value != null) {
            result.spreadLevel = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.SpreadLevel),
            ) as _i5.SpreadLevel);
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
    final payload = (object as CreatePlacementGroupRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreatePlacementGroupRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.groupName != null) {
      result
        ..add(const _i1.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          payload.groupName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.strategy != null) {
      result
        ..add(const _i1.XmlElementName('Strategy'))
        ..add(serializers.serialize(
          payload.strategy!,
          specifiedType: const FullType.nullable(_i3.PlacementStrategy),
        ));
    }
    result
      ..add(const _i1.XmlElementName('PartitionCount'))
      ..add(serializers.serialize(
        payload.partitionCount,
        specifiedType: const FullType(int),
      ));
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
            _i6.BuiltList,
            [FullType(_i4.TagSpecification)],
          ),
        ));
    }
    if (payload.spreadLevel != null) {
      result
        ..add(const _i1.XmlElementName('SpreadLevel'))
        ..add(serializers.serialize(
          payload.spreadLevel!,
          specifiedType: const FullType.nullable(_i5.SpreadLevel),
        ));
    }
    return result;
  }
}
