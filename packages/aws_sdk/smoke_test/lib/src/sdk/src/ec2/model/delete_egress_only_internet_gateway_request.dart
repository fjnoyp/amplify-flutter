// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_egress_only_internet_gateway_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_egress_only_internet_gateway_request.g.dart';

abstract class DeleteEgressOnlyInternetGatewayRequest
    with
        _i1.HttpInput<DeleteEgressOnlyInternetGatewayRequest>,
        _i2.AWSEquatable<DeleteEgressOnlyInternetGatewayRequest>
    implements
        Built<DeleteEgressOnlyInternetGatewayRequest,
            DeleteEgressOnlyInternetGatewayRequestBuilder> {
  factory DeleteEgressOnlyInternetGatewayRequest({
    bool? dryRun,
    required String egressOnlyInternetGatewayId,
  }) {
    dryRun ??= false;
    return _$DeleteEgressOnlyInternetGatewayRequest._(
      dryRun: dryRun,
      egressOnlyInternetGatewayId: egressOnlyInternetGatewayId,
    );
  }

  factory DeleteEgressOnlyInternetGatewayRequest.build(
      [void Function(DeleteEgressOnlyInternetGatewayRequestBuilder)
          updates]) = _$DeleteEgressOnlyInternetGatewayRequest;

  const DeleteEgressOnlyInternetGatewayRequest._();

  factory DeleteEgressOnlyInternetGatewayRequest.fromRequest(
    DeleteEgressOnlyInternetGatewayRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteEgressOnlyInternetGatewayRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteEgressOnlyInternetGatewayRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the egress-only internet gateway.
  String get egressOnlyInternetGatewayId;
  @override
  DeleteEgressOnlyInternetGatewayRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        egressOnlyInternetGatewayId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteEgressOnlyInternetGatewayRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'egressOnlyInternetGatewayId',
      egressOnlyInternetGatewayId,
    );
    return helper.toString();
  }
}

class DeleteEgressOnlyInternetGatewayRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DeleteEgressOnlyInternetGatewayRequest> {
  const DeleteEgressOnlyInternetGatewayRequestEc2QuerySerializer()
      : super('DeleteEgressOnlyInternetGatewayRequest');

  @override
  Iterable<Type> get types => const [
        DeleteEgressOnlyInternetGatewayRequest,
        _$DeleteEgressOnlyInternetGatewayRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteEgressOnlyInternetGatewayRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteEgressOnlyInternetGatewayRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'EgressOnlyInternetGatewayId':
          result.egressOnlyInternetGatewayId = (serializers.deserialize(
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
    final payload = (object as DeleteEgressOnlyInternetGatewayRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteEgressOnlyInternetGatewayRequestResponse',
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
      ..add(const _i1.XmlElementName('EgressOnlyInternetGatewayId'))
      ..add(serializers.serialize(
        payload.egressOnlyInternetGatewayId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
