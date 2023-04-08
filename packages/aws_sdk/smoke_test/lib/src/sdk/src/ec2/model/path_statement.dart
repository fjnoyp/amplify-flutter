// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.path_statement; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/packet_header_statement.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/resource_statement.dart'
    as _i3;

part 'path_statement.g.dart';

/// Describes a path statement.
abstract class PathStatement
    with _i1.AWSEquatable<PathStatement>
    implements Built<PathStatement, PathStatementBuilder> {
  /// Describes a path statement.
  factory PathStatement({
    _i2.PacketHeaderStatement? packetHeaderStatement,
    _i3.ResourceStatement? resourceStatement,
  }) {
    return _$PathStatement._(
      packetHeaderStatement: packetHeaderStatement,
      resourceStatement: resourceStatement,
    );
  }

  /// Describes a path statement.
  factory PathStatement.build([void Function(PathStatementBuilder) updates]) =
      _$PathStatement;

  const PathStatement._();

  static const List<_i4.SmithySerializer> serializers = [
    PathStatementEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PathStatementBuilder b) {}

  /// The packet header statement.
  _i2.PacketHeaderStatement? get packetHeaderStatement;

  /// The resource statement.
  _i3.ResourceStatement? get resourceStatement;
  @override
  List<Object?> get props => [
        packetHeaderStatement,
        resourceStatement,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PathStatement');
    helper.add(
      'packetHeaderStatement',
      packetHeaderStatement,
    );
    helper.add(
      'resourceStatement',
      resourceStatement,
    );
    return helper.toString();
  }
}

class PathStatementEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<PathStatement> {
  const PathStatementEc2QuerySerializer() : super('PathStatement');

  @override
  Iterable<Type> get types => const [
        PathStatement,
        _$PathStatement,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PathStatement deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PathStatementBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'packetHeaderStatement':
          if (value != null) {
            result.packetHeaderStatement.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PacketHeaderStatement),
            ) as _i2.PacketHeaderStatement));
          }
          break;
        case 'resourceStatement':
          if (value != null) {
            result.resourceStatement.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ResourceStatement),
            ) as _i3.ResourceStatement));
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
    final payload = (object as PathStatement);
    final result = <Object?>[
      const _i4.XmlElementName(
        'PathStatementResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.packetHeaderStatement != null) {
      result
        ..add(const _i4.XmlElementName('PacketHeaderStatement'))
        ..add(serializers.serialize(
          payload.packetHeaderStatement!,
          specifiedType: const FullType(_i2.PacketHeaderStatement),
        ));
    }
    if (payload.resourceStatement != null) {
      result
        ..add(const _i4.XmlElementName('ResourceStatement'))
        ..add(serializers.serialize(
          payload.resourceStatement!,
          specifiedType: const FullType(_i3.ResourceStatement),
        ));
    }
    return result;
  }
}
