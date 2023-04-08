// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.context_entry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/context_key_type_enum.dart'
    as _i2;

part 'context_entry.g.dart';

/// Contains information about a condition context key. It includes the name of the key and specifies the value (or values, if the context key supports multiple values) to use in the simulation. This information is used when evaluating the `Condition` elements of the input policies.
///
/// This data type is used as an input parameter to SimulateCustomPolicy and SimulatePrincipalPolicy.
abstract class ContextEntry
    with _i1.AWSEquatable<ContextEntry>
    implements Built<ContextEntry, ContextEntryBuilder> {
  /// Contains information about a condition context key. It includes the name of the key and specifies the value (or values, if the context key supports multiple values) to use in the simulation. This information is used when evaluating the `Condition` elements of the input policies.
  ///
  /// This data type is used as an input parameter to SimulateCustomPolicy and SimulatePrincipalPolicy.
  factory ContextEntry({
    String? contextKeyName,
    List<String>? contextKeyValues,
    _i2.ContextKeyTypeEnum? contextKeyType,
  }) {
    return _$ContextEntry._(
      contextKeyName: contextKeyName,
      contextKeyValues:
          contextKeyValues == null ? null : _i3.BuiltList(contextKeyValues),
      contextKeyType: contextKeyType,
    );
  }

  /// Contains information about a condition context key. It includes the name of the key and specifies the value (or values, if the context key supports multiple values) to use in the simulation. This information is used when evaluating the `Condition` elements of the input policies.
  ///
  /// This data type is used as an input parameter to SimulateCustomPolicy and SimulatePrincipalPolicy.
  factory ContextEntry.build([void Function(ContextEntryBuilder) updates]) =
      _$ContextEntry;

  const ContextEntry._();

  static const List<_i4.SmithySerializer> serializers = [
    ContextEntryAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ContextEntryBuilder b) {}

  /// The full name of a condition context key, including the service prefix. For example, `aws:SourceIp` or `s3:VersionId`.
  String? get contextKeyName;

  /// The value (or values, if the condition context key supports multiple values) to provide to the simulation when the key is referenced by a `Condition` element in an input policy.
  _i3.BuiltList<String>? get contextKeyValues;

  /// The data type of the value (or values) specified in the `ContextKeyValues` parameter.
  _i2.ContextKeyTypeEnum? get contextKeyType;
  @override
  List<Object?> get props => [
        contextKeyName,
        contextKeyValues,
        contextKeyType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ContextEntry');
    helper.add(
      'contextKeyName',
      contextKeyName,
    );
    helper.add(
      'contextKeyValues',
      contextKeyValues,
    );
    helper.add(
      'contextKeyType',
      contextKeyType,
    );
    return helper.toString();
  }
}

class ContextEntryAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<ContextEntry> {
  const ContextEntryAwsQuerySerializer() : super('ContextEntry');

  @override
  Iterable<Type> get types => const [
        ContextEntry,
        _$ContextEntry,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ContextEntry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContextEntryBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ContextKeyName':
          if (value != null) {
            result.contextKeyName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ContextKeyValues':
          if (value != null) {
            result.contextKeyValues.replace((const _i4.XmlBuiltListSerializer(
                    indexer: _i4.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
          }
          break;
        case 'ContextKeyType':
          if (value != null) {
            result.contextKeyType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ContextKeyTypeEnum),
            ) as _i2.ContextKeyTypeEnum);
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
    final payload = (object as ContextEntry);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ContextEntryResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.contextKeyName != null) {
      result
        ..add(const _i4.XmlElementName('ContextKeyName'))
        ..add(serializers.serialize(
          payload.contextKeyName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.contextKeyValues != null) {
      result
        ..add(const _i4.XmlElementName('ContextKeyValues'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.contextKeyValues!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.contextKeyType != null) {
      result
        ..add(const _i4.XmlElementName('ContextKeyType'))
        ..add(serializers.serialize(
          payload.contextKeyType!,
          specifiedType: const FullType.nullable(_i2.ContextKeyTypeEnum),
        ));
    }
    return result;
  }
}
