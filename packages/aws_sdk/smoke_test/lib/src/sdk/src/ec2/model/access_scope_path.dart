// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.access_scope_path; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/path_statement.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/through_resources_statement.dart'
    as _i3;

part 'access_scope_path.g.dart';

/// Describes a path.
abstract class AccessScopePath
    with _i1.AWSEquatable<AccessScopePath>
    implements Built<AccessScopePath, AccessScopePathBuilder> {
  /// Describes a path.
  factory AccessScopePath({
    _i2.PathStatement? source,
    _i2.PathStatement? destination,
    List<_i3.ThroughResourcesStatement>? throughResources,
  }) {
    return _$AccessScopePath._(
      source: source,
      destination: destination,
      throughResources:
          throughResources == null ? null : _i4.BuiltList(throughResources),
    );
  }

  /// Describes a path.
  factory AccessScopePath.build(
      [void Function(AccessScopePathBuilder) updates]) = _$AccessScopePath;

  const AccessScopePath._();

  static const List<_i5.SmithySerializer> serializers = [
    AccessScopePathEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AccessScopePathBuilder b) {}

  /// The source.
  _i2.PathStatement? get source;

  /// The destination.
  _i2.PathStatement? get destination;

  /// The through resources.
  _i4.BuiltList<_i3.ThroughResourcesStatement>? get throughResources;
  @override
  List<Object?> get props => [
        source,
        destination,
        throughResources,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AccessScopePath');
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

class AccessScopePathEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<AccessScopePath> {
  const AccessScopePathEc2QuerySerializer() : super('AccessScopePath');

  @override
  Iterable<Type> get types => const [
        AccessScopePath,
        _$AccessScopePath,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AccessScopePath deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessScopePathBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'source':
          if (value != null) {
            result.source.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PathStatement),
            ) as _i2.PathStatement));
          }
          break;
        case 'destination':
          if (value != null) {
            result.destination.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PathStatement),
            ) as _i2.PathStatement));
          }
          break;
        case 'throughResourceSet':
          if (value != null) {
            result.throughResources.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.ThroughResourcesStatement)],
              ),
            ) as _i4.BuiltList<_i3.ThroughResourcesStatement>));
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
    final payload = (object as AccessScopePath);
    final result = <Object?>[
      const _i5.XmlElementName(
        'AccessScopePathResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.source != null) {
      result
        ..add(const _i5.XmlElementName('Source'))
        ..add(serializers.serialize(
          payload.source!,
          specifiedType: const FullType(_i2.PathStatement),
        ));
    }
    if (payload.destination != null) {
      result
        ..add(const _i5.XmlElementName('Destination'))
        ..add(serializers.serialize(
          payload.destination!,
          specifiedType: const FullType(_i2.PathStatement),
        ));
    }
    if (payload.throughResources != null) {
      result
        ..add(const _i5.XmlElementName('ThroughResourceSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.throughResources!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.ThroughResourcesStatement)],
          ),
        ));
    }
    return result;
  }
}
