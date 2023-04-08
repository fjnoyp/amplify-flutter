// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_local_gateway_route_table_virtual_interface_group_association_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i3;

part 'create_local_gateway_route_table_virtual_interface_group_association_request.g.dart';

abstract class CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
    with
        _i1.HttpInput<
            CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest>,
        _i2.AWSEquatable<
            CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest>
    implements
        Built<
            CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest,
            CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder> {
  factory CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest({
    required String localGatewayRouteTableId,
    required String localGatewayVirtualInterfaceGroupId,
    List<_i3.TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
        ._(
      localGatewayRouteTableId: localGatewayRouteTableId,
      localGatewayVirtualInterfaceGroupId: localGatewayVirtualInterfaceGroupId,
      tagSpecifications:
          tagSpecifications == null ? null : _i4.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest.build(
          [void Function(
                  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder)
              updates]) =
      _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest;

  const CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest._();

  factory CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest.fromRequest(
    CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder
          b) {
    b.dryRun = false;
  }

  /// The ID of the local gateway route table.
  String get localGatewayRouteTableId;

  /// The ID of the local gateway route table virtual interface group association.
  String get localGatewayVirtualInterfaceGroupId;

  /// The tags assigned to the local gateway route table virtual interface group association.
  _i4.BuiltList<_i3.TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
      getPayload() => this;
  @override
  List<Object?> get props => [
        localGatewayRouteTableId,
        localGatewayVirtualInterfaceGroupId,
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest');
    helper.add(
      'localGatewayRouteTableId',
      localGatewayRouteTableId,
    );
    helper.add(
      'localGatewayVirtualInterfaceGroupId',
      localGatewayVirtualInterfaceGroupId,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest> {
  const CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestEc2QuerySerializer()
      : super(
            'CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest');

  @override
  Iterable<Type> get types => const [
        CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest,
        _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
      deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder();
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
        case 'LocalGatewayVirtualInterfaceGroupId':
          result.localGatewayVirtualInterfaceGroupId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TagSpecification':
          if (value != null) {
            result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.TagSpecification)],
              ),
            ) as _i4.BuiltList<_i3.TagSpecification>));
          }
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
    final payload = (object
        as CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestResponse',
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
      ..add(const _i1.XmlElementName('LocalGatewayVirtualInterfaceGroupId'))
      ..add(serializers.serialize(
        payload.localGatewayVirtualInterfaceGroupId,
        specifiedType: const FullType(String),
      ));
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.TagSpecification)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
