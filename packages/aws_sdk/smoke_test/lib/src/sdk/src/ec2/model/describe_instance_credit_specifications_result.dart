// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_instance_credit_specifications_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_credit_specification.dart'
    as _i2;

part 'describe_instance_credit_specifications_result.g.dart';

abstract class DescribeInstanceCreditSpecificationsResult
    with
        _i1.AWSEquatable<DescribeInstanceCreditSpecificationsResult>
    implements
        Built<DescribeInstanceCreditSpecificationsResult,
            DescribeInstanceCreditSpecificationsResultBuilder> {
  factory DescribeInstanceCreditSpecificationsResult({
    List<_i2.InstanceCreditSpecification>? instanceCreditSpecifications,
    String? nextToken,
  }) {
    return _$DescribeInstanceCreditSpecificationsResult._(
      instanceCreditSpecifications: instanceCreditSpecifications == null
          ? null
          : _i3.BuiltList(instanceCreditSpecifications),
      nextToken: nextToken,
    );
  }

  factory DescribeInstanceCreditSpecificationsResult.build(
      [void Function(DescribeInstanceCreditSpecificationsResultBuilder)
          updates]) = _$DescribeInstanceCreditSpecificationsResult;

  const DescribeInstanceCreditSpecificationsResult._();

  /// Constructs a [DescribeInstanceCreditSpecificationsResult] from a [payload] and [response].
  factory DescribeInstanceCreditSpecificationsResult.fromResponse(
    DescribeInstanceCreditSpecificationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeInstanceCreditSpecificationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeInstanceCreditSpecificationsResultBuilder b) {}

  /// Information about the credit option for CPU usage of an instance.
  _i3.BuiltList<_i2.InstanceCreditSpecification>?
      get instanceCreditSpecifications;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        instanceCreditSpecifications,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeInstanceCreditSpecificationsResult');
    helper.add(
      'instanceCreditSpecifications',
      instanceCreditSpecifications,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeInstanceCreditSpecificationsResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeInstanceCreditSpecificationsResult> {
  const DescribeInstanceCreditSpecificationsResultEc2QuerySerializer()
      : super('DescribeInstanceCreditSpecificationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceCreditSpecificationsResult,
        _$DescribeInstanceCreditSpecificationsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceCreditSpecificationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceCreditSpecificationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceCreditSpecificationSet':
          if (value != null) {
            result.instanceCreditSpecifications
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.InstanceCreditSpecification)],
              ),
            ) as _i3.BuiltList<_i2.InstanceCreditSpecification>));
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
    final payload = (object as DescribeInstanceCreditSpecificationsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeInstanceCreditSpecificationsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceCreditSpecifications != null) {
      result
        ..add(const _i4.XmlElementName('InstanceCreditSpecificationSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.instanceCreditSpecifications!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.InstanceCreditSpecification)],
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
