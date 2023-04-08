// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.id_format; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'id_format.g.dart';

/// Describes the ID format for a resource.
abstract class IdFormat
    with _i1.AWSEquatable<IdFormat>
    implements Built<IdFormat, IdFormatBuilder> {
  /// Describes the ID format for a resource.
  factory IdFormat({
    DateTime? deadline,
    String? resource,
    bool? useLongIds,
  }) {
    useLongIds ??= false;
    return _$IdFormat._(
      deadline: deadline,
      resource: resource,
      useLongIds: useLongIds,
    );
  }

  /// Describes the ID format for a resource.
  factory IdFormat.build([void Function(IdFormatBuilder) updates]) = _$IdFormat;

  const IdFormat._();

  static const List<_i2.SmithySerializer> serializers = [
    IdFormatEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IdFormatBuilder b) {
    b.useLongIds = false;
  }

  /// The date in UTC at which you are permanently switched over to using longer IDs. If a deadline is not yet available for this resource type, this field is not returned.
  DateTime? get deadline;

  /// The type of resource.
  String? get resource;

  /// Indicates whether longer IDs (17-character IDs) are enabled for the resource.
  bool get useLongIds;
  @override
  List<Object?> get props => [
        deadline,
        resource,
        useLongIds,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IdFormat');
    helper.add(
      'deadline',
      deadline,
    );
    helper.add(
      'resource',
      resource,
    );
    helper.add(
      'useLongIds',
      useLongIds,
    );
    return helper.toString();
  }
}

class IdFormatEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<IdFormat> {
  const IdFormatEc2QuerySerializer() : super('IdFormat');

  @override
  Iterable<Type> get types => const [
        IdFormat,
        _$IdFormat,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IdFormat deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IdFormatBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'deadline':
          if (value != null) {
            result.deadline = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'resource':
          if (value != null) {
            result.resource = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'useLongIds':
          result.useLongIds = (serializers.deserialize(
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
    final payload = (object as IdFormat);
    final result = <Object?>[
      const _i2.XmlElementName(
        'IdFormatResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.deadline != null) {
      result
        ..add(const _i2.XmlElementName('Deadline'))
        ..add(serializers.serialize(
          payload.deadline!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.resource != null) {
      result
        ..add(const _i2.XmlElementName('Resource'))
        ..add(serializers.serialize(
          payload.resource!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i2.XmlElementName('UseLongIds'))
      ..add(serializers.serialize(
        payload.useLongIds,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
