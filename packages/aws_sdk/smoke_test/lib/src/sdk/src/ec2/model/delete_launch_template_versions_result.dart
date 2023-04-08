// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_launch_template_versions_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_launch_template_versions_response_error_item.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_launch_template_versions_response_success_item.dart'
    as _i2;

part 'delete_launch_template_versions_result.g.dart';

abstract class DeleteLaunchTemplateVersionsResult
    with
        _i1.AWSEquatable<DeleteLaunchTemplateVersionsResult>
    implements
        Built<DeleteLaunchTemplateVersionsResult,
            DeleteLaunchTemplateVersionsResultBuilder> {
  factory DeleteLaunchTemplateVersionsResult({
    List<_i2.DeleteLaunchTemplateVersionsResponseSuccessItem>?
        successfullyDeletedLaunchTemplateVersions,
    List<_i3.DeleteLaunchTemplateVersionsResponseErrorItem>?
        unsuccessfullyDeletedLaunchTemplateVersions,
  }) {
    return _$DeleteLaunchTemplateVersionsResult._(
      successfullyDeletedLaunchTemplateVersions:
          successfullyDeletedLaunchTemplateVersions == null
              ? null
              : _i4.BuiltList(successfullyDeletedLaunchTemplateVersions),
      unsuccessfullyDeletedLaunchTemplateVersions:
          unsuccessfullyDeletedLaunchTemplateVersions == null
              ? null
              : _i4.BuiltList(unsuccessfullyDeletedLaunchTemplateVersions),
    );
  }

  factory DeleteLaunchTemplateVersionsResult.build(
          [void Function(DeleteLaunchTemplateVersionsResultBuilder) updates]) =
      _$DeleteLaunchTemplateVersionsResult;

  const DeleteLaunchTemplateVersionsResult._();

  /// Constructs a [DeleteLaunchTemplateVersionsResult] from a [payload] and [response].
  factory DeleteLaunchTemplateVersionsResult.fromResponse(
    DeleteLaunchTemplateVersionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    DeleteLaunchTemplateVersionsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteLaunchTemplateVersionsResultBuilder b) {}

  /// Information about the launch template versions that were successfully deleted.
  _i4.BuiltList<_i2.DeleteLaunchTemplateVersionsResponseSuccessItem>?
      get successfullyDeletedLaunchTemplateVersions;

  /// Information about the launch template versions that could not be deleted.
  _i4.BuiltList<_i3.DeleteLaunchTemplateVersionsResponseErrorItem>?
      get unsuccessfullyDeletedLaunchTemplateVersions;
  @override
  List<Object?> get props => [
        successfullyDeletedLaunchTemplateVersions,
        unsuccessfullyDeletedLaunchTemplateVersions,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteLaunchTemplateVersionsResult');
    helper.add(
      'successfullyDeletedLaunchTemplateVersions',
      successfullyDeletedLaunchTemplateVersions,
    );
    helper.add(
      'unsuccessfullyDeletedLaunchTemplateVersions',
      unsuccessfullyDeletedLaunchTemplateVersions,
    );
    return helper.toString();
  }
}

class DeleteLaunchTemplateVersionsResultEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<DeleteLaunchTemplateVersionsResult> {
  const DeleteLaunchTemplateVersionsResultEc2QuerySerializer()
      : super('DeleteLaunchTemplateVersionsResult');

  @override
  Iterable<Type> get types => const [
        DeleteLaunchTemplateVersionsResult,
        _$DeleteLaunchTemplateVersionsResult,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteLaunchTemplateVersionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteLaunchTemplateVersionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'successfullyDeletedLaunchTemplateVersionSet':
          if (value != null) {
            result.successfullyDeletedLaunchTemplateVersions.replace(
                (const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.DeleteLaunchTemplateVersionsResponseSuccessItem)],
              ),
            ) as _i4.BuiltList<
                    _i2.DeleteLaunchTemplateVersionsResponseSuccessItem>));
          }
          break;
        case 'unsuccessfullyDeletedLaunchTemplateVersionSet':
          if (value != null) {
            result.unsuccessfullyDeletedLaunchTemplateVersions.replace(
                (const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.DeleteLaunchTemplateVersionsResponseErrorItem)],
              ),
            ) as _i4.BuiltList<
                    _i3.DeleteLaunchTemplateVersionsResponseErrorItem>));
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
    final payload = (object as DeleteLaunchTemplateVersionsResult);
    final result = <Object?>[
      const _i5.XmlElementName(
        'DeleteLaunchTemplateVersionsResultResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.successfullyDeletedLaunchTemplateVersions != null) {
      result
        ..add(const _i5.XmlElementName(
            'SuccessfullyDeletedLaunchTemplateVersionSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.successfullyDeletedLaunchTemplateVersions!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.DeleteLaunchTemplateVersionsResponseSuccessItem)],
          ),
        ));
    }
    if (payload.unsuccessfullyDeletedLaunchTemplateVersions != null) {
      result
        ..add(const _i5.XmlElementName(
            'UnsuccessfullyDeletedLaunchTemplateVersionSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.unsuccessfullyDeletedLaunchTemplateVersions!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.DeleteLaunchTemplateVersionsResponseErrorItem)],
          ),
        ));
    }
    return result;
  }
}
