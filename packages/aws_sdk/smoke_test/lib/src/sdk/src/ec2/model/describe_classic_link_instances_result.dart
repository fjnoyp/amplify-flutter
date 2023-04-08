// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_classic_link_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/classic_link_instance.dart'
    as _i2;

part 'describe_classic_link_instances_result.g.dart';

abstract class DescribeClassicLinkInstancesResult
    with
        _i1.AWSEquatable<DescribeClassicLinkInstancesResult>
    implements
        Built<DescribeClassicLinkInstancesResult,
            DescribeClassicLinkInstancesResultBuilder> {
  factory DescribeClassicLinkInstancesResult({
    List<_i2.ClassicLinkInstance>? instances,
    String? nextToken,
  }) {
    return _$DescribeClassicLinkInstancesResult._(
      instances: instances == null ? null : _i3.BuiltList(instances),
      nextToken: nextToken,
    );
  }

  factory DescribeClassicLinkInstancesResult.build(
          [void Function(DescribeClassicLinkInstancesResultBuilder) updates]) =
      _$DescribeClassicLinkInstancesResult;

  const DescribeClassicLinkInstancesResult._();

  /// Constructs a [DescribeClassicLinkInstancesResult] from a [payload] and [response].
  factory DescribeClassicLinkInstancesResult.fromResponse(
    DescribeClassicLinkInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeClassicLinkInstancesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeClassicLinkInstancesResultBuilder b) {}

  /// Information about one or more linked EC2-Classic instances.
  _i3.BuiltList<_i2.ClassicLinkInstance>? get instances;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        instances,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeClassicLinkInstancesResult');
    helper.add(
      'instances',
      instances,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeClassicLinkInstancesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeClassicLinkInstancesResult> {
  const DescribeClassicLinkInstancesResultEc2QuerySerializer()
      : super('DescribeClassicLinkInstancesResult');

  @override
  Iterable<Type> get types => const [
        DescribeClassicLinkInstancesResult,
        _$DescribeClassicLinkInstancesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeClassicLinkInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeClassicLinkInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instancesSet':
          if (value != null) {
            result.instances.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ClassicLinkInstance)],
              ),
            ) as _i3.BuiltList<_i2.ClassicLinkInstance>));
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
    final payload = (object as DescribeClassicLinkInstancesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeClassicLinkInstancesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instances != null) {
      result
        ..add(const _i4.XmlElementName('InstancesSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.instances!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ClassicLinkInstance)],
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
