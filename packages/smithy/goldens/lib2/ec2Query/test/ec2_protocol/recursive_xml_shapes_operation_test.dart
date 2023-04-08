// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library ec2_query_v2.ec2_protocol.test.recursive_xml_shapes_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/recursive_xml_shapes_output.dart'
    as _i5;
import 'package:ec2_query_v2/src/ec2_protocol/model/recursive_xml_shapes_output_nested1.dart'
    as _i6;
import 'package:ec2_query_v2/src/ec2_protocol/model/recursive_xml_shapes_output_nested2.dart'
    as _i7;
import 'package:ec2_query_v2/src/ec2_protocol/operation/recursive_xml_shapes_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'Ec2RecursiveShapes (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.RecursiveXmlShapesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'Ec2RecursiveShapes',
          documentation: 'Serializes recursive structures',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body:
              '<RecursiveXmlShapesResponse xmlns="https://example.com/">\n    <nested>\n        <foo>Foo1</foo>\n        <nested>\n            <bar>Bar1</bar>\n            <recursiveMember>\n                <foo>Foo2</foo>\n                <nested>\n                    <bar>Bar2</bar>\n                </nested>\n            </recursiveMember>\n        </nested>\n    </nested>\n    <RequestId>requestid</RequestId>\n</RecursiveXmlShapesResponse>\n',
          bodyMediaType: 'application/xml',
          params: {
            'nested': {
              'foo': 'Foo1',
              'nested': {
                'bar': 'Bar1',
                'recursiveMember': {
                  'foo': 'Foo2',
                  'nested': {'bar': 'Bar2'},
                },
              },
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml;charset=UTF-8'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          RecursiveXmlShapesOutputEc2QuerySerializer(),
          RecursiveXmlShapesOutputNested1Ec2QuerySerializer(),
          RecursiveXmlShapesOutputNested2Ec2QuerySerializer(),
        ],
      );
    },
  );
}

class RecursiveXmlShapesOutputEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<_i5.RecursiveXmlShapesOutput> {
  const RecursiveXmlShapesOutputEc2QuerySerializer()
      : super('RecursiveXmlShapesOutput');

  @override
  Iterable<Type> get types => const [_i5.RecursiveXmlShapesOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  _i5.RecursiveXmlShapesOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.RecursiveXmlShapesOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i6.RecursiveXmlShapesOutputNested1),
            ) as _i6.RecursiveXmlShapesOutputNested1));
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
    throw StateError('Not supported for tests');
  }
}

class RecursiveXmlShapesOutputNested1Ec2QuerySerializer extends _i4
    .StructuredSmithySerializer<_i6.RecursiveXmlShapesOutputNested1> {
  const RecursiveXmlShapesOutputNested1Ec2QuerySerializer()
      : super('RecursiveXmlShapesOutputNested1');

  @override
  Iterable<Type> get types => const [_i6.RecursiveXmlShapesOutputNested1];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  _i6.RecursiveXmlShapesOutputNested1 deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i6.RecursiveXmlShapesOutputNested1Builder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
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
                  const FullType(_i7.RecursiveXmlShapesOutputNested2),
            ) as _i7.RecursiveXmlShapesOutputNested2));
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
    throw StateError('Not supported for tests');
  }
}

class RecursiveXmlShapesOutputNested2Ec2QuerySerializer extends _i4
    .StructuredSmithySerializer<_i7.RecursiveXmlShapesOutputNested2> {
  const RecursiveXmlShapesOutputNested2Ec2QuerySerializer()
      : super('RecursiveXmlShapesOutputNested2');

  @override
  Iterable<Type> get types => const [_i7.RecursiveXmlShapesOutputNested2];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  _i7.RecursiveXmlShapesOutputNested2 deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i7.RecursiveXmlShapesOutputNested2Builder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'bar':
          if (value != null) {
            result.bar = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'recursiveMember':
          if (value != null) {
            result.recursiveMember.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i6.RecursiveXmlShapesOutputNested1),
            ) as _i6.RecursiveXmlShapesOutputNested1));
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
    throw StateError('Not supported for tests');
  }
}
