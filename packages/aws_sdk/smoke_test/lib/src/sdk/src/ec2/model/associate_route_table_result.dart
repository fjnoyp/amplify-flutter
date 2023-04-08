// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.associate_route_table_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/route_table_association_state.dart'
    as _i2;

part 'associate_route_table_result.g.dart';

abstract class AssociateRouteTableResult
    with _i1.AWSEquatable<AssociateRouteTableResult>
    implements
        Built<AssociateRouteTableResult, AssociateRouteTableResultBuilder> {
  factory AssociateRouteTableResult({
    String? associationId,
    _i2.RouteTableAssociationState? associationState,
  }) {
    return _$AssociateRouteTableResult._(
      associationId: associationId,
      associationState: associationState,
    );
  }

  factory AssociateRouteTableResult.build(
          [void Function(AssociateRouteTableResultBuilder) updates]) =
      _$AssociateRouteTableResult;

  const AssociateRouteTableResult._();

  /// Constructs a [AssociateRouteTableResult] from a [payload] and [response].
  factory AssociateRouteTableResult.fromResponse(
    AssociateRouteTableResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    AssociateRouteTableResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateRouteTableResultBuilder b) {}

  /// The route table association ID. This ID is required for disassociating the route table.
  String? get associationId;

  /// The state of the association.
  _i2.RouteTableAssociationState? get associationState;
  @override
  List<Object?> get props => [
        associationId,
        associationState,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssociateRouteTableResult');
    helper.add(
      'associationId',
      associationId,
    );
    helper.add(
      'associationState',
      associationState,
    );
    return helper.toString();
  }
}

class AssociateRouteTableResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AssociateRouteTableResult> {
  const AssociateRouteTableResultEc2QuerySerializer()
      : super('AssociateRouteTableResult');

  @override
  Iterable<Type> get types => const [
        AssociateRouteTableResult,
        _$AssociateRouteTableResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateRouteTableResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateRouteTableResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'associationId':
          if (value != null) {
            result.associationId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'associationState':
          if (value != null) {
            result.associationState.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.RouteTableAssociationState),
            ) as _i2.RouteTableAssociationState));
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
    final payload = (object as AssociateRouteTableResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AssociateRouteTableResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.associationId != null) {
      result
        ..add(const _i3.XmlElementName('AssociationId'))
        ..add(serializers.serialize(
          payload.associationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.associationState != null) {
      result
        ..add(const _i3.XmlElementName('AssociationState'))
        ..add(serializers.serialize(
          payload.associationState!,
          specifiedType: const FullType(_i2.RouteTableAssociationState),
        ));
    }
    return result;
  }
}
