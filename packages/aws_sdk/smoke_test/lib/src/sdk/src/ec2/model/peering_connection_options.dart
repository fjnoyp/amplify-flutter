// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.peering_connection_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'peering_connection_options.g.dart';

/// We are retiring EC2-Classic. We recommend that you migrate from EC2-Classic to a VPC. For more information, see [Migrate from EC2-Classic to a VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in the _Amazon Elastic Compute Cloud User Guide_.
///
/// Describes the VPC peering connection options.
abstract class PeeringConnectionOptions
    with _i1.AWSEquatable<PeeringConnectionOptions>
    implements
        Built<PeeringConnectionOptions, PeeringConnectionOptionsBuilder> {
  /// We are retiring EC2-Classic. We recommend that you migrate from EC2-Classic to a VPC. For more information, see [Migrate from EC2-Classic to a VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// Describes the VPC peering connection options.
  factory PeeringConnectionOptions({
    bool? allowDnsResolutionFromRemoteVpc,
    bool? allowEgressFromLocalClassicLinkToRemoteVpc,
    bool? allowEgressFromLocalVpcToRemoteClassicLink,
  }) {
    allowDnsResolutionFromRemoteVpc ??= false;
    allowEgressFromLocalClassicLinkToRemoteVpc ??= false;
    allowEgressFromLocalVpcToRemoteClassicLink ??= false;
    return _$PeeringConnectionOptions._(
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
  factory PeeringConnectionOptions.build(
          [void Function(PeeringConnectionOptionsBuilder) updates]) =
      _$PeeringConnectionOptions;

  const PeeringConnectionOptions._();

  static const List<_i2.SmithySerializer> serializers = [
    PeeringConnectionOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PeeringConnectionOptionsBuilder b) {
    b.allowDnsResolutionFromRemoteVpc = false;
    b.allowEgressFromLocalClassicLinkToRemoteVpc = false;
    b.allowEgressFromLocalVpcToRemoteClassicLink = false;
  }

  /// If true, the public DNS hostnames of instances in the specified VPC resolve to private IP addresses when queried from instances in the peer VPC.
  bool get allowDnsResolutionFromRemoteVpc;

  /// If true, enables outbound communication from an EC2-Classic instance that's linked to a local VPC using ClassicLink to instances in a peer VPC.
  bool get allowEgressFromLocalClassicLinkToRemoteVpc;

  /// If true, enables outbound communication from instances in a local VPC to an EC2-Classic instance that's linked to a peer VPC using ClassicLink.
  bool get allowEgressFromLocalVpcToRemoteClassicLink;
  @override
  List<Object?> get props => [
        allowDnsResolutionFromRemoteVpc,
        allowEgressFromLocalClassicLinkToRemoteVpc,
        allowEgressFromLocalVpcToRemoteClassicLink,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PeeringConnectionOptions');
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

class PeeringConnectionOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PeeringConnectionOptions> {
  const PeeringConnectionOptionsEc2QuerySerializer()
      : super('PeeringConnectionOptions');

  @override
  Iterable<Type> get types => const [
        PeeringConnectionOptions,
        _$PeeringConnectionOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PeeringConnectionOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PeeringConnectionOptionsBuilder();
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
    final payload = (object as PeeringConnectionOptions);
    final result = <Object?>[
      const _i2.XmlElementName(
        'PeeringConnectionOptionsResponse',
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
