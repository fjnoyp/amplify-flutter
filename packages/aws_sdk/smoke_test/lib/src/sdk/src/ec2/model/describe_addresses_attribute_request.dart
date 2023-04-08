// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_addresses_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/address_attribute_name.dart'
    as _i3;

part 'describe_addresses_attribute_request.g.dart';

abstract class DescribeAddressesAttributeRequest
    with
        _i1.HttpInput<DescribeAddressesAttributeRequest>,
        _i2.AWSEquatable<DescribeAddressesAttributeRequest>
    implements
        Built<DescribeAddressesAttributeRequest,
            DescribeAddressesAttributeRequestBuilder> {
  factory DescribeAddressesAttributeRequest({
    List<String>? allocationIds,
    _i3.AddressAttributeName? attribute,
    String? nextToken,
    int? maxResults,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeAddressesAttributeRequest._(
      allocationIds:
          allocationIds == null ? null : _i4.BuiltList(allocationIds),
      attribute: attribute,
      nextToken: nextToken,
      maxResults: maxResults,
      dryRun: dryRun,
    );
  }

  factory DescribeAddressesAttributeRequest.build(
          [void Function(DescribeAddressesAttributeRequestBuilder) updates]) =
      _$DescribeAddressesAttributeRequest;

  const DescribeAddressesAttributeRequest._();

  factory DescribeAddressesAttributeRequest.fromRequest(
    DescribeAddressesAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeAddressesAttributeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeAddressesAttributeRequestBuilder b) {
    b.maxResults = 0;
    b.dryRun = false;
  }

  /// \[EC2-VPC\] The allocation IDs.
  _i4.BuiltList<String>? get allocationIds;

  /// The attribute of the IP address.
  _i3.AddressAttributeName? get attribute;

  /// The token for the next page of results.
  String? get nextToken;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeAddressesAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        allocationIds,
        attribute,
        nextToken,
        maxResults,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeAddressesAttributeRequest');
    helper.add(
      'allocationIds',
      allocationIds,
    );
    helper.add(
      'attribute',
      attribute,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DescribeAddressesAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeAddressesAttributeRequest> {
  const DescribeAddressesAttributeRequestEc2QuerySerializer()
      : super('DescribeAddressesAttributeRequest');

  @override
  Iterable<Type> get types => const [
        DescribeAddressesAttributeRequest,
        _$DescribeAddressesAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeAddressesAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAddressesAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AllocationId':
          if (value != null) {
            result.allocationIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
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
        case 'Attribute':
          if (value != null) {
            result.attribute = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AddressAttributeName),
            ) as _i3.AddressAttributeName);
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as DescribeAddressesAttributeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeAddressesAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.allocationIds != null) {
      result
        ..add(const _i1.XmlElementName('AllocationId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.allocationIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.attribute != null) {
      result
        ..add(const _i1.XmlElementName('Attribute'))
        ..add(serializers.serialize(
          payload.attribute!,
          specifiedType: const FullType.nullable(_i3.AddressAttributeName),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        payload.maxResults,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
