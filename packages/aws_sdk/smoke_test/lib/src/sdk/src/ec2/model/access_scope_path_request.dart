// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.access_scope_path_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/path_statement_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/through_resources_statement_request.dart'
    as _i3;

part 'access_scope_path_request.g.dart';

/// Describes a path.
abstract class AccessScopePathRequest
    with _i1.AWSEquatable<AccessScopePathRequest>
    implements Built<AccessScopePathRequest, AccessScopePathRequestBuilder> {
  /// Describes a path.
  factory AccessScopePathRequest({
    _i2.PathStatementRequest? source,
    _i2.PathStatementRequest? destination,
    List<_i3.ThroughResourcesStatementRequest>? throughResources,
  }) {
    return _$AccessScopePathRequest._(
      source: source,
      destination: destination,
      throughResources:
          throughResources == null ? null : _i4.BuiltList(throughResources),
    );
  }

  /// Describes a path.
  factory AccessScopePathRequest.build(
          [void Function(AccessScopePathRequestBuilder) updates]) =
      _$AccessScopePathRequest;

  const AccessScopePathRequest._();

  static const List<_i5.SmithySerializer> serializers = [
    AccessScopePathRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AccessScopePathRequestBuilder b) {}

  /// The source.
  _i2.PathStatementRequest? get source;

  /// The destination.
  _i2.PathStatementRequest? get destination;

  /// The through resources.
  _i4.BuiltList<_i3.ThroughResourcesStatementRequest>? get throughResources;
  @override
  List<Object?> get props => [
        source,
        destination,
        throughResources,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AccessScopePathRequest');
    helper.add(
      'source',
      source,
    );
    helper.add(
      'destination',
      destination,
    );
    helper.add(
      'throughResources',
      throughResources,
    );
    return helper.toString();
  }
}

class AccessScopePathRequestEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<AccessScopePathRequest> {
  const AccessScopePathRequestEc2QuerySerializer()
      : super('AccessScopePathRequest');

  @override
  Iterable<Type> get types => const [
        AccessScopePathRequest,
        _$AccessScopePathRequest,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AccessScopePathRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessScopePathRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Source':
          if (value != null) {
            result.source.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PathStatementRequest),
            ) as _i2.PathStatementRequest));
          }
          break;
        case 'Destination':
          if (value != null) {
            result.destination.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PathStatementRequest),
            ) as _i2.PathStatementRequest));
          }
          break;
        case 'ThroughResource':
          if (value != null) {
            result.throughResources.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.ThroughResourcesStatementRequest)],
              ),
            ) as _i4.BuiltList<_i3.ThroughResourcesStatementRequest>));
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
    final payload = (object as AccessScopePathRequest);
    final result = <Object?>[
      const _i5.XmlElementName(
        'AccessScopePathRequestResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.source != null) {
      result
        ..add(const _i5.XmlElementName('Source'))
        ..add(serializers.serialize(
          payload.source!,
          specifiedType: const FullType(_i2.PathStatementRequest),
        ));
    }
    if (payload.destination != null) {
      result
        ..add(const _i5.XmlElementName('Destination'))
        ..add(serializers.serialize(
          payload.destination!,
          specifiedType: const FullType(_i2.PathStatementRequest),
        ));
    }
    if (payload.throughResources != null) {
      result
        ..add(const _i5.XmlElementName('ThroughResource'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.throughResources!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.ThroughResourcesStatementRequest)],
          ),
        ));
    }
    return result;
  }
}
