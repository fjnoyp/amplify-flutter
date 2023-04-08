// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library ec2_query_v2.ec2_protocol.test.query_timestamps_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/query_timestamps_input.dart'
    as _i5;
import 'package:ec2_query_v2/src/ec2_protocol/operation/query_timestamps_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'Ec2TimestampsInput (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.QueryTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'Ec2TimestampsInput',
          documentation: 'Serializes timestamps',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body:
              'Action=QueryTimestamps&Version=2020-01-08&NormalFormat=2015-01-25T08%3A00%3A00Z&EpochMember=1422172800&EpochTarget=1422172800',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {
            'normalFormat': 1422172800,
            'epochMember': 1422172800,
            'epochTarget': 1422172800,
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
        inputSerializers: const [QueryTimestampsInputEc2QuerySerializer()],
      );
    },
  );
}

class QueryTimestampsInputEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<_i5.QueryTimestampsInput> {
  const QueryTimestampsInputEc2QuerySerializer()
      : super('QueryTimestampsInput');

  @override
  Iterable<Type> get types => const [_i5.QueryTimestampsInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  _i5.QueryTimestampsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.QueryTimestampsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'normalFormat':
          if (value != null) {
            result.normalFormat =
                _i4.TimestampSerializer.epochSeconds.deserialize(
              serializers,
              value,
            );
          }
          break;
        case 'epochMember':
          if (value != null) {
            result.epochMember =
                _i4.TimestampSerializer.epochSeconds.deserialize(
              serializers,
              value,
            );
          }
          break;
        case 'epochTarget':
          if (value != null) {
            result.epochTarget =
                _i4.TimestampSerializer.epochSeconds.deserialize(
              serializers,
              value,
            );
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
