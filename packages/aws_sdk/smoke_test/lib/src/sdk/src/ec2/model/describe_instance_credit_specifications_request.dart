// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_instance_credit_specifications_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_instance_credit_specifications_request.g.dart';

abstract class DescribeInstanceCreditSpecificationsRequest
    with
        _i1.HttpInput<DescribeInstanceCreditSpecificationsRequest>,
        _i2.AWSEquatable<DescribeInstanceCreditSpecificationsRequest>
    implements
        Built<DescribeInstanceCreditSpecificationsRequest,
            DescribeInstanceCreditSpecificationsRequestBuilder> {
  factory DescribeInstanceCreditSpecificationsRequest({
    bool? dryRun,
    List<_i3.Filter>? filters,
    List<String>? instanceIds,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeInstanceCreditSpecificationsRequest._(
      dryRun: dryRun,
      filters: filters == null ? null : _i4.BuiltList(filters),
      instanceIds: instanceIds == null ? null : _i4.BuiltList(instanceIds),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeInstanceCreditSpecificationsRequest.build(
      [void Function(DescribeInstanceCreditSpecificationsRequestBuilder)
          updates]) = _$DescribeInstanceCreditSpecificationsRequest;

  const DescribeInstanceCreditSpecificationsRequest._();

  factory DescribeInstanceCreditSpecificationsRequest.fromRequest(
    DescribeInstanceCreditSpecificationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeInstanceCreditSpecificationsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeInstanceCreditSpecificationsRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The filters.
  ///
  /// *   `instance-id` \- The ID of the instance.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The instance IDs.
  ///
  /// Default: Describes all your instances.
  ///
  /// Constraints: Maximum 1000 explicitly specified instance IDs.
  _i4.BuiltList<String>? get instanceIds;

  /// The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. This value can be between 5 and 1000. You cannot specify this parameter and the instance IDs parameter in the same call.
  int get maxResults;

  /// The token to retrieve the next page of results.
  String? get nextToken;
  @override
  DescribeInstanceCreditSpecificationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        filters,
        instanceIds,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeInstanceCreditSpecificationsRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'instanceIds',
      instanceIds,
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

class DescribeInstanceCreditSpecificationsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeInstanceCreditSpecificationsRequest> {
  const DescribeInstanceCreditSpecificationsRequestEc2QuerySerializer()
      : super('DescribeInstanceCreditSpecificationsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceCreditSpecificationsRequest,
        _$DescribeInstanceCreditSpecificationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceCreditSpecificationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceCreditSpecificationsRequestBuilder();
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
        case 'Filter':
          if (value != null) {
            result.filters.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'Filter',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Filter)],
              ),
            ) as _i4.BuiltList<_i3.Filter>));
          }
          break;
        case 'InstanceId':
          if (value != null) {
            result.instanceIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'InstanceId',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
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
    final payload = (object as DescribeInstanceCreditSpecificationsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeInstanceCreditSpecificationsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.filters != null) {
      result
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.filters!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Filter)],
          ),
        ));
    }
    if (payload.instanceIds != null) {
      result
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'InstanceId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.instanceIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
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
