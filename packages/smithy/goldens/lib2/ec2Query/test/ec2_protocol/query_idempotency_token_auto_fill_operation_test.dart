// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library ec2_query_v2.ec2_protocol.test.query_idempotency_token_auto_fill_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/query_idempotency_token_auto_fill_input.dart'
    as _i5;
import 'package:ec2_query_v2/src/ec2_protocol/operation/query_idempotency_token_auto_fill_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('Ec2ProtocolIdempotencyTokenAutoFill (request)', () async {
    await _i2.httpRequestTest(
      operation: _i3.QueryIdempotencyTokenAutoFillOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'Ec2ProtocolIdempotencyTokenAutoFill',
        documentation: 'Automatically adds idempotency token when not set',
        protocol: _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        ),
        authScheme: null,
        body:
            'Action=QueryIdempotencyTokenAutoFill&Version=2020-01-08&Token=00000000-0000-4000-8000-000000000000',
        bodyMediaType: 'application/x-www-form-urlencoded',
        params: {},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        QueryIdempotencyTokenAutoFillInputEc2QuerySerializer()
      ],
    );
  }, skip: 'bool.fromEnvironment is not working in tests for some reason');
  _i1.test('Ec2ProtocolIdempotencyTokenAutoFillIsSet (request)', () async {
    await _i2.httpRequestTest(
      operation: _i3.QueryIdempotencyTokenAutoFillOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'Ec2ProtocolIdempotencyTokenAutoFillIsSet',
        documentation: 'Uses the given idempotency token as-is',
        protocol: _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        ),
        authScheme: null,
        body:
            'Action=QueryIdempotencyTokenAutoFill&Version=2020-01-08&Token=00000000-0000-4000-8000-000000000123',
        bodyMediaType: 'application/x-www-form-urlencoded',
        params: {'token': '00000000-0000-4000-8000-000000000123'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        QueryIdempotencyTokenAutoFillInputEc2QuerySerializer()
      ],
    );
  }, skip: 'bool.fromEnvironment is not working in tests for some reason');
}

class QueryIdempotencyTokenAutoFillInputEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<_i5.QueryIdempotencyTokenAutoFillInput> {
  const QueryIdempotencyTokenAutoFillInputEc2QuerySerializer()
      : super('QueryIdempotencyTokenAutoFillInput');

  @override
  Iterable<Type> get types => const [_i5.QueryIdempotencyTokenAutoFillInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  _i5.QueryIdempotencyTokenAutoFillInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.QueryIdempotencyTokenAutoFillInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'token':
          if (value != null) {
            result.token = (serializers.deserialize(
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
