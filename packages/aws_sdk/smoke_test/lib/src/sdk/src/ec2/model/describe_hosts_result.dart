// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_hosts_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/host.dart' as _i2;

part 'describe_hosts_result.g.dart';

abstract class DescribeHostsResult
    with _i1.AWSEquatable<DescribeHostsResult>
    implements Built<DescribeHostsResult, DescribeHostsResultBuilder> {
  factory DescribeHostsResult({
    List<_i2.Host>? hosts,
    String? nextToken,
  }) {
    return _$DescribeHostsResult._(
      hosts: hosts == null ? null : _i3.BuiltList(hosts),
      nextToken: nextToken,
    );
  }

  factory DescribeHostsResult.build(
          [void Function(DescribeHostsResultBuilder) updates]) =
      _$DescribeHostsResult;

  const DescribeHostsResult._();

  /// Constructs a [DescribeHostsResult] from a [payload] and [response].
  factory DescribeHostsResult.fromResponse(
    DescribeHostsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeHostsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeHostsResultBuilder b) {}

  /// Information about the Dedicated Hosts.
  _i3.BuiltList<_i2.Host>? get hosts;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        hosts,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeHostsResult');
    helper.add(
      'hosts',
      hosts,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeHostsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeHostsResult> {
  const DescribeHostsResultEc2QuerySerializer() : super('DescribeHostsResult');

  @override
  Iterable<Type> get types => const [
        DescribeHostsResult,
        _$DescribeHostsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeHostsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeHostsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'hostSet':
          if (value != null) {
            result.hosts.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Host)],
              ),
            ) as _i3.BuiltList<_i2.Host>));
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
    final payload = (object as DescribeHostsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeHostsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.hosts != null) {
      result
        ..add(const _i4.XmlElementName('HostSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.hosts!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Host)],
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
