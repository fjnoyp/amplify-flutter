// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_vpc_endpoint_service_configurations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_vpc_endpoint_service_configurations_request.g.dart';

abstract class DeleteVpcEndpointServiceConfigurationsRequest
    with
        _i1.HttpInput<DeleteVpcEndpointServiceConfigurationsRequest>,
        _i2.AWSEquatable<DeleteVpcEndpointServiceConfigurationsRequest>
    implements
        Built<DeleteVpcEndpointServiceConfigurationsRequest,
            DeleteVpcEndpointServiceConfigurationsRequestBuilder> {
  factory DeleteVpcEndpointServiceConfigurationsRequest({
    bool? dryRun,
    required List<String> serviceIds,
  }) {
    dryRun ??= false;
    return _$DeleteVpcEndpointServiceConfigurationsRequest._(
      dryRun: dryRun,
      serviceIds: _i3.BuiltList(serviceIds),
    );
  }

  factory DeleteVpcEndpointServiceConfigurationsRequest.build(
      [void Function(DeleteVpcEndpointServiceConfigurationsRequestBuilder)
          updates]) = _$DeleteVpcEndpointServiceConfigurationsRequest;

  const DeleteVpcEndpointServiceConfigurationsRequest._();

  factory DeleteVpcEndpointServiceConfigurationsRequest.fromRequest(
    DeleteVpcEndpointServiceConfigurationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteVpcEndpointServiceConfigurationsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteVpcEndpointServiceConfigurationsRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of one or more services.
  _i3.BuiltList<String> get serviceIds;
  @override
  DeleteVpcEndpointServiceConfigurationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        serviceIds,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteVpcEndpointServiceConfigurationsRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'serviceIds',
      serviceIds,
    );
    return helper.toString();
  }
}

class DeleteVpcEndpointServiceConfigurationsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        DeleteVpcEndpointServiceConfigurationsRequest> {
  const DeleteVpcEndpointServiceConfigurationsRequestEc2QuerySerializer()
      : super('DeleteVpcEndpointServiceConfigurationsRequest');

  @override
  Iterable<Type> get types => const [
        DeleteVpcEndpointServiceConfigurationsRequest,
        _$DeleteVpcEndpointServiceConfigurationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteVpcEndpointServiceConfigurationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteVpcEndpointServiceConfigurationsRequestBuilder();
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
        case 'ServiceId':
          result.serviceIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
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
    final payload = (object as DeleteVpcEndpointServiceConfigurationsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteVpcEndpointServiceConfigurationsRequestResponse',
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
      ..add(const _i1.XmlElementName('ServiceId'))
      ..add(const _i1.XmlBuiltListSerializer(
        memberName: 'item',
        indexer: _i1.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        payload.serviceIds,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ));
    return result;
  }
}
