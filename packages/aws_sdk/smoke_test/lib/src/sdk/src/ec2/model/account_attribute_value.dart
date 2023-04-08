// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.account_attribute_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'account_attribute_value.g.dart';

/// Describes a value of an account attribute.
abstract class AccountAttributeValue
    with _i1.AWSEquatable<AccountAttributeValue>
    implements Built<AccountAttributeValue, AccountAttributeValueBuilder> {
  /// Describes a value of an account attribute.
  factory AccountAttributeValue({String? attributeValue}) {
    return _$AccountAttributeValue._(attributeValue: attributeValue);
  }

  /// Describes a value of an account attribute.
  factory AccountAttributeValue.build(
          [void Function(AccountAttributeValueBuilder) updates]) =
      _$AccountAttributeValue;

  const AccountAttributeValue._();

  static const List<_i2.SmithySerializer> serializers = [
    AccountAttributeValueEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AccountAttributeValueBuilder b) {}

  /// The value of the attribute.
  String? get attributeValue;
  @override
  List<Object?> get props => [attributeValue];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AccountAttributeValue');
    helper.add(
      'attributeValue',
      attributeValue,
    );
    return helper.toString();
  }
}

class AccountAttributeValueEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AccountAttributeValue> {
  const AccountAttributeValueEc2QuerySerializer()
      : super('AccountAttributeValue');

  @override
  Iterable<Type> get types => const [
        AccountAttributeValue,
        _$AccountAttributeValue,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AccountAttributeValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountAttributeValueBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'attributeValue':
          if (value != null) {
            result.attributeValue = (serializers.deserialize(
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
    final payload = (object as AccountAttributeValue);
    final result = <Object?>[
      const _i2.XmlElementName(
        'AccountAttributeValueResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.attributeValue != null) {
      result
        ..add(const _i2.XmlElementName('AttributeValue'))
        ..add(serializers.serialize(
          payload.attributeValue!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
