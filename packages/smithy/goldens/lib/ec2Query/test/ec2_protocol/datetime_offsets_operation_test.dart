// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library ec2_query_v1.ec2_protocol.test.datetime_offsets_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:ec2_query_v1/src/ec2_protocol/model/datetime_offsets_output.dart'
    as _i5;
import 'package:ec2_query_v1/src/ec2_protocol/operation/datetime_offsets_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'Ec2QueryDateTimeWithNegativeOffset (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.DatetimeOffsetsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'Ec2QueryDateTimeWithNegativeOffset',
          documentation:
              'Ensures that clients can correctly parse datetime (timestamps) with offsets',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body:
              '<DatetimeOffsetsResponse xmlns="https://example.com/">\n    <datetime>2019-12-16T22:48:18-01:00</datetime>\n    <RequestId>requestid</RequestId>\n</DatetimeOffsetsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'datetime': 1576540098},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml;charset=UTF-8'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [DatetimeOffsetsOutputEc2QuerySerializer()],
      );
    },
  );
  _i1.test(
    'Ec2QueryDateTimeWithPositiveOffset (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.DatetimeOffsetsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'Ec2QueryDateTimeWithPositiveOffset',
          documentation:
              'Ensures that clients can correctly parse datetime (timestamps) with offsets',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body:
              '<DatetimeOffsetsResponse xmlns="https://example.com/">\n    <datetime>2019-12-17T00:48:18+01:00</datetime>\n    <RequestId>requestid</RequestId>\n</DatetimeOffsetsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'datetime': 1576540098},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml;charset=UTF-8'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [DatetimeOffsetsOutputEc2QuerySerializer()],
      );
    },
  );
}

class DatetimeOffsetsOutputEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<_i5.DatetimeOffsetsOutput> {
  const DatetimeOffsetsOutputEc2QuerySerializer()
      : super('DatetimeOffsetsOutput');

  @override
  Iterable<Type> get types => const [_i5.DatetimeOffsetsOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  _i5.DatetimeOffsetsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.DatetimeOffsetsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'datetime':
          if (value != null) {
            result.datetime = _i4.TimestampSerializer.epochSeconds.deserialize(
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
