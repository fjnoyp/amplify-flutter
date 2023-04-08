// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library ec2_query_v2.ec2_protocol.model.simple_input_params_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i3;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/foo_enum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'simple_input_params_input.g.dart';

abstract class SimpleInputParamsInput
    with
        _i1.HttpInput<SimpleInputParamsInput>,
        _i2.AWSEquatable<SimpleInputParamsInput>
    implements Built<SimpleInputParamsInput, SimpleInputParamsInputBuilder> {
  factory SimpleInputParamsInput({
    String? foo,
    String? bar,
    bool? baz,
    int? bam,
    double? floatValue,
    double? boo,
    _i3.Uint8List? qux,
    _i4.FooEnum? fooEnum,
    String? hasQueryName,
    String? hasQueryAndXmlName,
    String? usesXmlName,
  }) {
    return _$SimpleInputParamsInput._(
      foo: foo,
      bar: bar,
      baz: baz,
      bam: bam,
      floatValue: floatValue,
      boo: boo,
      qux: qux,
      fooEnum: fooEnum,
      hasQueryName: hasQueryName,
      hasQueryAndXmlName: hasQueryAndXmlName,
      usesXmlName: usesXmlName,
    );
  }

  factory SimpleInputParamsInput.build(
          [void Function(SimpleInputParamsInputBuilder) updates]) =
      _$SimpleInputParamsInput;

  const SimpleInputParamsInput._();

  factory SimpleInputParamsInput.fromRequest(
    SimpleInputParamsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    SimpleInputParamsInputEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SimpleInputParamsInputBuilder b) {}
  String? get foo;
  String? get bar;
  bool? get baz;
  int? get bam;
  double? get floatValue;
  double? get boo;
  _i3.Uint8List? get qux;
  _i4.FooEnum? get fooEnum;
  String? get hasQueryName;
  String? get hasQueryAndXmlName;
  String? get usesXmlName;
  @override
  SimpleInputParamsInput getPayload() => this;
  @override
  List<Object?> get props => [
        foo,
        bar,
        baz,
        bam,
        floatValue,
        boo,
        qux,
        fooEnum,
        hasQueryName,
        hasQueryAndXmlName,
        usesXmlName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SimpleInputParamsInput');
    helper.add(
      'foo',
      foo,
    );
    helper.add(
      'bar',
      bar,
    );
    helper.add(
      'baz',
      baz,
    );
    helper.add(
      'bam',
      bam,
    );
    helper.add(
      'floatValue',
      floatValue,
    );
    helper.add(
      'boo',
      boo,
    );
    helper.add(
      'qux',
      qux,
    );
    helper.add(
      'fooEnum',
      fooEnum,
    );
    helper.add(
      'hasQueryName',
      hasQueryName,
    );
    helper.add(
      'hasQueryAndXmlName',
      hasQueryAndXmlName,
    );
    helper.add(
      'usesXmlName',
      usesXmlName,
    );
    return helper.toString();
  }
}

class SimpleInputParamsInputEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<SimpleInputParamsInput> {
  const SimpleInputParamsInputEc2QuerySerializer()
      : super('SimpleInputParamsInput');

  @override
  Iterable<Type> get types => const [
        SimpleInputParamsInput,
        _$SimpleInputParamsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SimpleInputParamsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimpleInputParamsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Foo':
          if (value != null) {
            result.foo = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Bar':
          if (value != null) {
            result.bar = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Baz':
          if (value != null) {
            result.baz = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'Bam':
          if (value != null) {
            result.bam = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'FloatValue':
          if (value != null) {
            result.floatValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
        case 'Boo':
          if (value != null) {
            result.boo = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
        case 'Qux':
          if (value != null) {
            result.qux = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Uint8List),
            ) as _i3.Uint8List);
          }
          break;
        case 'FooEnum':
          if (value != null) {
            result.fooEnum = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.FooEnum),
            ) as _i4.FooEnum);
          }
          break;
        case 'HasQueryName':
          if (value != null) {
            result.hasQueryName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'IgnoreMe':
          if (value != null) {
            result.hasQueryAndXmlName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'c':
          if (value != null) {
            result.usesXmlName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as SimpleInputParamsInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'SimpleInputParamsInputResponse',
        _i1.XmlNamespace('https://example.com/'),
      )
    ];
    if (payload.foo != null) {
      result
        ..add(const _i1.XmlElementName('Foo'))
        ..add(serializers.serialize(
          payload.foo!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.bar != null) {
      result
        ..add(const _i1.XmlElementName('Bar'))
        ..add(serializers.serialize(
          payload.bar!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.baz != null) {
      result
        ..add(const _i1.XmlElementName('Baz'))
        ..add(serializers.serialize(
          payload.baz!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.bam != null) {
      result
        ..add(const _i1.XmlElementName('Bam'))
        ..add(serializers.serialize(
          payload.bam!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.floatValue != null) {
      result
        ..add(const _i1.XmlElementName('FloatValue'))
        ..add(serializers.serialize(
          payload.floatValue!,
          specifiedType: const FullType.nullable(double),
        ));
    }
    if (payload.boo != null) {
      result
        ..add(const _i1.XmlElementName('Boo'))
        ..add(serializers.serialize(
          payload.boo!,
          specifiedType: const FullType.nullable(double),
        ));
    }
    if (payload.qux != null) {
      result
        ..add(const _i1.XmlElementName('Qux'))
        ..add(serializers.serialize(
          payload.qux!,
          specifiedType: const FullType.nullable(_i3.Uint8List),
        ));
    }
    if (payload.fooEnum != null) {
      result
        ..add(const _i1.XmlElementName('FooEnum'))
        ..add(serializers.serialize(
          payload.fooEnum!,
          specifiedType: const FullType.nullable(_i4.FooEnum),
        ));
    }
    if (payload.hasQueryName != null) {
      result
        ..add(const _i1.XmlElementName('A'))
        ..add(serializers.serialize(
          payload.hasQueryName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.hasQueryAndXmlName != null) {
      result
        ..add(const _i1.XmlElementName('B'))
        ..add(serializers.serialize(
          payload.hasQueryAndXmlName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.usesXmlName != null) {
      result
        ..add(const _i1.XmlElementName('C'))
        ..add(serializers.serialize(
          payload.usesXmlName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
