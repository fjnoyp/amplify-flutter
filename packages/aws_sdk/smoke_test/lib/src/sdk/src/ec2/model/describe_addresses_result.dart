// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_addresses_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/address.dart' as _i2;

part 'describe_addresses_result.g.dart';

abstract class DescribeAddressesResult
    with _i1.AWSEquatable<DescribeAddressesResult>
    implements Built<DescribeAddressesResult, DescribeAddressesResultBuilder> {
  factory DescribeAddressesResult({List<_i2.Address>? addresses}) {
    return _$DescribeAddressesResult._(
        addresses: addresses == null ? null : _i3.BuiltList(addresses));
  }

  factory DescribeAddressesResult.build(
          [void Function(DescribeAddressesResultBuilder) updates]) =
      _$DescribeAddressesResult;

  const DescribeAddressesResult._();

  /// Constructs a [DescribeAddressesResult] from a [payload] and [response].
  factory DescribeAddressesResult.fromResponse(
    DescribeAddressesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeAddressesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeAddressesResultBuilder b) {}

  /// Information about the Elastic IP addresses.
  _i3.BuiltList<_i2.Address>? get addresses;
  @override
  List<Object?> get props => [addresses];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeAddressesResult');
    helper.add(
      'addresses',
      addresses,
    );
    return helper.toString();
  }
}

class DescribeAddressesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeAddressesResult> {
  const DescribeAddressesResultEc2QuerySerializer()
      : super('DescribeAddressesResult');

  @override
  Iterable<Type> get types => const [
        DescribeAddressesResult,
        _$DescribeAddressesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeAddressesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAddressesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'addressesSet':
          if (value != null) {
            result.addresses.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Address)],
              ),
            ) as _i3.BuiltList<_i2.Address>));
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
    final payload = (object as DescribeAddressesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeAddressesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.addresses != null) {
      result
        ..add(const _i4.XmlElementName('AddressesSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.addresses!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Address)],
          ),
        ));
    }
    return result;
  }
}
