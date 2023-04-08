// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_fleets_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleet_error_item.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleet_success_item.dart'
    as _i2;

part 'delete_fleets_result.g.dart';

abstract class DeleteFleetsResult
    with _i1.AWSEquatable<DeleteFleetsResult>
    implements Built<DeleteFleetsResult, DeleteFleetsResultBuilder> {
  factory DeleteFleetsResult({
    List<_i2.DeleteFleetSuccessItem>? successfulFleetDeletions,
    List<_i3.DeleteFleetErrorItem>? unsuccessfulFleetDeletions,
  }) {
    return _$DeleteFleetsResult._(
      successfulFleetDeletions: successfulFleetDeletions == null
          ? null
          : _i4.BuiltList(successfulFleetDeletions),
      unsuccessfulFleetDeletions: unsuccessfulFleetDeletions == null
          ? null
          : _i4.BuiltList(unsuccessfulFleetDeletions),
    );
  }

  factory DeleteFleetsResult.build(
          [void Function(DeleteFleetsResultBuilder) updates]) =
      _$DeleteFleetsResult;

  const DeleteFleetsResult._();

  /// Constructs a [DeleteFleetsResult] from a [payload] and [response].
  factory DeleteFleetsResult.fromResponse(
    DeleteFleetsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    DeleteFleetsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteFleetsResultBuilder b) {}

  /// Information about the EC2 Fleets that are successfully deleted.
  _i4.BuiltList<_i2.DeleteFleetSuccessItem>? get successfulFleetDeletions;

  /// Information about the EC2 Fleets that are not successfully deleted.
  _i4.BuiltList<_i3.DeleteFleetErrorItem>? get unsuccessfulFleetDeletions;
  @override
  List<Object?> get props => [
        successfulFleetDeletions,
        unsuccessfulFleetDeletions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteFleetsResult');
    helper.add(
      'successfulFleetDeletions',
      successfulFleetDeletions,
    );
    helper.add(
      'unsuccessfulFleetDeletions',
      unsuccessfulFleetDeletions,
    );
    return helper.toString();
  }
}

class DeleteFleetsResultEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<DeleteFleetsResult> {
  const DeleteFleetsResultEc2QuerySerializer() : super('DeleteFleetsResult');

  @override
  Iterable<Type> get types => const [
        DeleteFleetsResult,
        _$DeleteFleetsResult,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteFleetsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteFleetsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'successfulFleetDeletionSet':
          if (value != null) {
            result.successfulFleetDeletions
                .replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.DeleteFleetSuccessItem)],
              ),
            ) as _i4.BuiltList<_i2.DeleteFleetSuccessItem>));
          }
          break;
        case 'unsuccessfulFleetDeletionSet':
          if (value != null) {
            result.unsuccessfulFleetDeletions
                .replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.DeleteFleetErrorItem)],
              ),
            ) as _i4.BuiltList<_i3.DeleteFleetErrorItem>));
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
    final payload = (object as DeleteFleetsResult);
    final result = <Object?>[
      const _i5.XmlElementName(
        'DeleteFleetsResultResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.successfulFleetDeletions != null) {
      result
        ..add(const _i5.XmlElementName('SuccessfulFleetDeletionSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.successfulFleetDeletions!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.DeleteFleetSuccessItem)],
          ),
        ));
    }
    if (payload.unsuccessfulFleetDeletions != null) {
      result
        ..add(const _i5.XmlElementName('UnsuccessfulFleetDeletionSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.unsuccessfulFleetDeletions!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.DeleteFleetErrorItem)],
          ),
        ));
    }
    return result;
  }
}
