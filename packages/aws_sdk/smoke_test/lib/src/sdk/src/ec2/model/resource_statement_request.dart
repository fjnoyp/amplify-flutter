// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.resource_statement_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'resource_statement_request.g.dart';

/// Describes a resource statement.
abstract class ResourceStatementRequest
    with _i1.AWSEquatable<ResourceStatementRequest>
    implements
        Built<ResourceStatementRequest, ResourceStatementRequestBuilder> {
  /// Describes a resource statement.
  factory ResourceStatementRequest({
    List<String>? resources,
    List<String>? resourceTypes,
  }) {
    return _$ResourceStatementRequest._(
      resources: resources == null ? null : _i2.BuiltList(resources),
      resourceTypes:
          resourceTypes == null ? null : _i2.BuiltList(resourceTypes),
    );
  }

  /// Describes a resource statement.
  factory ResourceStatementRequest.build(
          [void Function(ResourceStatementRequestBuilder) updates]) =
      _$ResourceStatementRequest;

  const ResourceStatementRequest._();

  static const List<_i3.SmithySerializer> serializers = [
    ResourceStatementRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceStatementRequestBuilder b) {}

  /// The resources.
  _i2.BuiltList<String>? get resources;

  /// The resource types.
  _i2.BuiltList<String>? get resourceTypes;
  @override
  List<Object?> get props => [
        resources,
        resourceTypes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceStatementRequest');
    helper.add(
      'resources',
      resources,
    );
    helper.add(
      'resourceTypes',
      resourceTypes,
    );
    return helper.toString();
  }
}

class ResourceStatementRequestEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ResourceStatementRequest> {
  const ResourceStatementRequestEc2QuerySerializer()
      : super('ResourceStatementRequest');

  @override
  Iterable<Type> get types => const [
        ResourceStatementRequest,
        _$ResourceStatementRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ResourceStatementRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceStatementRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Resource':
          if (value != null) {
            result.resources.replace((const _i3.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i3.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(String)],
              ),
            ) as _i2.BuiltList<String>));
          }
          break;
        case 'ResourceType':
          if (value != null) {
            result.resourceTypes.replace((const _i3.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i3.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(String)],
              ),
            ) as _i2.BuiltList<String>));
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
    final payload = (object as ResourceStatementRequest);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ResourceStatementRequestResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.resources != null) {
      result
        ..add(const _i3.XmlElementName('Resource'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.resources!,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.resourceTypes != null) {
      result
        ..add(const _i3.XmlElementName('ResourceType'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.resourceTypes!,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
