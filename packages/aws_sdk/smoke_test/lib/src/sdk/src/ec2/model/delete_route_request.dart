// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_route_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_route_request.g.dart';

abstract class DeleteRouteRequest
    with _i1.HttpInput<DeleteRouteRequest>, _i2.AWSEquatable<DeleteRouteRequest>
    implements Built<DeleteRouteRequest, DeleteRouteRequestBuilder> {
  factory DeleteRouteRequest({
    String? destinationCidrBlock,
    String? destinationIpv6CidrBlock,
    String? destinationPrefixListId,
    bool? dryRun,
    required String routeTableId,
  }) {
    dryRun ??= false;
    return _$DeleteRouteRequest._(
      destinationCidrBlock: destinationCidrBlock,
      destinationIpv6CidrBlock: destinationIpv6CidrBlock,
      destinationPrefixListId: destinationPrefixListId,
      dryRun: dryRun,
      routeTableId: routeTableId,
    );
  }

  factory DeleteRouteRequest.build(
          [void Function(DeleteRouteRequestBuilder) updates]) =
      _$DeleteRouteRequest;

  const DeleteRouteRequest._();

  factory DeleteRouteRequest.fromRequest(
    DeleteRouteRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteRouteRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteRouteRequestBuilder b) {
    b.dryRun = false;
  }

  /// The IPv4 CIDR range for the route. The value you specify must match the CIDR for the route exactly.
  String? get destinationCidrBlock;

  /// The IPv6 CIDR range for the route. The value you specify must match the CIDR for the route exactly.
  String? get destinationIpv6CidrBlock;

  /// The ID of the prefix list for the route.
  String? get destinationPrefixListId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the route table.
  String get routeTableId;
  @override
  DeleteRouteRequest getPayload() => this;
  @override
  List<Object?> get props => [
        destinationCidrBlock,
        destinationIpv6CidrBlock,
        destinationPrefixListId,
        dryRun,
        routeTableId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteRouteRequest');
    helper.add(
      'destinationCidrBlock',
      destinationCidrBlock,
    );
    helper.add(
      'destinationIpv6CidrBlock',
      destinationIpv6CidrBlock,
    );
    helper.add(
      'destinationPrefixListId',
      destinationPrefixListId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'routeTableId',
      routeTableId,
    );
    return helper.toString();
  }
}

class DeleteRouteRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteRouteRequest> {
  const DeleteRouteRequestEc2QuerySerializer() : super('DeleteRouteRequest');

  @override
  Iterable<Type> get types => const [
        DeleteRouteRequest,
        _$DeleteRouteRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteRouteRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteRouteRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'destinationCidrBlock':
          if (value != null) {
            result.destinationCidrBlock = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'destinationIpv6CidrBlock':
          if (value != null) {
            result.destinationIpv6CidrBlock = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DestinationPrefixListId':
          if (value != null) {
            result.destinationPrefixListId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'routeTableId':
          result.routeTableId = (serializers.deserialize(
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
    final payload = (object as DeleteRouteRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteRouteRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.destinationCidrBlock != null) {
      result
        ..add(const _i1.XmlElementName('DestinationCidrBlock'))
        ..add(serializers.serialize(
          payload.destinationCidrBlock!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.destinationIpv6CidrBlock != null) {
      result
        ..add(const _i1.XmlElementName('DestinationIpv6CidrBlock'))
        ..add(serializers.serialize(
          payload.destinationIpv6CidrBlock!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.destinationPrefixListId != null) {
      result
        ..add(const _i1.XmlElementName('DestinationPrefixListId'))
        ..add(serializers.serialize(
          payload.destinationPrefixListId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('RouteTableId'))
      ..add(serializers.serialize(
        payload.routeTableId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
