// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.enable_vpc_classic_link_dns_support_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'enable_vpc_classic_link_dns_support_request.g.dart';

abstract class EnableVpcClassicLinkDnsSupportRequest
    with
        _i1.HttpInput<EnableVpcClassicLinkDnsSupportRequest>,
        _i2.AWSEquatable<EnableVpcClassicLinkDnsSupportRequest>
    implements
        Built<EnableVpcClassicLinkDnsSupportRequest,
            EnableVpcClassicLinkDnsSupportRequestBuilder> {
  factory EnableVpcClassicLinkDnsSupportRequest({String? vpcId}) {
    return _$EnableVpcClassicLinkDnsSupportRequest._(vpcId: vpcId);
  }

  factory EnableVpcClassicLinkDnsSupportRequest.build(
      [void Function(EnableVpcClassicLinkDnsSupportRequestBuilder)
          updates]) = _$EnableVpcClassicLinkDnsSupportRequest;

  const EnableVpcClassicLinkDnsSupportRequest._();

  factory EnableVpcClassicLinkDnsSupportRequest.fromRequest(
    EnableVpcClassicLinkDnsSupportRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    EnableVpcClassicLinkDnsSupportRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnableVpcClassicLinkDnsSupportRequestBuilder b) {}

  /// The ID of the VPC.
  String? get vpcId;
  @override
  EnableVpcClassicLinkDnsSupportRequest getPayload() => this;
  @override
  List<Object?> get props => [vpcId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('EnableVpcClassicLinkDnsSupportRequest');
    helper.add(
      'vpcId',
      vpcId,
    );
    return helper.toString();
  }
}

class EnableVpcClassicLinkDnsSupportRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<EnableVpcClassicLinkDnsSupportRequest> {
  const EnableVpcClassicLinkDnsSupportRequestEc2QuerySerializer()
      : super('EnableVpcClassicLinkDnsSupportRequest');

  @override
  Iterable<Type> get types => const [
        EnableVpcClassicLinkDnsSupportRequest,
        _$EnableVpcClassicLinkDnsSupportRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableVpcClassicLinkDnsSupportRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableVpcClassicLinkDnsSupportRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'VpcId':
          if (value != null) {
            result.vpcId = (serializers.deserialize(
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
    final payload = (object as EnableVpcClassicLinkDnsSupportRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'EnableVpcClassicLinkDnsSupportRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.vpcId != null) {
      result
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          payload.vpcId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
