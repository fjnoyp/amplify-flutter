// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.attach_internet_gateway_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'attach_internet_gateway_request.g.dart';

abstract class AttachInternetGatewayRequest
    with
        _i1.HttpInput<AttachInternetGatewayRequest>,
        _i2.AWSEquatable<AttachInternetGatewayRequest>
    implements
        Built<AttachInternetGatewayRequest,
            AttachInternetGatewayRequestBuilder> {
  factory AttachInternetGatewayRequest({
    bool? dryRun,
    required String internetGatewayId,
    required String vpcId,
  }) {
    dryRun ??= false;
    return _$AttachInternetGatewayRequest._(
      dryRun: dryRun,
      internetGatewayId: internetGatewayId,
      vpcId: vpcId,
    );
  }

  factory AttachInternetGatewayRequest.build(
          [void Function(AttachInternetGatewayRequestBuilder) updates]) =
      _$AttachInternetGatewayRequest;

  const AttachInternetGatewayRequest._();

  factory AttachInternetGatewayRequest.fromRequest(
    AttachInternetGatewayRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    AttachInternetGatewayRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AttachInternetGatewayRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the internet gateway.
  String get internetGatewayId;

  /// The ID of the VPC.
  String get vpcId;
  @override
  AttachInternetGatewayRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        internetGatewayId,
        vpcId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AttachInternetGatewayRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'internetGatewayId',
      internetGatewayId,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    return helper.toString();
  }
}

class AttachInternetGatewayRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AttachInternetGatewayRequest> {
  const AttachInternetGatewayRequestEc2QuerySerializer()
      : super('AttachInternetGatewayRequest');

  @override
  Iterable<Type> get types => const [
        AttachInternetGatewayRequest,
        _$AttachInternetGatewayRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AttachInternetGatewayRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttachInternetGatewayRequestBuilder();
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
        case 'internetGatewayId':
          result.internetGatewayId = (serializers.deserialize(
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
    final payload = (object as AttachInternetGatewayRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'AttachInternetGatewayRequestResponse',
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
      ..add(const _i1.XmlElementName('InternetGatewayId'))
      ..add(serializers.serialize(
        payload.internetGatewayId,
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
