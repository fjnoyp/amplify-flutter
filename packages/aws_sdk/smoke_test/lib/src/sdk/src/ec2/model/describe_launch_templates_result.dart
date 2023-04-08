// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_launch_templates_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template.dart' as _i2;

part 'describe_launch_templates_result.g.dart';

abstract class DescribeLaunchTemplatesResult
    with
        _i1.AWSEquatable<DescribeLaunchTemplatesResult>
    implements
        Built<DescribeLaunchTemplatesResult,
            DescribeLaunchTemplatesResultBuilder> {
  factory DescribeLaunchTemplatesResult({
    List<_i2.LaunchTemplate>? launchTemplates,
    String? nextToken,
  }) {
    return _$DescribeLaunchTemplatesResult._(
      launchTemplates:
          launchTemplates == null ? null : _i3.BuiltList(launchTemplates),
      nextToken: nextToken,
    );
  }

  factory DescribeLaunchTemplatesResult.build(
          [void Function(DescribeLaunchTemplatesResultBuilder) updates]) =
      _$DescribeLaunchTemplatesResult;

  const DescribeLaunchTemplatesResult._();

  /// Constructs a [DescribeLaunchTemplatesResult] from a [payload] and [response].
  factory DescribeLaunchTemplatesResult.fromResponse(
    DescribeLaunchTemplatesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeLaunchTemplatesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeLaunchTemplatesResultBuilder b) {}

  /// Information about the launch templates.
  _i3.BuiltList<_i2.LaunchTemplate>? get launchTemplates;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        launchTemplates,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeLaunchTemplatesResult');
    helper.add(
      'launchTemplates',
      launchTemplates,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeLaunchTemplatesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeLaunchTemplatesResult> {
  const DescribeLaunchTemplatesResultEc2QuerySerializer()
      : super('DescribeLaunchTemplatesResult');

  @override
  Iterable<Type> get types => const [
        DescribeLaunchTemplatesResult,
        _$DescribeLaunchTemplatesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeLaunchTemplatesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLaunchTemplatesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'launchTemplates':
          if (value != null) {
            result.launchTemplates.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.LaunchTemplate)],
              ),
            ) as _i3.BuiltList<_i2.LaunchTemplate>));
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
    final payload = (object as DescribeLaunchTemplatesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeLaunchTemplatesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.launchTemplates != null) {
      result
        ..add(const _i4.XmlElementName('LaunchTemplates'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.launchTemplates!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.LaunchTemplate)],
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
