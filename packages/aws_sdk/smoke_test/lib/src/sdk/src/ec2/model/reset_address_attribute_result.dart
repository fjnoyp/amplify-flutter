// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.reset_address_attribute_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/address_attribute.dart' as _i2;

part 'reset_address_attribute_result.g.dart';

abstract class ResetAddressAttributeResult
    with _i1.AWSEquatable<ResetAddressAttributeResult>
    implements
        Built<ResetAddressAttributeResult, ResetAddressAttributeResultBuilder> {
  factory ResetAddressAttributeResult({_i2.AddressAttribute? address}) {
    return _$ResetAddressAttributeResult._(address: address);
  }

  factory ResetAddressAttributeResult.build(
          [void Function(ResetAddressAttributeResultBuilder) updates]) =
      _$ResetAddressAttributeResult;

  const ResetAddressAttributeResult._();

  /// Constructs a [ResetAddressAttributeResult] from a [payload] and [response].
  factory ResetAddressAttributeResult.fromResponse(
    ResetAddressAttributeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ResetAddressAttributeResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResetAddressAttributeResultBuilder b) {}

  /// Information about the IP address.
  _i2.AddressAttribute? get address;
  @override
  List<Object?> get props => [address];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResetAddressAttributeResult');
    helper.add(
      'address',
      address,
    );
    return helper.toString();
  }
}

class ResetAddressAttributeResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ResetAddressAttributeResult> {
  const ResetAddressAttributeResultEc2QuerySerializer()
      : super('ResetAddressAttributeResult');

  @override
  Iterable<Type> get types => const [
        ResetAddressAttributeResult,
        _$ResetAddressAttributeResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ResetAddressAttributeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResetAddressAttributeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'address':
          if (value != null) {
            result.address.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AddressAttribute),
            ) as _i2.AddressAttribute));
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
    final payload = (object as ResetAddressAttributeResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ResetAddressAttributeResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.address != null) {
      result
        ..add(const _i3.XmlElementName('Address'))
        ..add(serializers.serialize(
          payload.address!,
          specifiedType: const FullType(_i2.AddressAttribute),
        ));
    }
    return result;
  }
}
