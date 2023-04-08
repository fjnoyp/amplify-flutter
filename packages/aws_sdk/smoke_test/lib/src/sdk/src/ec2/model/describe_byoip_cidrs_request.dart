// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_byoip_cidrs_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_byoip_cidrs_request.g.dart';

abstract class DescribeByoipCidrsRequest
    with
        _i1.HttpInput<DescribeByoipCidrsRequest>,
        _i2.AWSEquatable<DescribeByoipCidrsRequest>
    implements
        Built<DescribeByoipCidrsRequest, DescribeByoipCidrsRequestBuilder> {
  factory DescribeByoipCidrsRequest({
    bool? dryRun,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeByoipCidrsRequest._(
      dryRun: dryRun,
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeByoipCidrsRequest.build(
          [void Function(DescribeByoipCidrsRequestBuilder) updates]) =
      _$DescribeByoipCidrsRequest;

  const DescribeByoipCidrsRequest._();

  factory DescribeByoipCidrsRequest.fromRequest(
    DescribeByoipCidrsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeByoipCidrsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeByoipCidrsRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;
  @override
  DescribeByoipCidrsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeByoipCidrsRequest');
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

class DescribeByoipCidrsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeByoipCidrsRequest> {
  const DescribeByoipCidrsRequestEc2QuerySerializer()
      : super('DescribeByoipCidrsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeByoipCidrsRequest,
        _$DescribeByoipCidrsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeByoipCidrsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeByoipCidrsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
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
    final payload = (object as DescribeByoipCidrsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeByoipCidrsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
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
