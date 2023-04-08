// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_local_gateway_route_table_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_local_gateway_route_table_request.g.dart';

abstract class DeleteLocalGatewayRouteTableRequest
    with
        _i1.HttpInput<DeleteLocalGatewayRouteTableRequest>,
        _i2.AWSEquatable<DeleteLocalGatewayRouteTableRequest>
    implements
        Built<DeleteLocalGatewayRouteTableRequest,
            DeleteLocalGatewayRouteTableRequestBuilder> {
  factory DeleteLocalGatewayRouteTableRequest({
    required String localGatewayRouteTableId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteLocalGatewayRouteTableRequest._(
      localGatewayRouteTableId: localGatewayRouteTableId,
      dryRun: dryRun,
    );
  }

  factory DeleteLocalGatewayRouteTableRequest.build(
          [void Function(DeleteLocalGatewayRouteTableRequestBuilder) updates]) =
      _$DeleteLocalGatewayRouteTableRequest;

  const DeleteLocalGatewayRouteTableRequest._();

  factory DeleteLocalGatewayRouteTableRequest.fromRequest(
    DeleteLocalGatewayRouteTableRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteLocalGatewayRouteTableRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteLocalGatewayRouteTableRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the local gateway route table.
  String get localGatewayRouteTableId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteLocalGatewayRouteTableRequest getPayload() => this;
  @override
  List<Object?> get props => [
        localGatewayRouteTableId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteLocalGatewayRouteTableRequest');
    helper.add(
      'localGatewayRouteTableId',
      localGatewayRouteTableId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DeleteLocalGatewayRouteTableRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DeleteLocalGatewayRouteTableRequest> {
  const DeleteLocalGatewayRouteTableRequestEc2QuerySerializer()
      : super('DeleteLocalGatewayRouteTableRequest');

  @override
  Iterable<Type> get types => const [
        DeleteLocalGatewayRouteTableRequest,
        _$DeleteLocalGatewayRouteTableRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteLocalGatewayRouteTableRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteLocalGatewayRouteTableRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'LocalGatewayRouteTableId':
          result.localGatewayRouteTableId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
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
    final payload = (object as DeleteLocalGatewayRouteTableRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteLocalGatewayRouteTableRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('LocalGatewayRouteTableId'))
      ..add(serializers.serialize(
        payload.localGatewayRouteTableId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
