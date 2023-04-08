// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.replace_route_table_association_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'replace_route_table_association_request.g.dart';

abstract class ReplaceRouteTableAssociationRequest
    with
        _i1.HttpInput<ReplaceRouteTableAssociationRequest>,
        _i2.AWSEquatable<ReplaceRouteTableAssociationRequest>
    implements
        Built<ReplaceRouteTableAssociationRequest,
            ReplaceRouteTableAssociationRequestBuilder> {
  factory ReplaceRouteTableAssociationRequest({
    required String associationId,
    bool? dryRun,
    required String routeTableId,
  }) {
    dryRun ??= false;
    return _$ReplaceRouteTableAssociationRequest._(
      associationId: associationId,
      dryRun: dryRun,
      routeTableId: routeTableId,
    );
  }

  factory ReplaceRouteTableAssociationRequest.build(
          [void Function(ReplaceRouteTableAssociationRequestBuilder) updates]) =
      _$ReplaceRouteTableAssociationRequest;

  const ReplaceRouteTableAssociationRequest._();

  factory ReplaceRouteTableAssociationRequest.fromRequest(
    ReplaceRouteTableAssociationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ReplaceRouteTableAssociationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplaceRouteTableAssociationRequestBuilder b) {
    b.dryRun = false;
  }

  /// The association ID.
  String get associationId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the new route table to associate with the subnet.
  String get routeTableId;
  @override
  ReplaceRouteTableAssociationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        associationId,
        dryRun,
        routeTableId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ReplaceRouteTableAssociationRequest');
    helper.add(
      'associationId',
      associationId,
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

class ReplaceRouteTableAssociationRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ReplaceRouteTableAssociationRequest> {
  const ReplaceRouteTableAssociationRequestEc2QuerySerializer()
      : super('ReplaceRouteTableAssociationRequest');

  @override
  Iterable<Type> get types => const [
        ReplaceRouteTableAssociationRequest,
        _$ReplaceRouteTableAssociationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReplaceRouteTableAssociationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplaceRouteTableAssociationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'associationId':
          result.associationId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as ReplaceRouteTableAssociationRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ReplaceRouteTableAssociationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('AssociationId'))
      ..add(serializers.serialize(
        payload.associationId,
        specifiedType: const FullType(String),
      ));
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
