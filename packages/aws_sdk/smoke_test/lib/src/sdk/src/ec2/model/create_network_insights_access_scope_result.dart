// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_network_insights_access_scope_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_access_scope.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_access_scope_content.dart'
    as _i3;

part 'create_network_insights_access_scope_result.g.dart';

abstract class CreateNetworkInsightsAccessScopeResult
    with
        _i1.AWSEquatable<CreateNetworkInsightsAccessScopeResult>
    implements
        Built<CreateNetworkInsightsAccessScopeResult,
            CreateNetworkInsightsAccessScopeResultBuilder> {
  factory CreateNetworkInsightsAccessScopeResult({
    _i2.NetworkInsightsAccessScope? networkInsightsAccessScope,
    _i3.NetworkInsightsAccessScopeContent? networkInsightsAccessScopeContent,
  }) {
    return _$CreateNetworkInsightsAccessScopeResult._(
      networkInsightsAccessScope: networkInsightsAccessScope,
      networkInsightsAccessScopeContent: networkInsightsAccessScopeContent,
    );
  }

  factory CreateNetworkInsightsAccessScopeResult.build(
      [void Function(CreateNetworkInsightsAccessScopeResultBuilder)
          updates]) = _$CreateNetworkInsightsAccessScopeResult;

  const CreateNetworkInsightsAccessScopeResult._();

  /// Constructs a [CreateNetworkInsightsAccessScopeResult] from a [payload] and [response].
  factory CreateNetworkInsightsAccessScopeResult.fromResponse(
    CreateNetworkInsightsAccessScopeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    CreateNetworkInsightsAccessScopeResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateNetworkInsightsAccessScopeResultBuilder b) {}

  /// The Network Access Scope.
  _i2.NetworkInsightsAccessScope? get networkInsightsAccessScope;

  /// The Network Access Scope content.
  _i3.NetworkInsightsAccessScopeContent? get networkInsightsAccessScopeContent;
  @override
  List<Object?> get props => [
        networkInsightsAccessScope,
        networkInsightsAccessScopeContent,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateNetworkInsightsAccessScopeResult');
    helper.add(
      'networkInsightsAccessScope',
      networkInsightsAccessScope,
    );
    helper.add(
      'networkInsightsAccessScopeContent',
      networkInsightsAccessScopeContent,
    );
    return helper.toString();
  }
}

class CreateNetworkInsightsAccessScopeResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<CreateNetworkInsightsAccessScopeResult> {
  const CreateNetworkInsightsAccessScopeResultEc2QuerySerializer()
      : super('CreateNetworkInsightsAccessScopeResult');

  @override
  Iterable<Type> get types => const [
        CreateNetworkInsightsAccessScopeResult,
        _$CreateNetworkInsightsAccessScopeResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNetworkInsightsAccessScopeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNetworkInsightsAccessScopeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkInsightsAccessScope':
          if (value != null) {
            result.networkInsightsAccessScope.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.NetworkInsightsAccessScope),
            ) as _i2.NetworkInsightsAccessScope));
          }
          break;
        case 'networkInsightsAccessScopeContent':
          if (value != null) {
            result.networkInsightsAccessScopeContent
                .replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.NetworkInsightsAccessScopeContent),
            ) as _i3.NetworkInsightsAccessScopeContent));
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
    final payload = (object as CreateNetworkInsightsAccessScopeResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'CreateNetworkInsightsAccessScopeResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInsightsAccessScope != null) {
      result
        ..add(const _i4.XmlElementName('NetworkInsightsAccessScope'))
        ..add(serializers.serialize(
          payload.networkInsightsAccessScope!,
          specifiedType: const FullType(_i2.NetworkInsightsAccessScope),
        ));
    }
    if (payload.networkInsightsAccessScopeContent != null) {
      result
        ..add(const _i4.XmlElementName('NetworkInsightsAccessScopeContent'))
        ..add(serializers.serialize(
          payload.networkInsightsAccessScopeContent!,
          specifiedType: const FullType(_i3.NetworkInsightsAccessScopeContent),
        ));
    }
    return result;
  }
}
