// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_launch_template_versions_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_version.dart'
    as _i2;

part 'describe_launch_template_versions_result.g.dart';

abstract class DescribeLaunchTemplateVersionsResult
    with
        _i1.AWSEquatable<DescribeLaunchTemplateVersionsResult>
    implements
        Built<DescribeLaunchTemplateVersionsResult,
            DescribeLaunchTemplateVersionsResultBuilder> {
  factory DescribeLaunchTemplateVersionsResult({
    List<_i2.LaunchTemplateVersion>? launchTemplateVersions,
    String? nextToken,
  }) {
    return _$DescribeLaunchTemplateVersionsResult._(
      launchTemplateVersions: launchTemplateVersions == null
          ? null
          : _i3.BuiltList(launchTemplateVersions),
      nextToken: nextToken,
    );
  }

  factory DescribeLaunchTemplateVersionsResult.build(
      [void Function(DescribeLaunchTemplateVersionsResultBuilder)
          updates]) = _$DescribeLaunchTemplateVersionsResult;

  const DescribeLaunchTemplateVersionsResult._();

  /// Constructs a [DescribeLaunchTemplateVersionsResult] from a [payload] and [response].
  factory DescribeLaunchTemplateVersionsResult.fromResponse(
    DescribeLaunchTemplateVersionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeLaunchTemplateVersionsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeLaunchTemplateVersionsResultBuilder b) {}

  /// Information about the launch template versions.
  _i3.BuiltList<_i2.LaunchTemplateVersion>? get launchTemplateVersions;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        launchTemplateVersions,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeLaunchTemplateVersionsResult');
    helper.add(
      'launchTemplateVersions',
      launchTemplateVersions,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeLaunchTemplateVersionsResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeLaunchTemplateVersionsResult> {
  const DescribeLaunchTemplateVersionsResultEc2QuerySerializer()
      : super('DescribeLaunchTemplateVersionsResult');

  @override
  Iterable<Type> get types => const [
        DescribeLaunchTemplateVersionsResult,
        _$DescribeLaunchTemplateVersionsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeLaunchTemplateVersionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLaunchTemplateVersionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'launchTemplateVersionSet':
          if (value != null) {
            result.launchTemplateVersions
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.LaunchTemplateVersion)],
              ),
            ) as _i3.BuiltList<_i2.LaunchTemplateVersion>));
          }
          break;
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
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
    final payload = (object as DescribeLaunchTemplateVersionsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeLaunchTemplateVersionsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.launchTemplateVersions != null) {
      result
        ..add(const _i4.XmlElementName('LaunchTemplateVersionSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.launchTemplateVersions!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.LaunchTemplateVersion)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
