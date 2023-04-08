// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_address_attribute_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/address_attribute.dart' as _i2;

part 'modify_address_attribute_result.g.dart';

abstract class ModifyAddressAttributeResult
    with
        _i1.AWSEquatable<ModifyAddressAttributeResult>
    implements
        Built<ModifyAddressAttributeResult,
            ModifyAddressAttributeResultBuilder> {
  factory ModifyAddressAttributeResult({_i2.AddressAttribute? address}) {
    return _$ModifyAddressAttributeResult._(address: address);
  }

  factory ModifyAddressAttributeResult.build(
          [void Function(ModifyAddressAttributeResultBuilder) updates]) =
      _$ModifyAddressAttributeResult;

  const ModifyAddressAttributeResult._();

  /// Constructs a [ModifyAddressAttributeResult] from a [payload] and [response].
  factory ModifyAddressAttributeResult.fromResponse(
    ModifyAddressAttributeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ModifyAddressAttributeResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyAddressAttributeResultBuilder b) {}

  /// Information about the Elastic IP address.
  _i2.AddressAttribute? get address;
  @override
  List<Object?> get props => [address];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyAddressAttributeResult');
    helper.add(
      'address',
      address,
    );
    return helper.toString();
  }
}

class ModifyAddressAttributeResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ModifyAddressAttributeResult> {
  const ModifyAddressAttributeResultEc2QuerySerializer()
      : super('ModifyAddressAttributeResult');

  @override
  Iterable<Type> get types => const [
        ModifyAddressAttributeResult,
        _$ModifyAddressAttributeResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyAddressAttributeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyAddressAttributeResultBuilder();
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
    final payload = (object as ModifyAddressAttributeResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ModifyAddressAttributeResultResponse',
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
