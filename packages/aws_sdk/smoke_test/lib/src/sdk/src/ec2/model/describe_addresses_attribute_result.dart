// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_addresses_attribute_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/address_attribute.dart' as _i2;

part 'describe_addresses_attribute_result.g.dart';

abstract class DescribeAddressesAttributeResult
    with
        _i1.AWSEquatable<DescribeAddressesAttributeResult>
    implements
        Built<DescribeAddressesAttributeResult,
            DescribeAddressesAttributeResultBuilder> {
  factory DescribeAddressesAttributeResult({
    List<_i2.AddressAttribute>? addresses,
    String? nextToken,
  }) {
    return _$DescribeAddressesAttributeResult._(
      addresses: addresses == null ? null : _i3.BuiltList(addresses),
      nextToken: nextToken,
    );
  }

  factory DescribeAddressesAttributeResult.build(
          [void Function(DescribeAddressesAttributeResultBuilder) updates]) =
      _$DescribeAddressesAttributeResult;

  const DescribeAddressesAttributeResult._();

  /// Constructs a [DescribeAddressesAttributeResult] from a [payload] and [response].
  factory DescribeAddressesAttributeResult.fromResponse(
    DescribeAddressesAttributeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeAddressesAttributeResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeAddressesAttributeResultBuilder b) {}

  /// Information about the IP addresses.
  _i3.BuiltList<_i2.AddressAttribute>? get addresses;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        addresses,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeAddressesAttributeResult');
    helper.add(
      'addresses',
      addresses,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeAddressesAttributeResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeAddressesAttributeResult> {
  const DescribeAddressesAttributeResultEc2QuerySerializer()
      : super('DescribeAddressesAttributeResult');

  @override
  Iterable<Type> get types => const [
        DescribeAddressesAttributeResult,
        _$DescribeAddressesAttributeResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeAddressesAttributeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAddressesAttributeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'addressSet':
          if (value != null) {
            result.addresses.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.AddressAttribute)],
              ),
            ) as _i3.BuiltList<_i2.AddressAttribute>));
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
    final payload = (object as DescribeAddressesAttributeResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeAddressesAttributeResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.addresses != null) {
      result
        ..add(const _i4.XmlElementName('AddressSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.addresses!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.AddressAttribute)],
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
