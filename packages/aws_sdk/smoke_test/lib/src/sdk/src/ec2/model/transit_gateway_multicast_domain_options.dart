// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_multicast_domain_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/auto_accept_shared_associations_value.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/igmpv2_support_value.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/static_sources_support_value.dart'
    as _i3;

part 'transit_gateway_multicast_domain_options.g.dart';

/// Describes the options for a transit gateway multicast domain.
abstract class TransitGatewayMulticastDomainOptions
    with
        _i1.AWSEquatable<TransitGatewayMulticastDomainOptions>
    implements
        Built<TransitGatewayMulticastDomainOptions,
            TransitGatewayMulticastDomainOptionsBuilder> {
  /// Describes the options for a transit gateway multicast domain.
  factory TransitGatewayMulticastDomainOptions({
    _i2.Igmpv2SupportValue? igmpv2Support,
    _i3.StaticSourcesSupportValue? staticSourcesSupport,
    _i4.AutoAcceptSharedAssociationsValue? autoAcceptSharedAssociations,
  }) {
    return _$TransitGatewayMulticastDomainOptions._(
      igmpv2Support: igmpv2Support,
      staticSourcesSupport: staticSourcesSupport,
      autoAcceptSharedAssociations: autoAcceptSharedAssociations,
    );
  }

  /// Describes the options for a transit gateway multicast domain.
  factory TransitGatewayMulticastDomainOptions.build(
      [void Function(TransitGatewayMulticastDomainOptionsBuilder)
          updates]) = _$TransitGatewayMulticastDomainOptions;

  const TransitGatewayMulticastDomainOptions._();

  static const List<_i5.SmithySerializer> serializers = [
    TransitGatewayMulticastDomainOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayMulticastDomainOptionsBuilder b) {}

  /// Indicates whether Internet Group Management Protocol (IGMP) version 2 is turned on for the transit gateway multicast domain.
  _i2.Igmpv2SupportValue? get igmpv2Support;

  /// Indicates whether support for statically configuring transit gateway multicast group sources is turned on.
  _i3.StaticSourcesSupportValue? get staticSourcesSupport;

  /// Indicates whether to automatically cross-account subnet associations that are associated with the transit gateway multicast domain.
  _i4.AutoAcceptSharedAssociationsValue? get autoAcceptSharedAssociations;
  @override
  List<Object?> get props => [
        igmpv2Support,
        staticSourcesSupport,
        autoAcceptSharedAssociations,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayMulticastDomainOptions');
    helper.add(
      'igmpv2Support',
      igmpv2Support,
    );
    helper.add(
      'staticSourcesSupport',
      staticSourcesSupport,
    );
    helper.add(
      'autoAcceptSharedAssociations',
      autoAcceptSharedAssociations,
    );
    return helper.toString();
  }
}

class TransitGatewayMulticastDomainOptionsEc2QuerySerializer extends _i5
    .StructuredSmithySerializer<TransitGatewayMulticastDomainOptions> {
  const TransitGatewayMulticastDomainOptionsEc2QuerySerializer()
      : super('TransitGatewayMulticastDomainOptions');

  @override
  Iterable<Type> get types => const [
        TransitGatewayMulticastDomainOptions,
        _$TransitGatewayMulticastDomainOptions,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayMulticastDomainOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayMulticastDomainOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'igmpv2Support':
          if (value != null) {
            result.igmpv2Support = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Igmpv2SupportValue),
            ) as _i2.Igmpv2SupportValue);
          }
          break;
        case 'staticSourcesSupport':
          if (value != null) {
            result.staticSourcesSupport = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.StaticSourcesSupportValue),
            ) as _i3.StaticSourcesSupportValue);
          }
          break;
        case 'autoAcceptSharedAssociations':
          if (value != null) {
            result.autoAcceptSharedAssociations = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i4.AutoAcceptSharedAssociationsValue),
            ) as _i4.AutoAcceptSharedAssociationsValue);
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
    final payload = (object as TransitGatewayMulticastDomainOptions);
    final result = <Object?>[
      const _i5.XmlElementName(
        'TransitGatewayMulticastDomainOptionsResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.igmpv2Support != null) {
      result
        ..add(const _i5.XmlElementName('Igmpv2Support'))
        ..add(serializers.serialize(
          payload.igmpv2Support!,
          specifiedType: const FullType.nullable(_i2.Igmpv2SupportValue),
        ));
    }
    if (payload.staticSourcesSupport != null) {
      result
        ..add(const _i5.XmlElementName('StaticSourcesSupport'))
        ..add(serializers.serialize(
          payload.staticSourcesSupport!,
          specifiedType: const FullType.nullable(_i3.StaticSourcesSupportValue),
        ));
    }
    if (payload.autoAcceptSharedAssociations != null) {
      result
        ..add(const _i5.XmlElementName('AutoAcceptSharedAssociations'))
        ..add(serializers.serialize(
          payload.autoAcceptSharedAssociations!,
          specifiedType:
              const FullType.nullable(_i4.AutoAcceptSharedAssociationsValue),
        ));
    }
    return result;
  }
}
