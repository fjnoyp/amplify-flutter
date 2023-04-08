// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_launch_template_versions_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_launch_template_versions_request.g.dart';

abstract class DeleteLaunchTemplateVersionsRequest
    with
        _i1.HttpInput<DeleteLaunchTemplateVersionsRequest>,
        _i2.AWSEquatable<DeleteLaunchTemplateVersionsRequest>
    implements
        Built<DeleteLaunchTemplateVersionsRequest,
            DeleteLaunchTemplateVersionsRequestBuilder> {
  factory DeleteLaunchTemplateVersionsRequest({
    bool? dryRun,
    String? launchTemplateId,
    String? launchTemplateName,
    required List<String> versions,
  }) {
    dryRun ??= false;
    return _$DeleteLaunchTemplateVersionsRequest._(
      dryRun: dryRun,
      launchTemplateId: launchTemplateId,
      launchTemplateName: launchTemplateName,
      versions: _i3.BuiltList(versions),
    );
  }

  factory DeleteLaunchTemplateVersionsRequest.build(
          [void Function(DeleteLaunchTemplateVersionsRequestBuilder) updates]) =
      _$DeleteLaunchTemplateVersionsRequest;

  const DeleteLaunchTemplateVersionsRequest._();

  factory DeleteLaunchTemplateVersionsRequest.fromRequest(
    DeleteLaunchTemplateVersionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteLaunchTemplateVersionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteLaunchTemplateVersionsRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the launch template.
  ///
  /// You must specify either the `LaunchTemplateId` or the `LaunchTemplateName`, but not both.
  String? get launchTemplateId;

  /// The name of the launch template.
  ///
  /// You must specify either the `LaunchTemplateName` or the `LaunchTemplateId`, but not both.
  String? get launchTemplateName;

  /// The version numbers of one or more launch template versions to delete.
  _i3.BuiltList<String> get versions;
  @override
  DeleteLaunchTemplateVersionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        launchTemplateId,
        launchTemplateName,
        versions,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteLaunchTemplateVersionsRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'launchTemplateId',
      launchTemplateId,
    );
    helper.add(
      'launchTemplateName',
      launchTemplateName,
    );
    helper.add(
      'versions',
      versions,
    );
    return helper.toString();
  }
}

class DeleteLaunchTemplateVersionsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DeleteLaunchTemplateVersionsRequest> {
  const DeleteLaunchTemplateVersionsRequestEc2QuerySerializer()
      : super('DeleteLaunchTemplateVersionsRequest');

  @override
  Iterable<Type> get types => const [
        DeleteLaunchTemplateVersionsRequest,
        _$DeleteLaunchTemplateVersionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteLaunchTemplateVersionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteLaunchTemplateVersionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'LaunchTemplateId':
          if (value != null) {
            result.launchTemplateId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LaunchTemplateName':
          if (value != null) {
            result.launchTemplateName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LaunchTemplateVersion':
          result.versions.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
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
    final payload = (object as DeleteLaunchTemplateVersionsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteLaunchTemplateVersionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.launchTemplateId != null) {
      result
        ..add(const _i1.XmlElementName('LaunchTemplateId'))
        ..add(serializers.serialize(
          payload.launchTemplateId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.launchTemplateName != null) {
      result
        ..add(const _i1.XmlElementName('LaunchTemplateName'))
        ..add(serializers.serialize(
          payload.launchTemplateName!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('LaunchTemplateVersion'))
      ..add(const _i1.XmlBuiltListSerializer(
        memberName: 'item',
        indexer: _i1.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        payload.versions,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ));
    return result;
  }
}
