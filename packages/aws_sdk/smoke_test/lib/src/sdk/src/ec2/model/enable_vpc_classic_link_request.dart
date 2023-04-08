// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.enable_vpc_classic_link_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'enable_vpc_classic_link_request.g.dart';

abstract class EnableVpcClassicLinkRequest
    with
        _i1.HttpInput<EnableVpcClassicLinkRequest>,
        _i2.AWSEquatable<EnableVpcClassicLinkRequest>
    implements
        Built<EnableVpcClassicLinkRequest, EnableVpcClassicLinkRequestBuilder> {
  factory EnableVpcClassicLinkRequest({
    bool? dryRun,
    required String vpcId,
  }) {
    dryRun ??= false;
    return _$EnableVpcClassicLinkRequest._(
      dryRun: dryRun,
      vpcId: vpcId,
    );
  }

  factory EnableVpcClassicLinkRequest.build(
          [void Function(EnableVpcClassicLinkRequestBuilder) updates]) =
      _$EnableVpcClassicLinkRequest;

  const EnableVpcClassicLinkRequest._();

  factory EnableVpcClassicLinkRequest.fromRequest(
    EnableVpcClassicLinkRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    EnableVpcClassicLinkRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnableVpcClassicLinkRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the VPC.
  String get vpcId;
  @override
  EnableVpcClassicLinkRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        vpcId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EnableVpcClassicLinkRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    return helper.toString();
  }
}

class EnableVpcClassicLinkRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<EnableVpcClassicLinkRequest> {
  const EnableVpcClassicLinkRequestEc2QuerySerializer()
      : super('EnableVpcClassicLinkRequest');

  @override
  Iterable<Type> get types => const [
        EnableVpcClassicLinkRequest,
        _$EnableVpcClassicLinkRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableVpcClassicLinkRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableVpcClassicLinkRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as EnableVpcClassicLinkRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'EnableVpcClassicLinkRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('VpcId'))
      ..add(serializers.serialize(
        payload.vpcId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
