// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library ec2_query_v2.ec2_protocol.test.nested_structures_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/nested_structures_input.dart'
    as _i5;
import 'package:ec2_query_v2/src/ec2_protocol/model/struct_arg.dart' as _i6;
import 'package:ec2_query_v2/src/ec2_protocol/operation/nested_structures_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'Ec2NestedStructures (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.NestedStructuresOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'Ec2NestedStructures',
          documentation: 'Serializes nested structures using dots',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body:
              'Action=NestedStructures&Version=2020-01-08&Nested.StringArg=foo&Nested.OtherArg=true&Nested.RecursiveArg.StringArg=baz',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {
            'Nested': {
              'StringArg': 'foo',
              'OtherArg': true,
              'RecursiveArg': {'StringArg': 'baz'},
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          NestedStructuresInputEc2QuerySerializer(),
          StructArgEc2QuerySerializer(),
        ],
      );
    },
  );
}

class NestedStructuresInputEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<_i5.NestedStructuresInput> {
  const NestedStructuresInputEc2QuerySerializer()
      : super('NestedStructuresInput');

  @override
  Iterable<Type> get types => const [_i5.NestedStructuresInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  _i5.NestedStructuresInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.NestedStructuresInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.StructArg),
            ) as _i6.StructArg));
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

class StructArgEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<_i6.StructArg> {
  const StructArgEc2QuerySerializer() : super('StructArg');

  @override
  Iterable<Type> get types => const [_i6.StructArg];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  _i6.StructArg deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i6.StructArgBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'StringArg':
          if (value != null) {
            result.stringArg = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'OtherArg':
          if (value != null) {
            result.otherArg = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'RecursiveArg':
          if (value != null) {
            result.recursiveArg.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.StructArg),
            ) as _i6.StructArg));
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
