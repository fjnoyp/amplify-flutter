// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library ec2_query_v1.ec2_protocol.test.fractional_seconds_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:ec2_query_v1/src/ec2_protocol/model/fractional_seconds_output.dart'
    as _i5;
import 'package:ec2_query_v1/src/ec2_protocol/operation/fractional_seconds_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'Ec2QueryDateTimeWithFractionalSeconds (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.FractionalSecondsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'Ec2QueryDateTimeWithFractionalSeconds',
          documentation:
              'Ensures that clients can correctly parse datetime timestamps with fractional seconds',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body:
              '<FractionalSecondsResponse xmlns="https://example.com/">\n    <datetime>2000-01-02T20:34:56.123Z</datetime>\n    <RequestId>requestid</RequestId>\n</FractionalSecondsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'datetime': 946845296.123},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml;charset=UTF-8'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [FractionalSecondsOutputEc2QuerySerializer()],
      );
    },
  );
  _i1.test(
    'Ec2QueryHttpDateWithFractionalSeconds (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.FractionalSecondsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'Ec2QueryHttpDateWithFractionalSeconds',
          documentation:
              'Ensures that clients can correctly parse http-date timestamps with fractional seconds',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body:
              '<FractionalSecondsResponse xmlns="https://example.com/">\n    <httpdate>Sun, 02 Jan 2000 20:34:56.456 GMT</httpdate>\n    <RequestId>requestid</RequestId>\n</FractionalSecondsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'httpdate': 946845296.456},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml;charset=UTF-8'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [FractionalSecondsOutputEc2QuerySerializer()],
      );
    },
  );
}

class FractionalSecondsOutputEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<_i5.FractionalSecondsOutput> {
  const FractionalSecondsOutputEc2QuerySerializer()
      : super('FractionalSecondsOutput');

  @override
  Iterable<Type> get types => const [_i5.FractionalSecondsOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  _i5.FractionalSecondsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.FractionalSecondsOutputBuilder();
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
        case 'httpdate':
          if (value != null) {
            result.httpdate = _i4.TimestampSerializer.epochSeconds.deserialize(
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
