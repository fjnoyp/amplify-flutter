// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_launch_template_versions_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_launch_template_versions_request.g.dart';

abstract class DescribeLaunchTemplateVersionsRequest
    with
        _i1.HttpInput<DescribeLaunchTemplateVersionsRequest>,
        _i2.AWSEquatable<DescribeLaunchTemplateVersionsRequest>
    implements
        Built<DescribeLaunchTemplateVersionsRequest,
            DescribeLaunchTemplateVersionsRequestBuilder> {
  factory DescribeLaunchTemplateVersionsRequest({
    bool? dryRun,
    String? launchTemplateId,
    String? launchTemplateName,
    List<String>? versions,
    String? minVersion,
    String? maxVersion,
    String? nextToken,
    int? maxResults,
    List<_i3.Filter>? filters,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeLaunchTemplateVersionsRequest._(
      dryRun: dryRun,
      launchTemplateId: launchTemplateId,
      launchTemplateName: launchTemplateName,
      versions: versions == null ? null : _i4.BuiltList(versions),
      minVersion: minVersion,
      maxVersion: maxVersion,
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters == null ? null : _i4.BuiltList(filters),
    );
  }

  factory DescribeLaunchTemplateVersionsRequest.build(
      [void Function(DescribeLaunchTemplateVersionsRequestBuilder)
          updates]) = _$DescribeLaunchTemplateVersionsRequest;

  const DescribeLaunchTemplateVersionsRequest._();

  factory DescribeLaunchTemplateVersionsRequest.fromRequest(
    DescribeLaunchTemplateVersionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeLaunchTemplateVersionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeLaunchTemplateVersionsRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the launch template.
  ///
  /// To describe one or more versions of a specified launch template, you must specify either the `LaunchTemplateId` or the `LaunchTemplateName`, but not both.
  ///
  /// To describe all the latest or default launch template versions in your account, you must omit this parameter.
  String? get launchTemplateId;

  /// The name of the launch template.
  ///
  /// To describe one or more versions of a specified launch template, you must specify either the `LaunchTemplateName` or the `LaunchTemplateId`, but not both.
  ///
  /// To describe all the latest or default launch template versions in your account, you must omit this parameter.
  String? get launchTemplateName;

  /// One or more versions of the launch template. Valid values depend on whether you are describing a specified launch template (by ID or name) or all launch templates in your account.
  ///
  /// To describe one or more versions of a specified launch template, valid values are `$Latest`, `$Default`, and numbers.
  ///
  /// To describe all launch templates in your account that are defined as the latest version, the valid value is `$Latest`. To describe all launch templates in your account that are defined as the default version, the valid value is `$Default`. You can specify `$Latest` and `$Default` in the same request. You cannot specify numbers.
  _i4.BuiltList<String>? get versions;

  /// The version number after which to describe launch template versions.
  String? get minVersion;

  /// The version number up to which to describe launch template versions.
  String? get maxVersion;

  /// The token to request the next page of results.
  String? get nextToken;

  /// The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. This value can be between 1 and 200.
  int get maxResults;

  /// One or more filters.
  ///
  /// *   `create-time` \- The time the launch template version was created.
  ///
  /// *   `ebs-optimized` \- A boolean that indicates whether the instance is optimized for Amazon EBS I/O.
  ///
  /// *   `http-endpoint` \- Indicates whether the HTTP metadata endpoint on your instances is enabled (`enabled` | `disabled`).
  ///
  /// *   `http-protocol-ipv4` \- Indicates whether the IPv4 endpoint for the instance metadata service is enabled (`enabled` | `disabled`).
  ///
  /// *   `host-resource-group-arn` \- The ARN of the host resource group in which to launch the instances.
  ///
  /// *   `http-tokens` \- The state of token usage for your instance metadata requests (`optional` | `required`).
  ///
  /// *   `iam-instance-profile` \- The ARN of the IAM instance profile.
  ///
  /// *   `image-id` \- The ID of the AMI.
  ///
  /// *   `instance-type` \- The instance type.
  ///
  /// *   `is-default-version` \- A boolean that indicates whether the launch template version is the default version.
  ///
  /// *   `kernel-id` \- The kernel ID.
  ///
  /// *   `license-configuration-arn` \- The ARN of the license configuration.
  ///
  /// *   `network-card-index` \- The index of the network card.
  ///
  /// *   `ram-disk-id` \- The RAM disk ID.
  _i4.BuiltList<_i3.Filter>? get filters;
  @override
  DescribeLaunchTemplateVersionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        launchTemplateId,
        launchTemplateName,
        versions,
        minVersion,
        maxVersion,
        nextToken,
        maxResults,
        filters,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeLaunchTemplateVersionsRequest');
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
    helper.add(
      'minVersion',
      minVersion,
    );
    helper.add(
      'maxVersion',
      maxVersion,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'filters',
      filters,
    );
    return helper.toString();
  }
}

class DescribeLaunchTemplateVersionsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeLaunchTemplateVersionsRequest> {
  const DescribeLaunchTemplateVersionsRequestEc2QuerySerializer()
      : super('DescribeLaunchTemplateVersionsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeLaunchTemplateVersionsRequest,
        _$DescribeLaunchTemplateVersionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeLaunchTemplateVersionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLaunchTemplateVersionsRequestBuilder();
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
          if (value != null) {
            result.versions.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'MinVersion':
          if (value != null) {
            result.minVersion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'MaxVersion':
          if (value != null) {
            result.maxVersion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'Filter':
          if (value != null) {
            result.filters.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'Filter',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Filter)],
              ),
            ) as _i4.BuiltList<_i3.Filter>));
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
    final payload = (object as DescribeLaunchTemplateVersionsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeLaunchTemplateVersionsRequestResponse',
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
    if (payload.versions != null) {
      result
        ..add(const _i1.XmlElementName('LaunchTemplateVersion'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.versions!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.minVersion != null) {
      result
        ..add(const _i1.XmlElementName('MinVersion'))
        ..add(serializers.serialize(
          payload.minVersion!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.maxVersion != null) {
      result
        ..add(const _i1.XmlElementName('MaxVersion'))
        ..add(serializers.serialize(
          payload.maxVersion!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        payload.maxResults,
        specifiedType: const FullType(int),
      ));
    if (payload.filters != null) {
      result
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.filters!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Filter)],
          ),
        ));
    }
    return result;
  }
}
