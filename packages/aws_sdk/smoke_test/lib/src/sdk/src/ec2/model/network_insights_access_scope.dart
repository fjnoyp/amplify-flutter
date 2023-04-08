// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.network_insights_access_scope; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i2;

part 'network_insights_access_scope.g.dart';

/// Describes a Network Access Scope.
abstract class NetworkInsightsAccessScope
    with _i1.AWSEquatable<NetworkInsightsAccessScope>
    implements
        Built<NetworkInsightsAccessScope, NetworkInsightsAccessScopeBuilder> {
  /// Describes a Network Access Scope.
  factory NetworkInsightsAccessScope({
    String? networkInsightsAccessScopeId,
    String? networkInsightsAccessScopeArn,
    DateTime? createdDate,
    DateTime? updatedDate,
    List<_i2.Tag>? tags,
  }) {
    return _$NetworkInsightsAccessScope._(
      networkInsightsAccessScopeId: networkInsightsAccessScopeId,
      networkInsightsAccessScopeArn: networkInsightsAccessScopeArn,
      createdDate: createdDate,
      updatedDate: updatedDate,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  /// Describes a Network Access Scope.
  factory NetworkInsightsAccessScope.build(
          [void Function(NetworkInsightsAccessScopeBuilder) updates]) =
      _$NetworkInsightsAccessScope;

  const NetworkInsightsAccessScope._();

  static const List<_i4.SmithySerializer> serializers = [
    NetworkInsightsAccessScopeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInsightsAccessScopeBuilder b) {}

  /// The ID of the Network Access Scope.
  String? get networkInsightsAccessScopeId;

  /// The Amazon Resource Name (ARN) of the Network Access Scope.
  String? get networkInsightsAccessScopeArn;

  /// The creation date.
  DateTime? get createdDate;

  /// The last updated date.
  DateTime? get updatedDate;

  /// The tags.
  _i3.BuiltList<_i2.Tag>? get tags;
  @override
  List<Object?> get props => [
        networkInsightsAccessScopeId,
        networkInsightsAccessScopeArn,
        createdDate,
        updatedDate,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkInsightsAccessScope');
    helper.add(
      'networkInsightsAccessScopeId',
      networkInsightsAccessScopeId,
    );
    helper.add(
      'networkInsightsAccessScopeArn',
      networkInsightsAccessScopeArn,
    );
    helper.add(
      'createdDate',
      createdDate,
    );
    helper.add(
      'updatedDate',
      updatedDate,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class NetworkInsightsAccessScopeEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<NetworkInsightsAccessScope> {
  const NetworkInsightsAccessScopeEc2QuerySerializer()
      : super('NetworkInsightsAccessScope');

  @override
  Iterable<Type> get types => const [
        NetworkInsightsAccessScope,
        _$NetworkInsightsAccessScope,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInsightsAccessScope deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInsightsAccessScopeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkInsightsAccessScopeId':
          if (value != null) {
            result.networkInsightsAccessScopeId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'networkInsightsAccessScopeArn':
          if (value != null) {
            result.networkInsightsAccessScopeArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'createdDate':
          if (value != null) {
            result.createdDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'updatedDate':
          if (value != null) {
            result.updatedDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Tag)],
              ),
            ) as _i3.BuiltList<_i2.Tag>));
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
    final payload = (object as NetworkInsightsAccessScope);
    final result = <Object?>[
      const _i4.XmlElementName(
        'NetworkInsightsAccessScopeResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInsightsAccessScopeId != null) {
      result
        ..add(const _i4.XmlElementName('NetworkInsightsAccessScopeId'))
        ..add(serializers.serialize(
          payload.networkInsightsAccessScopeId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.networkInsightsAccessScopeArn != null) {
      result
        ..add(const _i4.XmlElementName('NetworkInsightsAccessScopeArn'))
        ..add(serializers.serialize(
          payload.networkInsightsAccessScopeArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.createdDate != null) {
      result
        ..add(const _i4.XmlElementName('CreatedDate'))
        ..add(serializers.serialize(
          payload.createdDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.updatedDate != null) {
      result
        ..add(const _i4.XmlElementName('UpdatedDate'))
        ..add(serializers.serialize(
          payload.updatedDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i4.XmlElementName('TagSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Tag)],
          ),
        ));
    }
    return result;
  }
}
