// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library ec2_query_v2.ec2_protocol.model.recursive_xml_shapes_output_nested1; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/recursive_xml_shapes_output_nested2.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'recursive_xml_shapes_output_nested1.g.dart';

abstract class RecursiveXmlShapesOutputNested1
    with
        _i1.AWSEquatable<RecursiveXmlShapesOutputNested1>
    implements
        Built<RecursiveXmlShapesOutputNested1,
            RecursiveXmlShapesOutputNested1Builder> {
  factory RecursiveXmlShapesOutputNested1({
    String? foo,
    _i2.RecursiveXmlShapesOutputNested2? nested,
  }) {
    return _$RecursiveXmlShapesOutputNested1._(
      foo: foo,
      nested: nested,
    );
  }

  factory RecursiveXmlShapesOutputNested1.build(
          [void Function(RecursiveXmlShapesOutputNested1Builder) updates]) =
      _$RecursiveXmlShapesOutputNested1;

  const RecursiveXmlShapesOutputNested1._();

  static const List<_i3.SmithySerializer> serializers = [
    RecursiveXmlShapesOutputNested1Ec2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RecursiveXmlShapesOutputNested1Builder b) {}
  String? get foo;
  _i2.RecursiveXmlShapesOutputNested2? get nested;
  @override
  List<Object?> get props => [
        foo,
        nested,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RecursiveXmlShapesOutputNested1');
    helper.add(
      'foo',
      foo,
    );
    helper.add(
      'nested',
      nested,
    );
    return helper.toString();
  }
}

class RecursiveXmlShapesOutputNested1Ec2QuerySerializer
    extends _i3.StructuredSmithySerializer<RecursiveXmlShapesOutputNested1> {
  const RecursiveXmlShapesOutputNested1Ec2QuerySerializer()
      : super('RecursiveXmlShapesOutputNested1');

  @override
  Iterable<Type> get types => const [
        RecursiveXmlShapesOutputNested1,
        _$RecursiveXmlShapesOutputNested1,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RecursiveXmlShapesOutputNested1 deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecursiveXmlShapesOutputNested1Builder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'foo':
          if (value != null) {
            result.foo = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.RecursiveXmlShapesOutputNested2),
            ) as _i2.RecursiveXmlShapesOutputNested2));
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
    final payload = (object as RecursiveXmlShapesOutputNested1);
    final result = <Object?>[
      const _i3.XmlElementName(
        'RecursiveXmlShapesOutputNested1Response',
        _i3.XmlNamespace('https://example.com/'),
      )
    ];
    if (payload.foo != null) {
      result
        ..add(const _i3.XmlElementName('Foo'))
        ..add(serializers.serialize(
          payload.foo!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.nested != null) {
      result
        ..add(const _i3.XmlElementName('Nested'))
        ..add(serializers.serialize(
          payload.nested!,
          specifiedType: const FullType(_i2.RecursiveXmlShapesOutputNested2),
        ));
    }
    return result;
  }
}
