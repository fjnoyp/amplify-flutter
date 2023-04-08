// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_vpc_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_boolean_value.dart'
    as _i3;

part 'modify_vpc_attribute_request.g.dart';

abstract class ModifyVpcAttributeRequest
    with
        _i1.HttpInput<ModifyVpcAttributeRequest>,
        _i2.AWSEquatable<ModifyVpcAttributeRequest>
    implements
        Built<ModifyVpcAttributeRequest, ModifyVpcAttributeRequestBuilder> {
  factory ModifyVpcAttributeRequest({
    _i3.AttributeBooleanValue? enableDnsHostnames,
    _i3.AttributeBooleanValue? enableDnsSupport,
    required String vpcId,
    _i3.AttributeBooleanValue? enableNetworkAddressUsageMetrics,
  }) {
    return _$ModifyVpcAttributeRequest._(
      enableDnsHostnames: enableDnsHostnames,
      enableDnsSupport: enableDnsSupport,
      vpcId: vpcId,
      enableNetworkAddressUsageMetrics: enableNetworkAddressUsageMetrics,
    );
  }

  factory ModifyVpcAttributeRequest.build(
          [void Function(ModifyVpcAttributeRequestBuilder) updates]) =
      _$ModifyVpcAttributeRequest;

  const ModifyVpcAttributeRequest._();

  factory ModifyVpcAttributeRequest.fromRequest(
    ModifyVpcAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyVpcAttributeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpcAttributeRequestBuilder b) {}

  /// Indicates whether the instances launched in the VPC get DNS hostnames. If enabled, instances in the VPC get DNS hostnames; otherwise, they do not.
  ///
  /// You cannot modify the DNS resolution and DNS hostnames attributes in the same request. Use separate requests for each attribute. You can only enable DNS hostnames if you've enabled DNS support.
  _i3.AttributeBooleanValue? get enableDnsHostnames;

  /// Indicates whether the DNS resolution is supported for the VPC. If enabled, queries to the Amazon provided DNS server at the 169.254.169.253 IP address, or the reserved IP address at the base of the VPC network range "plus two" succeed. If disabled, the Amazon provided DNS service in the VPC that resolves public DNS hostnames to IP addresses is not enabled.
  ///
  /// You cannot modify the DNS resolution and DNS hostnames attributes in the same request. Use separate requests for each attribute.
  _i3.AttributeBooleanValue? get enableDnsSupport;

  /// The ID of the VPC.
  String get vpcId;

  /// Indicates whether Network Address Usage metrics are enabled for your VPC.
  _i3.AttributeBooleanValue? get enableNetworkAddressUsageMetrics;
  @override
  ModifyVpcAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        enableDnsHostnames,
        enableDnsSupport,
        vpcId,
        enableNetworkAddressUsageMetrics,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyVpcAttributeRequest');
    helper.add(
      'enableDnsHostnames',
      enableDnsHostnames,
    );
    helper.add(
      'enableDnsSupport',
      enableDnsSupport,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'enableNetworkAddressUsageMetrics',
      enableNetworkAddressUsageMetrics,
    );
    return helper.toString();
  }
}

class ModifyVpcAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyVpcAttributeRequest> {
  const ModifyVpcAttributeRequestEc2QuerySerializer()
      : super('ModifyVpcAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVpcAttributeRequest,
        _$ModifyVpcAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpcAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpcAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'EnableDnsHostnames':
          if (value != null) {
            result.enableDnsHostnames.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AttributeBooleanValue),
            ) as _i3.AttributeBooleanValue));
          }
          break;
        case 'EnableDnsSupport':
          if (value != null) {
            result.enableDnsSupport.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AttributeBooleanValue),
            ) as _i3.AttributeBooleanValue));
          }
          break;
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'EnableNetworkAddressUsageMetrics':
          if (value != null) {
            result.enableNetworkAddressUsageMetrics
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AttributeBooleanValue),
            ) as _i3.AttributeBooleanValue));
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
    final payload = (object as ModifyVpcAttributeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyVpcAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.enableDnsHostnames != null) {
      result
        ..add(const _i1.XmlElementName('EnableDnsHostnames'))
        ..add(serializers.serialize(
          payload.enableDnsHostnames!,
          specifiedType: const FullType(_i3.AttributeBooleanValue),
        ));
    }
    if (payload.enableDnsSupport != null) {
      result
        ..add(const _i1.XmlElementName('EnableDnsSupport'))
        ..add(serializers.serialize(
          payload.enableDnsSupport!,
          specifiedType: const FullType(_i3.AttributeBooleanValue),
        ));
    }
    result
      ..add(const _i1.XmlElementName('VpcId'))
      ..add(serializers.serialize(
        payload.vpcId,
        specifiedType: const FullType(String),
      ));
    if (payload.enableNetworkAddressUsageMetrics != null) {
      result
        ..add(const _i1.XmlElementName('EnableNetworkAddressUsageMetrics'))
        ..add(serializers.serialize(
          payload.enableNetworkAddressUsageMetrics!,
          specifiedType: const FullType(_i3.AttributeBooleanValue),
        ));
    }
    return result;
  }
}
