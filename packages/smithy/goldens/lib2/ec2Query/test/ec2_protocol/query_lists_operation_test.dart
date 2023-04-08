// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library ec2_query_v2.ec2_protocol.test.query_lists_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/greeting_struct.dart'
    as _i7;
import 'package:ec2_query_v2/src/ec2_protocol/model/nested_struct_with_list.dart'
    as _i8;
import 'package:ec2_query_v2/src/ec2_protocol/model/query_lists_input.dart'
    as _i5;
import 'package:ec2_query_v2/src/ec2_protocol/operation/query_lists_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'Ec2Lists (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.QueryListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'Ec2Lists',
          documentation: 'Serializes query lists. All EC2 lists are flattened.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body:
              'Action=QueryLists&Version=2020-01-08&ListArg.1=foo&ListArg.2=bar&ListArg.3=baz&ComplexListArg.1.Hi=hello&ComplexListArg.2.Hi=hola',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {
            'ListArg': [
              'foo',
              'bar',
              'baz',
            ],
            'ComplexListArg': [
              {'hi': 'hello'},
              {'hi': 'hola'},
            ],
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: [],
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
          QueryListsInputEc2QuerySerializer(),
          GreetingStructEc2QuerySerializer(),
          NestedStructWithListEc2QuerySerializer(),
        ],
      );
    },
  );
  _i1.test('Ec2EmptyQueryLists (request)', () async {
    await _i2.httpRequestTest(
      operation: _i3.QueryListsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'Ec2EmptyQueryLists',
        documentation: 'Serializes empty query lists',
        protocol: _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        ),
        authScheme: null,
        body: 'Action=QueryLists&Version=2020-01-08&ListArg=',
        bodyMediaType: 'application/x-www-form-urlencoded',
        params: {'ListArg': []},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        forbidHeaders: [],
        requireHeaders: [],
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
        QueryListsInputEc2QuerySerializer(),
        GreetingStructEc2QuerySerializer(),
        NestedStructWithListEc2QuerySerializer(),
      ],
    );
  }, skip: 'Unclear how to reconcile with QueryEmptyQueryMaps');
  _i1.test(
    'Ec2ListArgWithXmlNameMember (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.QueryListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'Ec2ListArgWithXmlNameMember',
          documentation:
              'An xmlName trait in the member of a list has no effect on the list serialization.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body:
              'Action=QueryLists&Version=2020-01-08&ListArgWithXmlNameMember.1=A&ListArgWithXmlNameMember.2=B',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {
            'ListArgWithXmlNameMember': [
              'A',
              'B',
            ]
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: [],
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
          QueryListsInputEc2QuerySerializer(),
          GreetingStructEc2QuerySerializer(),
          NestedStructWithListEc2QuerySerializer(),
        ],
      );
    },
  );
  _i1.test(
    'Ec2ListMemberWithXmlName (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.QueryListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'Ec2ListMemberWithXmlName',
          documentation: 'Changes the name of the list using the xmlName trait',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body: 'Action=QueryLists&Version=2020-01-08&Hi.1=A&Hi.2=B',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {
            'ListArgWithXmlName': [
              'A',
              'B',
            ]
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: [],
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
          QueryListsInputEc2QuerySerializer(),
          GreetingStructEc2QuerySerializer(),
          NestedStructWithListEc2QuerySerializer(),
        ],
      );
    },
  );
  _i1.test(
    'Ec2ListNestedStructWithList (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.QueryListsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'Ec2ListNestedStructWithList',
          documentation: 'Nested structure with a list member',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'ec2Query',
          ),
          authScheme: null,
          body:
              'Action=QueryLists&Version=2020-01-08&NestedWithList.ListArg.1=A&NestedWithList.ListArg.2=B',
          bodyMediaType: 'application/x-www-form-urlencoded',
          params: {
            'NestedWithList': {
              'ListArg': [
                'A',
                'B',
              ]
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
          forbidHeaders: [],
          requireHeaders: [],
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
          QueryListsInputEc2QuerySerializer(),
          GreetingStructEc2QuerySerializer(),
          NestedStructWithListEc2QuerySerializer(),
        ],
      );
    },
  );
}

class QueryListsInputEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<_i5.QueryListsInput> {
  const QueryListsInputEc2QuerySerializer() : super('QueryListsInput');

  @override
  Iterable<Type> get types => const [_i5.QueryListsInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  _i5.QueryListsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.QueryListsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ListArg':
          if (value != null) {
            result.listArg.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(String)],
              ),
            ) as _i6.BuiltList<String>));
          }
          break;
        case 'ComplexListArg':
          if (value != null) {
            result.complexListArg.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i7.GreetingStruct)],
              ),
            ) as _i6.BuiltList<_i7.GreetingStruct>));
          }
          break;
        case 'ListArgWithXmlNameMember':
          if (value != null) {
            result.listArgWithXmlNameMember.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(String)],
              ),
            ) as _i6.BuiltList<String>));
          }
          break;
        case 'ListArgWithXmlName':
          if (value != null) {
            result.listArgWithXmlName.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(String)],
              ),
            ) as _i6.BuiltList<String>));
          }
          break;
        case 'NestedWithList':
          if (value != null) {
            result.nestedWithList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.NestedStructWithList),
            ) as _i8.NestedStructWithList));
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

class GreetingStructEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<_i7.GreetingStruct> {
  const GreetingStructEc2QuerySerializer() : super('GreetingStruct');

  @override
  Iterable<Type> get types => const [_i7.GreetingStruct];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  _i7.GreetingStruct deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i7.GreetingStructBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'hi':
          if (value != null) {
            result.hi = (serializers.deserialize(
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

class NestedStructWithListEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<_i8.NestedStructWithList> {
  const NestedStructWithListEc2QuerySerializer()
      : super('NestedStructWithList');

  @override
  Iterable<Type> get types => const [_i8.NestedStructWithList];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  _i8.NestedStructWithList deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i8.NestedStructWithListBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ListArg':
          if (value != null) {
            result.listArg.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(String)],
              ),
            ) as _i6.BuiltList<String>));
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
