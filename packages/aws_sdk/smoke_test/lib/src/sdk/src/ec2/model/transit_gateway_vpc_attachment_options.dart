// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_vpc_attachment_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/appliance_mode_support_value.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_support_value.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_support_value.dart'
    as _i3;

part 'transit_gateway_vpc_attachment_options.g.dart';

/// Describes the VPC attachment options.
abstract class TransitGatewayVpcAttachmentOptions
    with
        _i1.AWSEquatable<TransitGatewayVpcAttachmentOptions>
    implements
        Built<TransitGatewayVpcAttachmentOptions,
            TransitGatewayVpcAttachmentOptionsBuilder> {
  /// Describes the VPC attachment options.
  factory TransitGatewayVpcAttachmentOptions({
    _i2.DnsSupportValue? dnsSupport,
    _i3.Ipv6SupportValue? ipv6Support,
    _i4.ApplianceModeSupportValue? applianceModeSupport,
  }) {
    return _$TransitGatewayVpcAttachmentOptions._(
      dnsSupport: dnsSupport,
      ipv6Support: ipv6Support,
      applianceModeSupport: applianceModeSupport,
    );
  }

  /// Describes the VPC attachment options.
  factory TransitGatewayVpcAttachmentOptions.build(
          [void Function(TransitGatewayVpcAttachmentOptionsBuilder) updates]) =
      _$TransitGatewayVpcAttachmentOptions;

  const TransitGatewayVpcAttachmentOptions._();

  static const List<_i5.SmithySerializer> serializers = [
    TransitGatewayVpcAttachmentOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayVpcAttachmentOptionsBuilder b) {}

  /// Indicates whether DNS support is enabled.
  _i2.DnsSupportValue? get dnsSupport;

  /// Indicates whether IPv6 support is disabled.
  _i3.Ipv6SupportValue? get ipv6Support;

  /// Indicates whether appliance mode support is enabled.
  _i4.ApplianceModeSupportValue? get applianceModeSupport;
  @override
  List<Object?> get props => [
        dnsSupport,
        ipv6Support,
        applianceModeSupport,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayVpcAttachmentOptions');
    helper.add(
      'dnsSupport',
      dnsSupport,
    );
    helper.add(
      'ipv6Support',
      ipv6Support,
    );
    helper.add(
      'applianceModeSupport',
      applianceModeSupport,
    );
    return helper.toString();
  }
}

class TransitGatewayVpcAttachmentOptionsEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<TransitGatewayVpcAttachmentOptions> {
  const TransitGatewayVpcAttachmentOptionsEc2QuerySerializer()
      : super('TransitGatewayVpcAttachmentOptions');

  @override
  Iterable<Type> get types => const [
        TransitGatewayVpcAttachmentOptions,
        _$TransitGatewayVpcAttachmentOptions,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayVpcAttachmentOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayVpcAttachmentOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'dnsSupport':
          if (value != null) {
            result.dnsSupport = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.DnsSupportValue),
            ) as _i2.DnsSupportValue);
          }
          break;
        case 'ipv6Support':
          if (value != null) {
            result.ipv6Support = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Ipv6SupportValue),
            ) as _i3.Ipv6SupportValue);
          }
          break;
        case 'applianceModeSupport':
          if (value != null) {
            result.applianceModeSupport = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ApplianceModeSupportValue),
            ) as _i4.ApplianceModeSupportValue);
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
    final payload = (object as TransitGatewayVpcAttachmentOptions);
    final result = <Object?>[
      const _i5.XmlElementName(
        'TransitGatewayVpcAttachmentOptionsResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.dnsSupport != null) {
      result
        ..add(const _i5.XmlElementName('DnsSupport'))
        ..add(serializers.serialize(
          payload.dnsSupport!,
          specifiedType: const FullType.nullable(_i2.DnsSupportValue),
        ));
    }
    if (payload.ipv6Support != null) {
      result
        ..add(const _i5.XmlElementName('Ipv6Support'))
        ..add(serializers.serialize(
          payload.ipv6Support!,
          specifiedType: const FullType.nullable(_i3.Ipv6SupportValue),
        ));
    }
    if (payload.applianceModeSupport != null) {
      result
        ..add(const _i5.XmlElementName('ApplianceModeSupport'))
        ..add(serializers.serialize(
          payload.applianceModeSupport!,
          specifiedType: const FullType.nullable(_i4.ApplianceModeSupportValue),
        ));
    }
    return result;
  }
}
