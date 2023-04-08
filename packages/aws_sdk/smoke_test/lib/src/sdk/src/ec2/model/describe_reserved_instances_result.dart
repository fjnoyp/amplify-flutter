// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_reserved_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances.dart'
    as _i2;

part 'describe_reserved_instances_result.g.dart';

/// Contains the output for DescribeReservedInstances.
abstract class DescribeReservedInstancesResult
    with
        _i1.AWSEquatable<DescribeReservedInstancesResult>
    implements
        Built<DescribeReservedInstancesResult,
            DescribeReservedInstancesResultBuilder> {
  /// Contains the output for DescribeReservedInstances.
  factory DescribeReservedInstancesResult(
      {List<_i2.ReservedInstances>? reservedInstances}) {
    return _$DescribeReservedInstancesResult._(
        reservedInstances: reservedInstances == null
            ? null
            : _i3.BuiltList(reservedInstances));
  }

  /// Contains the output for DescribeReservedInstances.
  factory DescribeReservedInstancesResult.build(
          [void Function(DescribeReservedInstancesResultBuilder) updates]) =
      _$DescribeReservedInstancesResult;

  const DescribeReservedInstancesResult._();

  /// Constructs a [DescribeReservedInstancesResult] from a [payload] and [response].
  factory DescribeReservedInstancesResult.fromResponse(
    DescribeReservedInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeReservedInstancesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeReservedInstancesResultBuilder b) {}

  /// A list of Reserved Instances.
  _i3.BuiltList<_i2.ReservedInstances>? get reservedInstances;
  @override
  List<Object?> get props => [reservedInstances];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeReservedInstancesResult');
    helper.add(
      'reservedInstances',
      reservedInstances,
    );
    return helper.toString();
  }
}

class DescribeReservedInstancesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeReservedInstancesResult> {
  const DescribeReservedInstancesResultEc2QuerySerializer()
      : super('DescribeReservedInstancesResult');

  @override
  Iterable<Type> get types => const [
        DescribeReservedInstancesResult,
        _$DescribeReservedInstancesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeReservedInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeReservedInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'reservedInstancesSet':
          if (value != null) {
            result.reservedInstances.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ReservedInstances)],
              ),
            ) as _i3.BuiltList<_i2.ReservedInstances>));
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
    final payload = (object as DescribeReservedInstancesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeReservedInstancesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.reservedInstances != null) {
      result
        ..add(const _i4.XmlElementName('ReservedInstancesSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.reservedInstances!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ReservedInstances)],
          ),
        ));
    }
    return result;
  }
}
