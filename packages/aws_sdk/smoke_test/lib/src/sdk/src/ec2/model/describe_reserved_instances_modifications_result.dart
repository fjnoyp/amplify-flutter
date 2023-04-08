// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_reserved_instances_modifications_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_modification.dart'
    as _i2;

part 'describe_reserved_instances_modifications_result.g.dart';

/// Contains the output of DescribeReservedInstancesModifications.
abstract class DescribeReservedInstancesModificationsResult
    with
        _i1.AWSEquatable<DescribeReservedInstancesModificationsResult>
    implements
        Built<DescribeReservedInstancesModificationsResult,
            DescribeReservedInstancesModificationsResultBuilder> {
  /// Contains the output of DescribeReservedInstancesModifications.
  factory DescribeReservedInstancesModificationsResult({
    String? nextToken,
    List<_i2.ReservedInstancesModification>? reservedInstancesModifications,
  }) {
    return _$DescribeReservedInstancesModificationsResult._(
      nextToken: nextToken,
      reservedInstancesModifications: reservedInstancesModifications == null
          ? null
          : _i3.BuiltList(reservedInstancesModifications),
    );
  }

  /// Contains the output of DescribeReservedInstancesModifications.
  factory DescribeReservedInstancesModificationsResult.build(
      [void Function(DescribeReservedInstancesModificationsResultBuilder)
          updates]) = _$DescribeReservedInstancesModificationsResult;

  const DescribeReservedInstancesModificationsResult._();

  /// Constructs a [DescribeReservedInstancesModificationsResult] from a [payload] and [response].
  factory DescribeReservedInstancesModificationsResult.fromResponse(
    DescribeReservedInstancesModificationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeReservedInstancesModificationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeReservedInstancesModificationsResultBuilder b) {}

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// The Reserved Instance modification information.
  _i3.BuiltList<_i2.ReservedInstancesModification>?
      get reservedInstancesModifications;
  @override
  List<Object?> get props => [
        nextToken,
        reservedInstancesModifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeReservedInstancesModificationsResult');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'reservedInstancesModifications',
      reservedInstancesModifications,
    );
    return helper.toString();
  }
}

class DescribeReservedInstancesModificationsResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeReservedInstancesModificationsResult> {
  const DescribeReservedInstancesModificationsResultEc2QuerySerializer()
      : super('DescribeReservedInstancesModificationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeReservedInstancesModificationsResult,
        _$DescribeReservedInstancesModificationsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeReservedInstancesModificationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeReservedInstancesModificationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'reservedInstancesModificationsSet':
          if (value != null) {
            result.reservedInstancesModifications
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ReservedInstancesModification)],
              ),
            ) as _i3.BuiltList<_i2.ReservedInstancesModification>));
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
    final payload = (object as DescribeReservedInstancesModificationsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeReservedInstancesModificationsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.reservedInstancesModifications != null) {
      result
        ..add(const _i4.XmlElementName('ReservedInstancesModificationsSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.reservedInstancesModifications!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ReservedInstancesModification)],
          ),
        ));
    }
    return result;
  }
}
