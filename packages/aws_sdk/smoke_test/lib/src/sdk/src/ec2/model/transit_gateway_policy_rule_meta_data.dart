// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_policy_rule_meta_data; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'transit_gateway_policy_rule_meta_data.g.dart';

/// Describes the meta data tags associated with a transit gateway policy rule.
abstract class TransitGatewayPolicyRuleMetaData
    with
        _i1.AWSEquatable<TransitGatewayPolicyRuleMetaData>
    implements
        Built<TransitGatewayPolicyRuleMetaData,
            TransitGatewayPolicyRuleMetaDataBuilder> {
  /// Describes the meta data tags associated with a transit gateway policy rule.
  factory TransitGatewayPolicyRuleMetaData({
    String? metaDataKey,
    String? metaDataValue,
  }) {
    return _$TransitGatewayPolicyRuleMetaData._(
      metaDataKey: metaDataKey,
      metaDataValue: metaDataValue,
    );
  }

  /// Describes the meta data tags associated with a transit gateway policy rule.
  factory TransitGatewayPolicyRuleMetaData.build(
          [void Function(TransitGatewayPolicyRuleMetaDataBuilder) updates]) =
      _$TransitGatewayPolicyRuleMetaData;

  const TransitGatewayPolicyRuleMetaData._();

  static const List<_i2.SmithySerializer> serializers = [
    TransitGatewayPolicyRuleMetaDataEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayPolicyRuleMetaDataBuilder b) {}

  /// The key name for the transit gateway policy rule meta data tag.
  String? get metaDataKey;

  /// The value of the key for the transit gateway policy rule meta data tag.
  String? get metaDataValue;
  @override
  List<Object?> get props => [
        metaDataKey,
        metaDataValue,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayPolicyRuleMetaData');
    helper.add(
      'metaDataKey',
      metaDataKey,
    );
    helper.add(
      'metaDataValue',
      metaDataValue,
    );
    return helper.toString();
  }
}

class TransitGatewayPolicyRuleMetaDataEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<TransitGatewayPolicyRuleMetaData> {
  const TransitGatewayPolicyRuleMetaDataEc2QuerySerializer()
      : super('TransitGatewayPolicyRuleMetaData');

  @override
  Iterable<Type> get types => const [
        TransitGatewayPolicyRuleMetaData,
        _$TransitGatewayPolicyRuleMetaData,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayPolicyRuleMetaData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayPolicyRuleMetaDataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'metaDataKey':
          if (value != null) {
            result.metaDataKey = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'metaDataValue':
          if (value != null) {
            result.metaDataValue = (serializers.deserialize(
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
    final payload = (object as TransitGatewayPolicyRuleMetaData);
    final result = <Object?>[
      const _i2.XmlElementName(
        'TransitGatewayPolicyRuleMetaDataResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.metaDataKey != null) {
      result
        ..add(const _i2.XmlElementName('MetaDataKey'))
        ..add(serializers.serialize(
          payload.metaDataKey!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.metaDataValue != null) {
      result
        ..add(const _i2.XmlElementName('MetaDataValue'))
        ..add(serializers.serialize(
          payload.metaDataValue!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
