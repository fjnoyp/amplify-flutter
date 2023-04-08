// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_instance_status_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_status.dart' as _i2;

part 'describe_instance_status_result.g.dart';

abstract class DescribeInstanceStatusResult
    with
        _i1.AWSEquatable<DescribeInstanceStatusResult>
    implements
        Built<DescribeInstanceStatusResult,
            DescribeInstanceStatusResultBuilder> {
  factory DescribeInstanceStatusResult({
    List<_i2.InstanceStatus>? instanceStatuses,
    String? nextToken,
  }) {
    return _$DescribeInstanceStatusResult._(
      instanceStatuses:
          instanceStatuses == null ? null : _i3.BuiltList(instanceStatuses),
      nextToken: nextToken,
    );
  }

  factory DescribeInstanceStatusResult.build(
          [void Function(DescribeInstanceStatusResultBuilder) updates]) =
      _$DescribeInstanceStatusResult;

  const DescribeInstanceStatusResult._();

  /// Constructs a [DescribeInstanceStatusResult] from a [payload] and [response].
  factory DescribeInstanceStatusResult.fromResponse(
    DescribeInstanceStatusResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeInstanceStatusResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeInstanceStatusResultBuilder b) {}

  /// Information about the status of the instances.
  _i3.BuiltList<_i2.InstanceStatus>? get instanceStatuses;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        instanceStatuses,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeInstanceStatusResult');
    helper.add(
      'instanceStatuses',
      instanceStatuses,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeInstanceStatusResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeInstanceStatusResult> {
  const DescribeInstanceStatusResultEc2QuerySerializer()
      : super('DescribeInstanceStatusResult');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceStatusResult,
        _$DescribeInstanceStatusResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceStatusResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceStatusResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceStatusSet':
          if (value != null) {
            result.instanceStatuses.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.InstanceStatus)],
              ),
            ) as _i3.BuiltList<_i2.InstanceStatus>));
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
    final payload = (object as DescribeInstanceStatusResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeInstanceStatusResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceStatuses != null) {
      result
        ..add(const _i4.XmlElementName('InstanceStatusSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.instanceStatuses!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.InstanceStatus)],
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
