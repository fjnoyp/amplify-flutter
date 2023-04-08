// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_local_gateway_route_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_local_gateway_route_request.g.dart';

abstract class ModifyLocalGatewayRouteRequest
    with
        _i1.HttpInput<ModifyLocalGatewayRouteRequest>,
        _i2.AWSEquatable<ModifyLocalGatewayRouteRequest>
    implements
        Built<ModifyLocalGatewayRouteRequest,
            ModifyLocalGatewayRouteRequestBuilder> {
  factory ModifyLocalGatewayRouteRequest({
    required String destinationCidrBlock,
    required String localGatewayRouteTableId,
    String? localGatewayVirtualInterfaceGroupId,
    String? networkInterfaceId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifyLocalGatewayRouteRequest._(
      destinationCidrBlock: destinationCidrBlock,
      localGatewayRouteTableId: localGatewayRouteTableId,
      localGatewayVirtualInterfaceGroupId: localGatewayVirtualInterfaceGroupId,
      networkInterfaceId: networkInterfaceId,
      dryRun: dryRun,
    );
  }

  factory ModifyLocalGatewayRouteRequest.build(
          [void Function(ModifyLocalGatewayRouteRequestBuilder) updates]) =
      _$ModifyLocalGatewayRouteRequest;

  const ModifyLocalGatewayRouteRequest._();

  factory ModifyLocalGatewayRouteRequest.fromRequest(
    ModifyLocalGatewayRouteRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyLocalGatewayRouteRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyLocalGatewayRouteRequestBuilder b) {
    b.dryRun = false;
  }

  /// The CIDR block used for destination matches. The value that you provide must match the CIDR of an existing route in the table.
  String get destinationCidrBlock;

  /// The ID of the local gateway route table.
  String get localGatewayRouteTableId;

  /// The ID of the virtual interface group.
  String? get localGatewayVirtualInterfaceGroupId;

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyLocalGatewayRouteRequest getPayload() => this;
  @override
  List<Object?> get props => [
        destinationCidrBlock,
        localGatewayRouteTableId,
        localGatewayVirtualInterfaceGroupId,
        networkInterfaceId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyLocalGatewayRouteRequest');
    helper.add(
      'destinationCidrBlock',
      destinationCidrBlock,
    );
    helper.add(
      'localGatewayRouteTableId',
      localGatewayRouteTableId,
    );
    helper.add(
      'localGatewayVirtualInterfaceGroupId',
      localGatewayVirtualInterfaceGroupId,
    );
    helper.add(
      'networkInterfaceId',
      networkInterfaceId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class ModifyLocalGatewayRouteRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyLocalGatewayRouteRequest> {
  const ModifyLocalGatewayRouteRequestEc2QuerySerializer()
      : super('ModifyLocalGatewayRouteRequest');

  @override
  Iterable<Type> get types => const [
        ModifyLocalGatewayRouteRequest,
        _$ModifyLocalGatewayRouteRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyLocalGatewayRouteRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyLocalGatewayRouteRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DestinationCidrBlock':
          result.destinationCidrBlock = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'LocalGatewayRouteTableId':
          result.localGatewayRouteTableId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'LocalGatewayVirtualInterfaceGroupId':
          if (value != null) {
            result.localGatewayVirtualInterfaceGroupId =
                (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'NetworkInterfaceId':
          if (value != null) {
            result.networkInterfaceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as ModifyLocalGatewayRouteRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyLocalGatewayRouteRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DestinationCidrBlock'))
      ..add(serializers.serialize(
        payload.destinationCidrBlock,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('LocalGatewayRouteTableId'))
      ..add(serializers.serialize(
        payload.localGatewayRouteTableId,
        specifiedType: const FullType(String),
      ));
    if (payload.localGatewayVirtualInterfaceGroupId != null) {
      result
        ..add(const _i1.XmlElementName('LocalGatewayVirtualInterfaceGroupId'))
        ..add(serializers.serialize(
          payload.localGatewayVirtualInterfaceGroupId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.networkInterfaceId != null) {
      result
        ..add(const _i1.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          payload.networkInterfaceId!,
          specifiedType: const FullType(String),
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
