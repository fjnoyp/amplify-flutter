// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.public_ipv4_pool_range; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'public_ipv4_pool_range.g.dart';

/// Describes an address range of an IPv4 address pool.
abstract class PublicIpv4PoolRange
    with _i1.AWSEquatable<PublicIpv4PoolRange>
    implements Built<PublicIpv4PoolRange, PublicIpv4PoolRangeBuilder> {
  /// Describes an address range of an IPv4 address pool.
  factory PublicIpv4PoolRange({
    String? firstAddress,
    String? lastAddress,
    int? addressCount,
    int? availableAddressCount,
  }) {
    addressCount ??= 0;
    availableAddressCount ??= 0;
    return _$PublicIpv4PoolRange._(
      firstAddress: firstAddress,
      lastAddress: lastAddress,
      addressCount: addressCount,
      availableAddressCount: availableAddressCount,
    );
  }

  /// Describes an address range of an IPv4 address pool.
  factory PublicIpv4PoolRange.build(
          [void Function(PublicIpv4PoolRangeBuilder) updates]) =
      _$PublicIpv4PoolRange;

  const PublicIpv4PoolRange._();

  static const List<_i2.SmithySerializer> serializers = [
    PublicIpv4PoolRangeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PublicIpv4PoolRangeBuilder b) {
    b.addressCount = 0;
    b.availableAddressCount = 0;
  }

  /// The first IP address in the range.
  String? get firstAddress;

  /// The last IP address in the range.
  String? get lastAddress;

  /// The number of addresses in the range.
  int get addressCount;

  /// The number of available addresses in the range.
  int get availableAddressCount;
  @override
  List<Object?> get props => [
        firstAddress,
        lastAddress,
        addressCount,
        availableAddressCount,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PublicIpv4PoolRange');
    helper.add(
      'firstAddress',
      firstAddress,
    );
    helper.add(
      'lastAddress',
      lastAddress,
    );
    helper.add(
      'addressCount',
      addressCount,
    );
    helper.add(
      'availableAddressCount',
      availableAddressCount,
    );
    return helper.toString();
  }
}

class PublicIpv4PoolRangeEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PublicIpv4PoolRange> {
  const PublicIpv4PoolRangeEc2QuerySerializer() : super('PublicIpv4PoolRange');

  @override
  Iterable<Type> get types => const [
        PublicIpv4PoolRange,
        _$PublicIpv4PoolRange,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PublicIpv4PoolRange deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PublicIpv4PoolRangeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'firstAddress':
          if (value != null) {
            result.firstAddress = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'lastAddress':
          if (value != null) {
            result.lastAddress = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'addressCount':
          result.addressCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'availableAddressCount':
          result.availableAddressCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as PublicIpv4PoolRange);
    final result = <Object?>[
      const _i2.XmlElementName(
        'PublicIpv4PoolRangeResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.firstAddress != null) {
      result
        ..add(const _i2.XmlElementName('FirstAddress'))
        ..add(serializers.serialize(
          payload.firstAddress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastAddress != null) {
      result
        ..add(const _i2.XmlElementName('LastAddress'))
        ..add(serializers.serialize(
          payload.lastAddress!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i2.XmlElementName('AddressCount'))
      ..add(serializers.serialize(
        payload.addressCount,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i2.XmlElementName('AvailableAddressCount'))
      ..add(serializers.serialize(
        payload.availableAddressCount,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
