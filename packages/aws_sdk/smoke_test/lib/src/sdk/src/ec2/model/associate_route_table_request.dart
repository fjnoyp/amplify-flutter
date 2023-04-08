// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.associate_route_table_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'associate_route_table_request.g.dart';

abstract class AssociateRouteTableRequest
    with
        _i1.HttpInput<AssociateRouteTableRequest>,
        _i2.AWSEquatable<AssociateRouteTableRequest>
    implements
        Built<AssociateRouteTableRequest, AssociateRouteTableRequestBuilder> {
  factory AssociateRouteTableRequest({
    bool? dryRun,
    required String routeTableId,
    String? subnetId,
    String? gatewayId,
  }) {
    dryRun ??= false;
    return _$AssociateRouteTableRequest._(
      dryRun: dryRun,
      routeTableId: routeTableId,
      subnetId: subnetId,
      gatewayId: gatewayId,
    );
  }

  factory AssociateRouteTableRequest.build(
          [void Function(AssociateRouteTableRequestBuilder) updates]) =
      _$AssociateRouteTableRequest;

  const AssociateRouteTableRequest._();

  factory AssociateRouteTableRequest.fromRequest(
    AssociateRouteTableRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    AssociateRouteTableRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateRouteTableRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the route table.
  String get routeTableId;

  /// The ID of the subnet.
  String? get subnetId;

  /// The ID of the internet gateway or virtual private gateway.
  String? get gatewayId;
  @override
  AssociateRouteTableRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        routeTableId,
        subnetId,
        gatewayId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssociateRouteTableRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'routeTableId',
      routeTableId,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    helper.add(
      'gatewayId',
      gatewayId,
    );
    return helper.toString();
  }
}

class AssociateRouteTableRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AssociateRouteTableRequest> {
  const AssociateRouteTableRequestEc2QuerySerializer()
      : super('AssociateRouteTableRequest');

  @override
  Iterable<Type> get types => const [
        AssociateRouteTableRequest,
        _$AssociateRouteTableRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateRouteTableRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateRouteTableRequestBuilder();
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
        case 'routeTableId':
          result.routeTableId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'subnetId':
          if (value != null) {
            result.subnetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'GatewayId':
          if (value != null) {
            result.gatewayId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
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
    final payload = (object as AssociateRouteTableRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'AssociateRouteTableRequestResponse',
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
      ..add(const _i1.XmlElementName('RouteTableId'))
      ..add(serializers.serialize(
        payload.routeTableId,
        specifiedType: const FullType(String),
      ));
    if (payload.subnetId != null) {
      result
        ..add(const _i1.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          payload.subnetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.gatewayId != null) {
      result
        ..add(const _i1.XmlElementName('GatewayId'))
        ..add(serializers.serialize(
          payload.gatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
