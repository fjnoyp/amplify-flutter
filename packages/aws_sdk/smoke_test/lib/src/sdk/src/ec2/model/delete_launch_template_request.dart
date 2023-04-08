// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_launch_template_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_launch_template_request.g.dart';

abstract class DeleteLaunchTemplateRequest
    with
        _i1.HttpInput<DeleteLaunchTemplateRequest>,
        _i2.AWSEquatable<DeleteLaunchTemplateRequest>
    implements
        Built<DeleteLaunchTemplateRequest, DeleteLaunchTemplateRequestBuilder> {
  factory DeleteLaunchTemplateRequest({
    bool? dryRun,
    String? launchTemplateId,
    String? launchTemplateName,
  }) {
    dryRun ??= false;
    return _$DeleteLaunchTemplateRequest._(
      dryRun: dryRun,
      launchTemplateId: launchTemplateId,
      launchTemplateName: launchTemplateName,
    );
  }

  factory DeleteLaunchTemplateRequest.build(
          [void Function(DeleteLaunchTemplateRequestBuilder) updates]) =
      _$DeleteLaunchTemplateRequest;

  const DeleteLaunchTemplateRequest._();

  factory DeleteLaunchTemplateRequest.fromRequest(
    DeleteLaunchTemplateRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteLaunchTemplateRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteLaunchTemplateRequestBuilder b) {
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
  @override
  DeleteLaunchTemplateRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        launchTemplateId,
        launchTemplateName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteLaunchTemplateRequest');
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
    return helper.toString();
  }
}

class DeleteLaunchTemplateRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteLaunchTemplateRequest> {
  const DeleteLaunchTemplateRequestEc2QuerySerializer()
      : super('DeleteLaunchTemplateRequest');

  @override
  Iterable<Type> get types => const [
        DeleteLaunchTemplateRequest,
        _$DeleteLaunchTemplateRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteLaunchTemplateRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteLaunchTemplateRequestBuilder();
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
    final payload = (object as DeleteLaunchTemplateRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteLaunchTemplateRequestResponse',
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
    return result;
  }
}
