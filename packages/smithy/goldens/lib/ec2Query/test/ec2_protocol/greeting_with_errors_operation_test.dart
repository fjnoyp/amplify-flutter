// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library ec2_query_v1.ec2_protocol.test.greeting_with_errors_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:ec2_query_v1/src/ec2_protocol/model/complex_error.dart' as _i6;
import 'package:ec2_query_v1/src/ec2_protocol/model/complex_nested_error_data.dart'
    as _i8;
import 'package:ec2_query_v1/src/ec2_protocol/model/greeting_with_errors_output.dart'
    as _i5;
import 'package:ec2_query_v1/src/ec2_protocol/model/invalid_greeting.dart'
    as _i7;
import 'package:ec2_query_v1/src/ec2_protocol/operation/greeting_with_errors_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'Ec2GreetingWithErrors (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'Ec2GreetingWithErrors',
          documentation:
              'Ensures that operations with errors successfully know how to deserialize the successful response',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body:
              '<GreetingWithErrorsResponse xmlns="https://example.com/">\n    <greeting>Hello</greeting>\n    <RequestId>requestid</RequestId>\n</GreetingWithErrorsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'greeting': 'Hello'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml;charset=UTF-8'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [GreetingWithErrorsOutputEc2QuerySerializer()],
      );
    },
  );
  _i1.test(
    'Ec2ComplexError (error)',
    () async {
      await _i2.httpErrorResponseTest<
          _i4.Unit,
          _i4.Unit,
          _i5.GreetingWithErrorsOutput,
          _i5.GreetingWithErrorsOutput,
          _i6.ComplexError>(
        operation: _i3.GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'Ec2ComplexError',
          documentation: null,
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body:
              '<Response>\n    <Errors>\n        <Error>\n            <Code>ComplexError</Code>\n            <Message>Hi</Message>\n            <TopLevel>Top level</TopLevel>\n            <Nested>\n                <Foo>bar</Foo>\n            </Nested>\n        </Error>\n    </Errors>\n    <RequestId>foo-id</RequestId>\n</Response>\n',
          bodyMediaType: 'application/xml',
          params: {
            'TopLevel': 'Top level',
            'Nested': {'Foo': 'bar'},
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml;charset=UTF-8'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 400,
        ),
        errorSerializers: const [
          ComplexErrorEc2QuerySerializer(),
          ComplexNestedErrorDataEc2QuerySerializer(),
        ],
      );
    },
  );
  _i1.test(
    'Ec2InvalidGreetingError (error)',
    () async {
      await _i2.httpErrorResponseTest<
          _i4.Unit,
          _i4.Unit,
          _i5.GreetingWithErrorsOutput,
          _i5.GreetingWithErrorsOutput,
          _i7.InvalidGreeting>(
        operation: _i3.GreetingWithErrorsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'Ec2InvalidGreetingError',
          documentation: 'Parses simple XML errors',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body:
              '<Response>\n    <Errors>\n        <Error>\n            <Code>InvalidGreeting</Code>\n            <Message>Hi</Message>\n        </Error>\n    </Errors>\n    <RequestId>foo-id</RequestId>\n</Response>\n',
          bodyMediaType: 'application/xml',
          params: {'Message': 'Hi'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml;charset=UTF-8'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 400,
        ),
        errorSerializers: const [InvalidGreetingEc2QuerySerializer()],
      );
    },
  );
}

class GreetingWithErrorsOutputEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<_i5.GreetingWithErrorsOutput> {
  const GreetingWithErrorsOutputEc2QuerySerializer()
      : super('GreetingWithErrorsOutput');

  @override
  Iterable<Type> get types => const [_i5.GreetingWithErrorsOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  _i5.GreetingWithErrorsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.GreetingWithErrorsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'greeting':
          if (value != null) {
            result.greeting = (serializers.deserialize(
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
    throw StateError('Not supported for tests');
  }
}

class ComplexErrorEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<_i6.ComplexError> {
  const ComplexErrorEc2QuerySerializer() : super('ComplexError');

  @override
  Iterable<Type> get types => const [_i6.ComplexError];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  _i6.ComplexError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i6.ComplexErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'TopLevel':
          if (value != null) {
            result.topLevel = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.ComplexNestedErrorData),
            ) as _i8.ComplexNestedErrorData));
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

class ComplexNestedErrorDataEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<_i8.ComplexNestedErrorData> {
  const ComplexNestedErrorDataEc2QuerySerializer()
      : super('ComplexNestedErrorData');

  @override
  Iterable<Type> get types => const [_i8.ComplexNestedErrorData];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  _i8.ComplexNestedErrorData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i8.ComplexNestedErrorDataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Foo':
          if (value != null) {
            result.foo = (serializers.deserialize(
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
    throw StateError('Not supported for tests');
  }
}

class InvalidGreetingEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<_i7.InvalidGreeting> {
  const InvalidGreetingEc2QuerySerializer() : super('InvalidGreeting');

  @override
  Iterable<Type> get types => const [_i7.InvalidGreeting];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  _i7.InvalidGreeting deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i7.InvalidGreetingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Message':
          if (value != null) {
            result.message = (serializers.deserialize(
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
    throw StateError('Not supported for tests');
  }
}
