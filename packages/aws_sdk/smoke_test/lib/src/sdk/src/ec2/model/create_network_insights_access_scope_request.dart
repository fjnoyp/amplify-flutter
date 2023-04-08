// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_network_insights_access_scope_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/access_scope_path_request.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i4;

part 'create_network_insights_access_scope_request.g.dart';

abstract class CreateNetworkInsightsAccessScopeRequest
    with
        _i1.HttpInput<CreateNetworkInsightsAccessScopeRequest>,
        _i2.AWSEquatable<CreateNetworkInsightsAccessScopeRequest>
    implements
        Built<CreateNetworkInsightsAccessScopeRequest,
            CreateNetworkInsightsAccessScopeRequestBuilder> {
  factory CreateNetworkInsightsAccessScopeRequest({
    List<_i3.AccessScopePathRequest>? matchPaths,
    List<_i3.AccessScopePathRequest>? excludePaths,
    String? clientToken,
    List<_i4.TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientToken ??= _i2.uuid(secure: true);
    }
    dryRun ??= false;
    return _$CreateNetworkInsightsAccessScopeRequest._(
      matchPaths: matchPaths == null ? null : _i5.BuiltList(matchPaths),
      excludePaths: excludePaths == null ? null : _i5.BuiltList(excludePaths),
      clientToken: clientToken,
      tagSpecifications:
          tagSpecifications == null ? null : _i5.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CreateNetworkInsightsAccessScopeRequest.build(
      [void Function(CreateNetworkInsightsAccessScopeRequestBuilder)
          updates]) = _$CreateNetworkInsightsAccessScopeRequest;

  const CreateNetworkInsightsAccessScopeRequest._();

  factory CreateNetworkInsightsAccessScopeRequest.fromRequest(
    CreateNetworkInsightsAccessScopeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateNetworkInsightsAccessScopeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateNetworkInsightsAccessScopeRequestBuilder b) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientToken = _i2.uuid(secure: true);
    }
    b.dryRun = false;
  }

  /// The paths to match.
  _i5.BuiltList<_i3.AccessScopePathRequest>? get matchPaths;

  /// The paths to exclude.
  _i5.BuiltList<_i3.AccessScopePathRequest>? get excludePaths;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String get clientToken;

  /// The tags to apply.
  _i5.BuiltList<_i4.TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateNetworkInsightsAccessScopeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        matchPaths,
        excludePaths,
        clientToken,
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateNetworkInsightsAccessScopeRequest');
    helper.add(
      'matchPaths',
      matchPaths,
    );
    helper.add(
      'excludePaths',
      excludePaths,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class CreateNetworkInsightsAccessScopeRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CreateNetworkInsightsAccessScopeRequest> {
  const CreateNetworkInsightsAccessScopeRequestEc2QuerySerializer()
      : super('CreateNetworkInsightsAccessScopeRequest');

  @override
  Iterable<Type> get types => const [
        CreateNetworkInsightsAccessScopeRequest,
        _$CreateNetworkInsightsAccessScopeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNetworkInsightsAccessScopeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNetworkInsightsAccessScopeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'MatchPath':
          if (value != null) {
            result.matchPaths.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i3.AccessScopePathRequest)],
              ),
            ) as _i5.BuiltList<_i3.AccessScopePathRequest>));
          }
          break;
        case 'ExcludePath':
          if (value != null) {
            result.excludePaths.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i3.AccessScopePathRequest)],
              ),
            ) as _i5.BuiltList<_i3.AccessScopePathRequest>));
          }
          break;
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as CreateNetworkInsightsAccessScopeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateNetworkInsightsAccessScopeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.matchPaths != null) {
      result
        ..add(const _i1.XmlElementName('MatchPath'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.matchPaths!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.AccessScopePathRequest)],
          ),
        ));
    }
    if (payload.excludePaths != null) {
      result
        ..add(const _i1.XmlElementName('ExcludePath'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.excludePaths!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.AccessScopePathRequest)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('ClientToken'))
      ..add(serializers.serialize(
        payload.clientToken,
        specifiedType: const FullType(String),
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
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
