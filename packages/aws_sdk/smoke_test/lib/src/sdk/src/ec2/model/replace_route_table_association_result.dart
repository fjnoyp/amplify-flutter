// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.replace_route_table_association_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/route_table_association_state.dart'
    as _i2;

part 'replace_route_table_association_result.g.dart';

abstract class ReplaceRouteTableAssociationResult
    with
        _i1.AWSEquatable<ReplaceRouteTableAssociationResult>
    implements
        Built<ReplaceRouteTableAssociationResult,
            ReplaceRouteTableAssociationResultBuilder> {
  factory ReplaceRouteTableAssociationResult({
    String? newAssociationId,
    _i2.RouteTableAssociationState? associationState,
  }) {
    return _$ReplaceRouteTableAssociationResult._(
      newAssociationId: newAssociationId,
      associationState: associationState,
    );
  }

  factory ReplaceRouteTableAssociationResult.build(
          [void Function(ReplaceRouteTableAssociationResultBuilder) updates]) =
      _$ReplaceRouteTableAssociationResult;

  const ReplaceRouteTableAssociationResult._();

  /// Constructs a [ReplaceRouteTableAssociationResult] from a [payload] and [response].
  factory ReplaceRouteTableAssociationResult.fromResponse(
    ReplaceRouteTableAssociationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ReplaceRouteTableAssociationResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplaceRouteTableAssociationResultBuilder b) {}

  /// The ID of the new association.
  String? get newAssociationId;

  /// The state of the association.
  _i2.RouteTableAssociationState? get associationState;
  @override
  List<Object?> get props => [
        newAssociationId,
        associationState,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ReplaceRouteTableAssociationResult');
    helper.add(
      'newAssociationId',
      newAssociationId,
    );
    helper.add(
      'associationState',
      associationState,
    );
    return helper.toString();
  }
}

class ReplaceRouteTableAssociationResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ReplaceRouteTableAssociationResult> {
  const ReplaceRouteTableAssociationResultEc2QuerySerializer()
      : super('ReplaceRouteTableAssociationResult');

  @override
  Iterable<Type> get types => const [
        ReplaceRouteTableAssociationResult,
        _$ReplaceRouteTableAssociationResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReplaceRouteTableAssociationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplaceRouteTableAssociationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'newAssociationId':
          if (value != null) {
            result.newAssociationId = (serializers.deserialize(
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
    final payload = (object as ReplaceRouteTableAssociationResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ReplaceRouteTableAssociationResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.newAssociationId != null) {
      result
        ..add(const _i3.XmlElementName('NewAssociationId'))
        ..add(serializers.serialize(
          payload.newAssociationId!,
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
