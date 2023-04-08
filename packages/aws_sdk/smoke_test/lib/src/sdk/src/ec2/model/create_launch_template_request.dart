// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_launch_template_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/request_launch_template_data.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i4;

part 'create_launch_template_request.g.dart';

abstract class CreateLaunchTemplateRequest
    with
        _i1.HttpInput<CreateLaunchTemplateRequest>,
        _i2.AWSEquatable<CreateLaunchTemplateRequest>
    implements
        Built<CreateLaunchTemplateRequest, CreateLaunchTemplateRequestBuilder> {
  factory CreateLaunchTemplateRequest({
    bool? dryRun,
    String? clientToken,
    required String launchTemplateName,
    String? versionDescription,
    required _i3.RequestLaunchTemplateData launchTemplateData,
    List<_i4.TagSpecification>? tagSpecifications,
  }) {
    dryRun ??= false;
    return _$CreateLaunchTemplateRequest._(
      dryRun: dryRun,
      clientToken: clientToken,
      launchTemplateName: launchTemplateName,
      versionDescription: versionDescription,
      launchTemplateData: launchTemplateData,
      tagSpecifications:
          tagSpecifications == null ? null : _i5.BuiltList(tagSpecifications),
    );
  }

  factory CreateLaunchTemplateRequest.build(
          [void Function(CreateLaunchTemplateRequestBuilder) updates]) =
      _$CreateLaunchTemplateRequest;

  const CreateLaunchTemplateRequest._();

  factory CreateLaunchTemplateRequest.fromRequest(
    CreateLaunchTemplateRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateLaunchTemplateRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateLaunchTemplateRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [Ensuring idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  ///
  /// Constraint: Maximum 128 ASCII characters.
  String? get clientToken;

  /// A name for the launch template.
  String get launchTemplateName;

  /// A description for the first version of the launch template.
  String? get versionDescription;

  /// The information for the launch template.
  _i3.RequestLaunchTemplateData get launchTemplateData;

  /// The tags to apply to the launch template on creation. To tag the launch template, the resource type must be `launch-template`.
  ///
  /// To specify the tags for the resources that are created when an instance is launched, you must use the `TagSpecifications` parameter in the [launch template data](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestLaunchTemplateData.html) structure.
  _i5.BuiltList<_i4.TagSpecification>? get tagSpecifications;
  @override
  CreateLaunchTemplateRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        clientToken,
        launchTemplateName,
        versionDescription,
        launchTemplateData,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateLaunchTemplateRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'launchTemplateName',
      launchTemplateName,
    );
    helper.add(
      'versionDescription',
      versionDescription,
    );
    helper.add(
      'launchTemplateData',
      '***SENSITIVE***',
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    return helper.toString();
  }
}

class CreateLaunchTemplateRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateLaunchTemplateRequest> {
  const CreateLaunchTemplateRequestEc2QuerySerializer()
      : super('CreateLaunchTemplateRequest');

  @override
  Iterable<Type> get types => const [
        CreateLaunchTemplateRequest,
        _$CreateLaunchTemplateRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateLaunchTemplateRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateLaunchTemplateRequestBuilder();
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
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LaunchTemplateName':
          result.launchTemplateName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'VersionDescription':
          if (value != null) {
            result.versionDescription = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LaunchTemplateData':
          result.launchTemplateData.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.RequestLaunchTemplateData),
          ) as _i3.RequestLaunchTemplateData));
          break;
        case 'TagSpecification':
          if (value != null) {
            result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.TagSpecification)],
              ),
            ) as _i5.BuiltList<_i4.TagSpecification>));
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
    final payload = (object as CreateLaunchTemplateRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateLaunchTemplateRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('LaunchTemplateName'))
      ..add(serializers.serialize(
        payload.launchTemplateName,
        specifiedType: const FullType(String),
      ));
    if (payload.versionDescription != null) {
      result
        ..add(const _i1.XmlElementName('VersionDescription'))
        ..add(serializers.serialize(
          payload.versionDescription!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('LaunchTemplateData'))
      ..add(serializers.serialize(
        payload.launchTemplateData,
        specifiedType: const FullType(_i3.RequestLaunchTemplateData),
      ));
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.TagSpecification)],
          ),
        ));
    }
    return result;
  }
}
