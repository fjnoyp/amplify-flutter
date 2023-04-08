// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.principal_id_format; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/id_format.dart' as _i2;

part 'principal_id_format.g.dart';

/// PrincipalIdFormat description
abstract class PrincipalIdFormat
    with _i1.AWSEquatable<PrincipalIdFormat>
    implements Built<PrincipalIdFormat, PrincipalIdFormatBuilder> {
  /// PrincipalIdFormat description
  factory PrincipalIdFormat({
    String? arn,
    List<_i2.IdFormat>? statuses,
  }) {
    return _$PrincipalIdFormat._(
      arn: arn,
      statuses: statuses == null ? null : _i3.BuiltList(statuses),
    );
  }

  /// PrincipalIdFormat description
  factory PrincipalIdFormat.build(
      [void Function(PrincipalIdFormatBuilder) updates]) = _$PrincipalIdFormat;

  const PrincipalIdFormat._();

  static const List<_i4.SmithySerializer> serializers = [
    PrincipalIdFormatEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PrincipalIdFormatBuilder b) {}

  /// PrincipalIdFormatARN description
  String? get arn;

  /// PrincipalIdFormatStatuses description
  _i3.BuiltList<_i2.IdFormat>? get statuses;
  @override
  List<Object?> get props => [
        arn,
        statuses,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PrincipalIdFormat');
    helper.add(
      'arn',
      arn,
    );
    helper.add(
      'statuses',
      statuses,
    );
    return helper.toString();
  }
}

class PrincipalIdFormatEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<PrincipalIdFormat> {
  const PrincipalIdFormatEc2QuerySerializer() : super('PrincipalIdFormat');

  @override
  Iterable<Type> get types => const [
        PrincipalIdFormat,
        _$PrincipalIdFormat,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PrincipalIdFormat deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrincipalIdFormatBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'arn':
          if (value != null) {
            result.arn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'statusSet':
          if (value != null) {
            result.statuses.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.IdFormat)],
              ),
            ) as _i3.BuiltList<_i2.IdFormat>));
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
    final payload = (object as PrincipalIdFormat);
    final result = <Object?>[
      const _i4.XmlElementName(
        'PrincipalIdFormatResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.arn != null) {
      result
        ..add(const _i4.XmlElementName('Arn'))
        ..add(serializers.serialize(
          payload.arn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.statuses != null) {
      result
        ..add(const _i4.XmlElementName('StatusSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.statuses!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.IdFormat)],
          ),
        ));
    }
    return result;
  }
}
