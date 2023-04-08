// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_instance_types_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type_info.dart'
    as _i2;

part 'describe_instance_types_result.g.dart';

abstract class DescribeInstanceTypesResult
    with _i1.AWSEquatable<DescribeInstanceTypesResult>
    implements
        Built<DescribeInstanceTypesResult, DescribeInstanceTypesResultBuilder> {
  factory DescribeInstanceTypesResult({
    List<_i2.InstanceTypeInfo>? instanceTypes,
    String? nextToken,
  }) {
    return _$DescribeInstanceTypesResult._(
      instanceTypes:
          instanceTypes == null ? null : _i3.BuiltList(instanceTypes),
      nextToken: nextToken,
    );
  }

  factory DescribeInstanceTypesResult.build(
          [void Function(DescribeInstanceTypesResultBuilder) updates]) =
      _$DescribeInstanceTypesResult;

  const DescribeInstanceTypesResult._();

  /// Constructs a [DescribeInstanceTypesResult] from a [payload] and [response].
  factory DescribeInstanceTypesResult.fromResponse(
    DescribeInstanceTypesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeInstanceTypesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeInstanceTypesResultBuilder b) {}

  /// The instance type. For more information, see [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the _Amazon EC2 User Guide_.
  _i3.BuiltList<_i2.InstanceTypeInfo>? get instanceTypes;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        instanceTypes,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeInstanceTypesResult');
    helper.add(
      'instanceTypes',
      instanceTypes,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeInstanceTypesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeInstanceTypesResult> {
  const DescribeInstanceTypesResultEc2QuerySerializer()
      : super('DescribeInstanceTypesResult');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceTypesResult,
        _$DescribeInstanceTypesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceTypesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceTypesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceTypeSet':
          if (value != null) {
            result.instanceTypes.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.InstanceTypeInfo)],
              ),
            ) as _i3.BuiltList<_i2.InstanceTypeInfo>));
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
    final payload = (object as DescribeInstanceTypesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeInstanceTypesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceTypes != null) {
      result
        ..add(const _i4.XmlElementName('InstanceTypeSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.instanceTypes!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.InstanceTypeInfo)],
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
    return result;
  }
}
