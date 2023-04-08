// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_fleet_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/active_instance.dart' as _i2;

part 'describe_fleet_instances_result.g.dart';

abstract class DescribeFleetInstancesResult
    with
        _i1.AWSEquatable<DescribeFleetInstancesResult>
    implements
        Built<DescribeFleetInstancesResult,
            DescribeFleetInstancesResultBuilder> {
  factory DescribeFleetInstancesResult({
    List<_i2.ActiveInstance>? activeInstances,
    String? nextToken,
    String? fleetId,
  }) {
    return _$DescribeFleetInstancesResult._(
      activeInstances:
          activeInstances == null ? null : _i3.BuiltList(activeInstances),
      nextToken: nextToken,
      fleetId: fleetId,
    );
  }

  factory DescribeFleetInstancesResult.build(
          [void Function(DescribeFleetInstancesResultBuilder) updates]) =
      _$DescribeFleetInstancesResult;

  const DescribeFleetInstancesResult._();

  /// Constructs a [DescribeFleetInstancesResult] from a [payload] and [response].
  factory DescribeFleetInstancesResult.fromResponse(
    DescribeFleetInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeFleetInstancesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeFleetInstancesResultBuilder b) {}

  /// The running instances. This list is refreshed periodically and might be out of date.
  _i3.BuiltList<_i2.ActiveInstance>? get activeInstances;

  /// The token for the next set of results.
  String? get nextToken;

  /// The ID of the EC2 Fleet.
  String? get fleetId;
  @override
  List<Object?> get props => [
        activeInstances,
        nextToken,
        fleetId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeFleetInstancesResult');
    helper.add(
      'activeInstances',
      activeInstances,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'fleetId',
      fleetId,
    );
    return helper.toString();
  }
}

class DescribeFleetInstancesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeFleetInstancesResult> {
  const DescribeFleetInstancesResultEc2QuerySerializer()
      : super('DescribeFleetInstancesResult');

  @override
  Iterable<Type> get types => const [
        DescribeFleetInstancesResult,
        _$DescribeFleetInstancesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFleetInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFleetInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'activeInstanceSet':
          if (value != null) {
            result.activeInstances.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ActiveInstance)],
              ),
            ) as _i3.BuiltList<_i2.ActiveInstance>));
          }
          break;
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'fleetId':
          if (value != null) {
            result.fleetId = (serializers.deserialize(
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
    final payload = (object as DescribeFleetInstancesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeFleetInstancesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.activeInstances != null) {
      result
        ..add(const _i4.XmlElementName('ActiveInstanceSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.activeInstances!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ActiveInstance)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.fleetId != null) {
      result
        ..add(const _i4.XmlElementName('FleetId'))
        ..add(serializers.serialize(
          payload.fleetId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
