// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_vpc_peering_connection_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_vpc_peering_connection_request.g.dart';

abstract class DeleteVpcPeeringConnectionRequest
    with
        _i1.HttpInput<DeleteVpcPeeringConnectionRequest>,
        _i2.AWSEquatable<DeleteVpcPeeringConnectionRequest>
    implements
        Built<DeleteVpcPeeringConnectionRequest,
            DeleteVpcPeeringConnectionRequestBuilder> {
  factory DeleteVpcPeeringConnectionRequest({
    bool? dryRun,
    required String vpcPeeringConnectionId,
  }) {
    dryRun ??= false;
    return _$DeleteVpcPeeringConnectionRequest._(
      dryRun: dryRun,
      vpcPeeringConnectionId: vpcPeeringConnectionId,
    );
  }

  factory DeleteVpcPeeringConnectionRequest.build(
          [void Function(DeleteVpcPeeringConnectionRequestBuilder) updates]) =
      _$DeleteVpcPeeringConnectionRequest;

  const DeleteVpcPeeringConnectionRequest._();

  factory DeleteVpcPeeringConnectionRequest.fromRequest(
    DeleteVpcPeeringConnectionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteVpcPeeringConnectionRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteVpcPeeringConnectionRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the VPC peering connection.
  String get vpcPeeringConnectionId;
  @override
  DeleteVpcPeeringConnectionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        vpcPeeringConnectionId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteVpcPeeringConnectionRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'vpcPeeringConnectionId',
      vpcPeeringConnectionId,
    );
    return helper.toString();
  }
}

class DeleteVpcPeeringConnectionRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteVpcPeeringConnectionRequest> {
  const DeleteVpcPeeringConnectionRequestEc2QuerySerializer()
      : super('DeleteVpcPeeringConnectionRequest');

  @override
  Iterable<Type> get types => const [
        DeleteVpcPeeringConnectionRequest,
        _$DeleteVpcPeeringConnectionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteVpcPeeringConnectionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteVpcPeeringConnectionRequestBuilder();
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
        case 'vpcPeeringConnectionId':
          result.vpcPeeringConnectionId = (serializers.deserialize(
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
    final payload = (object as DeleteVpcPeeringConnectionRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteVpcPeeringConnectionRequestResponse',
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
      ..add(const _i1.XmlElementName('VpcPeeringConnectionId'))
      ..add(serializers.serialize(
        payload.vpcPeeringConnectionId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
