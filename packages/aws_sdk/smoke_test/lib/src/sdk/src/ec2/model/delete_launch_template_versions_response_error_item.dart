// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_launch_template_versions_response_error_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/response_error.dart' as _i3;

part 'delete_launch_template_versions_response_error_item.g.dart';

/// Describes a launch template version that could not be deleted.
abstract class DeleteLaunchTemplateVersionsResponseErrorItem
    with
        _i1.AWSEquatable<DeleteLaunchTemplateVersionsResponseErrorItem>
    implements
        Built<DeleteLaunchTemplateVersionsResponseErrorItem,
            DeleteLaunchTemplateVersionsResponseErrorItemBuilder> {
  /// Describes a launch template version that could not be deleted.
  factory DeleteLaunchTemplateVersionsResponseErrorItem({
    String? launchTemplateId,
    String? launchTemplateName,
    _i2.Int64? versionNumber,
    _i3.ResponseError? responseError,
  }) {
    versionNumber ??= _i2.Int64.ZERO;
    return _$DeleteLaunchTemplateVersionsResponseErrorItem._(
      launchTemplateId: launchTemplateId,
      launchTemplateName: launchTemplateName,
      versionNumber: versionNumber,
      responseError: responseError,
    );
  }

  /// Describes a launch template version that could not be deleted.
  factory DeleteLaunchTemplateVersionsResponseErrorItem.build(
      [void Function(DeleteLaunchTemplateVersionsResponseErrorItemBuilder)
          updates]) = _$DeleteLaunchTemplateVersionsResponseErrorItem;

  const DeleteLaunchTemplateVersionsResponseErrorItem._();

  static const List<_i4.SmithySerializer> serializers = [
    DeleteLaunchTemplateVersionsResponseErrorItemEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteLaunchTemplateVersionsResponseErrorItemBuilder b) {
    b.versionNumber = _i2.Int64.ZERO;
  }

  /// The ID of the launch template.
  String? get launchTemplateId;

  /// The name of the launch template.
  String? get launchTemplateName;

  /// The version number of the launch template.
  _i2.Int64 get versionNumber;

  /// Information about the error.
  _i3.ResponseError? get responseError;
  @override
  List<Object?> get props => [
        launchTemplateId,
        launchTemplateName,
        versionNumber,
        responseError,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteLaunchTemplateVersionsResponseErrorItem');
    helper.add(
      'launchTemplateId',
      launchTemplateId,
    );
    helper.add(
      'launchTemplateName',
      launchTemplateName,
    );
    helper.add(
      'versionNumber',
      versionNumber,
    );
    helper.add(
      'responseError',
      responseError,
    );
    return helper.toString();
  }
}

class DeleteLaunchTemplateVersionsResponseErrorItemEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<
        DeleteLaunchTemplateVersionsResponseErrorItem> {
  const DeleteLaunchTemplateVersionsResponseErrorItemEc2QuerySerializer()
      : super('DeleteLaunchTemplateVersionsResponseErrorItem');

  @override
  Iterable<Type> get types => const [
        DeleteLaunchTemplateVersionsResponseErrorItem,
        _$DeleteLaunchTemplateVersionsResponseErrorItem,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteLaunchTemplateVersionsResponseErrorItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteLaunchTemplateVersionsResponseErrorItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'launchTemplateId':
          if (value != null) {
            result.launchTemplateId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'launchTemplateName':
          if (value != null) {
            result.launchTemplateName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'versionNumber':
          result.versionNumber = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
          break;
        case 'responseError':
          if (value != null) {
            result.responseError.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ResponseError),
            ) as _i3.ResponseError));
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
    final payload = (object as DeleteLaunchTemplateVersionsResponseErrorItem);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DeleteLaunchTemplateVersionsResponseErrorItemResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.launchTemplateId != null) {
      result
        ..add(const _i4.XmlElementName('LaunchTemplateId'))
        ..add(serializers.serialize(
          payload.launchTemplateId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.launchTemplateName != null) {
      result
        ..add(const _i4.XmlElementName('LaunchTemplateName'))
        ..add(serializers.serialize(
          payload.launchTemplateName!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i4.XmlElementName('VersionNumber'))
      ..add(serializers.serialize(
        payload.versionNumber,
        specifiedType: const FullType(_i2.Int64),
      ));
    if (payload.responseError != null) {
      result
        ..add(const _i4.XmlElementName('ResponseError'))
        ..add(serializers.serialize(
          payload.responseError!,
          specifiedType: const FullType(_i3.ResponseError),
        ));
    }
    return result;
  }
}
