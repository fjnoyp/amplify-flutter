// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_transit_gateway_vpc_attachment_request_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/appliance_mode_support_value.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_support_value.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_support_value.dart'
    as _i3;

part 'create_transit_gateway_vpc_attachment_request_options.g.dart';

/// Describes the options for a VPC attachment.
abstract class CreateTransitGatewayVpcAttachmentRequestOptions
    with
        _i1.AWSEquatable<CreateTransitGatewayVpcAttachmentRequestOptions>
    implements
        Built<CreateTransitGatewayVpcAttachmentRequestOptions,
            CreateTransitGatewayVpcAttachmentRequestOptionsBuilder> {
  /// Describes the options for a VPC attachment.
  factory CreateTransitGatewayVpcAttachmentRequestOptions({
    _i2.DnsSupportValue? dnsSupport,
    _i3.Ipv6SupportValue? ipv6Support,
    _i4.ApplianceModeSupportValue? applianceModeSupport,
  }) {
    return _$CreateTransitGatewayVpcAttachmentRequestOptions._(
      dnsSupport: dnsSupport,
      ipv6Support: ipv6Support,
      applianceModeSupport: applianceModeSupport,
    );
  }

  /// Describes the options for a VPC attachment.
  factory CreateTransitGatewayVpcAttachmentRequestOptions.build(
      [void Function(CreateTransitGatewayVpcAttachmentRequestOptionsBuilder)
          updates]) = _$CreateTransitGatewayVpcAttachmentRequestOptions;

  const CreateTransitGatewayVpcAttachmentRequestOptions._();

  static const List<_i5.SmithySerializer> serializers = [
    CreateTransitGatewayVpcAttachmentRequestOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTransitGatewayVpcAttachmentRequestOptionsBuilder b) {}

  /// Enable or disable DNS support. The default is `enable`.
  _i2.DnsSupportValue? get dnsSupport;

  /// Enable or disable IPv6 support. The default is `disable`.
  _i3.Ipv6SupportValue? get ipv6Support;

  /// Enable or disable support for appliance mode. If enabled, a traffic flow between a source and destination uses the same Availability Zone for the VPC attachment for the lifetime of that flow. The default is `disable`.
  _i4.ApplianceModeSupportValue? get applianceModeSupport;
  @override
  List<Object?> get props => [
        dnsSupport,
        ipv6Support,
        applianceModeSupport,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateTransitGatewayVpcAttachmentRequestOptions');
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

class CreateTransitGatewayVpcAttachmentRequestOptionsEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<
        CreateTransitGatewayVpcAttachmentRequestOptions> {
  const CreateTransitGatewayVpcAttachmentRequestOptionsEc2QuerySerializer()
      : super('CreateTransitGatewayVpcAttachmentRequestOptions');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayVpcAttachmentRequestOptions,
        _$CreateTransitGatewayVpcAttachmentRequestOptions,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayVpcAttachmentRequestOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayVpcAttachmentRequestOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DnsSupport':
          if (value != null) {
            result.dnsSupport = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.DnsSupportValue),
            ) as _i2.DnsSupportValue);
          }
          break;
        case 'Ipv6Support':
          if (value != null) {
            result.ipv6Support = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Ipv6SupportValue),
            ) as _i3.Ipv6SupportValue);
          }
          break;
        case 'ApplianceModeSupport':
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
    final payload = (object as CreateTransitGatewayVpcAttachmentRequestOptions);
    final result = <Object?>[
      const _i5.XmlElementName(
        'CreateTransitGatewayVpcAttachmentRequestOptionsResponse',
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
