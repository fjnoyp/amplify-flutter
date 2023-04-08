// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.through_resources_statement; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/resource_statement.dart'
    as _i2;

part 'through_resources_statement.g.dart';

/// Describes a through resource statement.
abstract class ThroughResourcesStatement
    with _i1.AWSEquatable<ThroughResourcesStatement>
    implements
        Built<ThroughResourcesStatement, ThroughResourcesStatementBuilder> {
  /// Describes a through resource statement.
  factory ThroughResourcesStatement(
      {_i2.ResourceStatement? resourceStatement}) {
    return _$ThroughResourcesStatement._(resourceStatement: resourceStatement);
  }

  /// Describes a through resource statement.
  factory ThroughResourcesStatement.build(
          [void Function(ThroughResourcesStatementBuilder) updates]) =
      _$ThroughResourcesStatement;

  const ThroughResourcesStatement._();

  static const List<_i3.SmithySerializer> serializers = [
    ThroughResourcesStatementEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ThroughResourcesStatementBuilder b) {}

  /// The resource statement.
  _i2.ResourceStatement? get resourceStatement;
  @override
  List<Object?> get props => [resourceStatement];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ThroughResourcesStatement');
    helper.add(
      'resourceStatement',
      resourceStatement,
    );
    return helper.toString();
  }
}

class ThroughResourcesStatementEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ThroughResourcesStatement> {
  const ThroughResourcesStatementEc2QuerySerializer()
      : super('ThroughResourcesStatement');

  @override
  Iterable<Type> get types => const [
        ThroughResourcesStatement,
        _$ThroughResourcesStatement,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ThroughResourcesStatement deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ThroughResourcesStatementBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'resourceStatement':
          if (value != null) {
            result.resourceStatement.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ResourceStatement),
            ) as _i2.ResourceStatement));
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
    final payload = (object as ThroughResourcesStatement);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ThroughResourcesStatementResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.resourceStatement != null) {
      result
        ..add(const _i3.XmlElementName('ResourceStatement'))
        ..add(serializers.serialize(
          payload.resourceStatement!,
          specifiedType: const FullType(_i2.ResourceStatement),
        ));
    }
    return result;
  }
}
