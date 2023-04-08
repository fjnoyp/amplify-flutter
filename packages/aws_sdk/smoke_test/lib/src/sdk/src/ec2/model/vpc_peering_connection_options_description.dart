// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.vpc_peering_connection_options_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'vpc_peering_connection_options_description.g.dart';

/// We are retiring EC2-Classic. We recommend that you migrate from EC2-Classic to a VPC. For more information, see [Migrate from EC2-Classic to a VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in the _Amazon Elastic Compute Cloud User Guide_.
///
/// Describes the VPC peering connection options.
abstract class VpcPeeringConnectionOptionsDescription
    with
        _i1.AWSEquatable<VpcPeeringConnectionOptionsDescription>
    implements
        Built<VpcPeeringConnectionOptionsDescription,
            VpcPeeringConnectionOptionsDescriptionBuilder> {
  /// We are retiring EC2-Classic. We recommend that you migrate from EC2-Classic to a VPC. For more information, see [Migrate from EC2-Classic to a VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// Describes the VPC peering connection options.
  factory VpcPeeringConnectionOptionsDescription({
    bool? allowDnsResolutionFromRemoteVpc,
    bool? allowEgressFromLocalClassicLinkToRemoteVpc,
    bool? allowEgressFromLocalVpcToRemoteClassicLink,
  }) {
    allowDnsResolutionFromRemoteVpc ??= false;
    allowEgressFromLocalClassicLinkToRemoteVpc ??= false;
    allowEgressFromLocalVpcToRemoteClassicLink ??= false;
    return _$VpcPeeringConnectionOptionsDescription._(
      allowDnsResolutionFromRemoteVpc: allowDnsResolutionFromRemoteVpc,
      allowEgressFromLocalClassicLinkToRemoteVpc:
          allowEgressFromLocalClassicLinkToRemoteVpc,
      allowEgressFromLocalVpcToRemoteClassicLink:
          allowEgressFromLocalVpcToRemoteClassicLink,
    );
  }

  /// We are retiring EC2-Classic. We recommend that you migrate from EC2-Classic to a VPC. For more information, see [Migrate from EC2-Classic to a VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// Describes the VPC peering connection options.
  factory VpcPeeringConnectionOptionsDescription.build(
      [void Function(VpcPeeringConnectionOptionsDescriptionBuilder)
          updates]) = _$VpcPeeringConnectionOptionsDescription;

  const VpcPeeringConnectionOptionsDescription._();

  static const List<_i2.SmithySerializer> serializers = [
    VpcPeeringConnectionOptionsDescriptionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpcPeeringConnectionOptionsDescriptionBuilder b) {
    b.allowDnsResolutionFromRemoteVpc = false;
    b.allowEgressFromLocalClassicLinkToRemoteVpc = false;
    b.allowEgressFromLocalVpcToRemoteClassicLink = false;
  }

  /// Indicates whether a local VPC can resolve public DNS hostnames to private IP addresses when queried from instances in a peer VPC.
  bool get allowDnsResolutionFromRemoteVpc;

  /// Indicates whether a local ClassicLink connection can communicate with the peer VPC over the VPC peering connection.
  bool get allowEgressFromLocalClassicLinkToRemoteVpc;

  /// Indicates whether a local VPC can communicate with a ClassicLink connection in the peer VPC over the VPC peering connection.
  bool get allowEgressFromLocalVpcToRemoteClassicLink;
  @override
  List<Object?> get props => [
        allowDnsResolutionFromRemoteVpc,
        allowEgressFromLocalClassicLinkToRemoteVpc,
        allowEgressFromLocalVpcToRemoteClassicLink,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('VpcPeeringConnectionOptionsDescription');
    helper.add(
      'allowDnsResolutionFromRemoteVpc',
      allowDnsResolutionFromRemoteVpc,
    );
    helper.add(
      'allowEgressFromLocalClassicLinkToRemoteVpc',
      allowEgressFromLocalClassicLinkToRemoteVpc,
    );
    helper.add(
      'allowEgressFromLocalVpcToRemoteClassicLink',
      allowEgressFromLocalVpcToRemoteClassicLink,
    );
    return helper.toString();
  }
}

class VpcPeeringConnectionOptionsDescriptionEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<VpcPeeringConnectionOptionsDescription> {
  const VpcPeeringConnectionOptionsDescriptionEc2QuerySerializer()
      : super('VpcPeeringConnectionOptionsDescription');

  @override
  Iterable<Type> get types => const [
        VpcPeeringConnectionOptionsDescription,
        _$VpcPeeringConnectionOptionsDescription,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpcPeeringConnectionOptionsDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpcPeeringConnectionOptionsDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'allowDnsResolutionFromRemoteVpc':
          result.allowDnsResolutionFromRemoteVpc = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'allowEgressFromLocalClassicLinkToRemoteVpc':
          result.allowEgressFromLocalClassicLinkToRemoteVpc =
              (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'allowEgressFromLocalVpcToRemoteClassicLink':
          result.allowEgressFromLocalVpcToRemoteClassicLink =
              (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as VpcPeeringConnectionOptionsDescription);
    final result = <Object?>[
      const _i2.XmlElementName(
        'VpcPeeringConnectionOptionsDescriptionResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('AllowDnsResolutionFromRemoteVpc'))
      ..add(serializers.serialize(
        payload.allowDnsResolutionFromRemoteVpc,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i2.XmlElementName(
          'AllowEgressFromLocalClassicLinkToRemoteVpc'))
      ..add(serializers.serialize(
        payload.allowEgressFromLocalClassicLinkToRemoteVpc,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i2.XmlElementName(
          'AllowEgressFromLocalVpcToRemoteClassicLink'))
      ..add(serializers.serialize(
        payload.allowEgressFromLocalVpcToRemoteClassicLink,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
