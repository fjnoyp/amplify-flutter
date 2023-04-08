// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.detach_classic_link_vpc_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'detach_classic_link_vpc_request.g.dart';

abstract class DetachClassicLinkVpcRequest
    with
        _i1.HttpInput<DetachClassicLinkVpcRequest>,
        _i2.AWSEquatable<DetachClassicLinkVpcRequest>
    implements
        Built<DetachClassicLinkVpcRequest, DetachClassicLinkVpcRequestBuilder> {
  factory DetachClassicLinkVpcRequest({
    bool? dryRun,
    required String instanceId,
    required String vpcId,
  }) {
    dryRun ??= false;
    return _$DetachClassicLinkVpcRequest._(
      dryRun: dryRun,
      instanceId: instanceId,
      vpcId: vpcId,
    );
  }

  factory DetachClassicLinkVpcRequest.build(
          [void Function(DetachClassicLinkVpcRequestBuilder) updates]) =
      _$DetachClassicLinkVpcRequest;

  const DetachClassicLinkVpcRequest._();

  factory DetachClassicLinkVpcRequest.fromRequest(
    DetachClassicLinkVpcRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DetachClassicLinkVpcRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DetachClassicLinkVpcRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the instance to unlink from the VPC.
  String get instanceId;

  /// The ID of the VPC to which the instance is linked.
  String get vpcId;
  @override
  DetachClassicLinkVpcRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        instanceId,
        vpcId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DetachClassicLinkVpcRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    return helper.toString();
  }
}

class DetachClassicLinkVpcRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DetachClassicLinkVpcRequest> {
  const DetachClassicLinkVpcRequestEc2QuerySerializer()
      : super('DetachClassicLinkVpcRequest');

  @override
  Iterable<Type> get types => const [
        DetachClassicLinkVpcRequest,
        _$DetachClassicLinkVpcRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DetachClassicLinkVpcRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetachClassicLinkVpcRequestBuilder();
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
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as DetachClassicLinkVpcRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DetachClassicLinkVpcRequestResponse',
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
      ..add(const _i1.XmlElementName('InstanceId'))
      ..add(serializers.serialize(
        payload.instanceId,
        specifiedType: const FullType(String),
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
