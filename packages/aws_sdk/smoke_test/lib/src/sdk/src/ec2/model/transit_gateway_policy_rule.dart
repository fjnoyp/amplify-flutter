// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_policy_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_rule_meta_data.dart'
    as _i2;

part 'transit_gateway_policy_rule.g.dart';

/// Describes a rule associated with a transit gateway policy.
abstract class TransitGatewayPolicyRule
    with _i1.AWSEquatable<TransitGatewayPolicyRule>
    implements
        Built<TransitGatewayPolicyRule, TransitGatewayPolicyRuleBuilder> {
  /// Describes a rule associated with a transit gateway policy.
  factory TransitGatewayPolicyRule({
    String? sourceCidrBlock,
    String? sourcePortRange,
    String? destinationCidrBlock,
    String? destinationPortRange,
    String? protocol,
    _i2.TransitGatewayPolicyRuleMetaData? metaData,
  }) {
    return _$TransitGatewayPolicyRule._(
      sourceCidrBlock: sourceCidrBlock,
      sourcePortRange: sourcePortRange,
      destinationCidrBlock: destinationCidrBlock,
      destinationPortRange: destinationPortRange,
      protocol: protocol,
      metaData: metaData,
    );
  }

  /// Describes a rule associated with a transit gateway policy.
  factory TransitGatewayPolicyRule.build(
          [void Function(TransitGatewayPolicyRuleBuilder) updates]) =
      _$TransitGatewayPolicyRule;

  const TransitGatewayPolicyRule._();

  static const List<_i3.SmithySerializer> serializers = [
    TransitGatewayPolicyRuleEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayPolicyRuleBuilder b) {}

  /// The source CIDR block for the transit gateway policy rule.
  String? get sourceCidrBlock;

  /// The port range for the transit gateway policy rule. Currently this is set to * (all).
  String? get sourcePortRange;

  /// The destination CIDR block for the transit gateway policy rule.
  String? get destinationCidrBlock;

  /// The port range for the transit gateway policy rule. Currently this is set to * (all).
  String? get destinationPortRange;

  /// The protocol used by the transit gateway policy rule.
  String? get protocol;

  /// The meta data tags used for the transit gateway policy rule.
  _i2.TransitGatewayPolicyRuleMetaData? get metaData;
  @override
  List<Object?> get props => [
        sourceCidrBlock,
        sourcePortRange,
        destinationCidrBlock,
        destinationPortRange,
        protocol,
        metaData,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayPolicyRule');
    helper.add(
      'sourceCidrBlock',
      sourceCidrBlock,
    );
    helper.add(
      'sourcePortRange',
      sourcePortRange,
    );
    helper.add(
      'destinationCidrBlock',
      destinationCidrBlock,
    );
    helper.add(
      'destinationPortRange',
      destinationPortRange,
    );
    helper.add(
      'protocol',
      protocol,
    );
    helper.add(
      'metaData',
      metaData,
    );
    return helper.toString();
  }
}

class TransitGatewayPolicyRuleEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TransitGatewayPolicyRule> {
  const TransitGatewayPolicyRuleEc2QuerySerializer()
      : super('TransitGatewayPolicyRule');

  @override
  Iterable<Type> get types => const [
        TransitGatewayPolicyRule,
        _$TransitGatewayPolicyRule,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayPolicyRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayPolicyRuleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'sourceCidrBlock':
          if (value != null) {
            result.sourceCidrBlock = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'sourcePortRange':
          if (value != null) {
            result.sourcePortRange = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'destinationCidrBlock':
          if (value != null) {
            result.destinationCidrBlock = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'destinationPortRange':
          if (value != null) {
            result.destinationPortRange = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'protocol':
          if (value != null) {
            result.protocol = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'metaData':
          if (value != null) {
            result.metaData.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.TransitGatewayPolicyRuleMetaData),
            ) as _i2.TransitGatewayPolicyRuleMetaData));
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
    final payload = (object as TransitGatewayPolicyRule);
    final result = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayPolicyRuleResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.sourceCidrBlock != null) {
      result
        ..add(const _i3.XmlElementName('SourceCidrBlock'))
        ..add(serializers.serialize(
          payload.sourceCidrBlock!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.sourcePortRange != null) {
      result
        ..add(const _i3.XmlElementName('SourcePortRange'))
        ..add(serializers.serialize(
          payload.sourcePortRange!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.destinationCidrBlock != null) {
      result
        ..add(const _i3.XmlElementName('DestinationCidrBlock'))
        ..add(serializers.serialize(
          payload.destinationCidrBlock!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.destinationPortRange != null) {
      result
        ..add(const _i3.XmlElementName('DestinationPortRange'))
        ..add(serializers.serialize(
          payload.destinationPortRange!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.protocol != null) {
      result
        ..add(const _i3.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          payload.protocol!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.metaData != null) {
      result
        ..add(const _i3.XmlElementName('MetaData'))
        ..add(serializers.serialize(
          payload.metaData!,
          specifiedType: const FullType(_i2.TransitGatewayPolicyRuleMetaData),
        ));
    }
    return result;
  }
}
