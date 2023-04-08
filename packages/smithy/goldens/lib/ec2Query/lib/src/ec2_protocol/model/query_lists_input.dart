// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library ec2_query_v1.ec2_protocol.model.query_lists_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ec2_query_v1/src/ec2_protocol/model/greeting_struct.dart'
    as _i3;
import 'package:ec2_query_v1/src/ec2_protocol/model/nested_struct_with_list.dart'
    as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'query_lists_input.g.dart';

abstract class QueryListsInput
    with _i1.HttpInput<QueryListsInput>, _i2.AWSEquatable<QueryListsInput>
    implements Built<QueryListsInput, QueryListsInputBuilder> {
  factory QueryListsInput({
    List<String>? listArg,
    List<_i3.GreetingStruct>? complexListArg,
    List<String>? listArgWithXmlNameMember,
    List<String>? listArgWithXmlName,
    _i4.NestedStructWithList? nestedWithList,
  }) {
    return _$QueryListsInput._(
      listArg: listArg == null ? null : _i5.BuiltList(listArg),
      complexListArg:
          complexListArg == null ? null : _i5.BuiltList(complexListArg),
      listArgWithXmlNameMember: listArgWithXmlNameMember == null
          ? null
          : _i5.BuiltList(listArgWithXmlNameMember),
      listArgWithXmlName:
          listArgWithXmlName == null ? null : _i5.BuiltList(listArgWithXmlName),
      nestedWithList: nestedWithList,
    );
  }

  factory QueryListsInput.build(
      [void Function(QueryListsInputBuilder) updates]) = _$QueryListsInput;

  const QueryListsInput._();

  factory QueryListsInput.fromRequest(
    QueryListsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    QueryListsInputEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QueryListsInputBuilder b) {}
  _i5.BuiltList<String>? get listArg;
  _i5.BuiltList<_i3.GreetingStruct>? get complexListArg;
  _i5.BuiltList<String>? get listArgWithXmlNameMember;
  _i5.BuiltList<String>? get listArgWithXmlName;
  _i4.NestedStructWithList? get nestedWithList;
  @override
  QueryListsInput getPayload() => this;
  @override
  List<Object?> get props => [
        listArg,
        complexListArg,
        listArgWithXmlNameMember,
        listArgWithXmlName,
        nestedWithList,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('QueryListsInput');
    helper.add(
      'listArg',
      listArg,
    );
    helper.add(
      'complexListArg',
      complexListArg,
    );
    helper.add(
      'listArgWithXmlNameMember',
      listArgWithXmlNameMember,
    );
    helper.add(
      'listArgWithXmlName',
      listArgWithXmlName,
    );
    helper.add(
      'nestedWithList',
      nestedWithList,
    );
    return helper.toString();
  }
}

class QueryListsInputEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<QueryListsInput> {
  const QueryListsInputEc2QuerySerializer() : super('QueryListsInput');

  @override
  Iterable<Type> get types => const [
        QueryListsInput,
        _$QueryListsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  QueryListsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryListsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ListArg':
          if (value != null) {
            result.listArg.replace((const _i1.XmlBuiltListSerializer(
                    indexer: _i1.XmlIndexer.ec2QueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(String)],
              ),
            ) as _i5.BuiltList<String>));
          }
          break;
        case 'ComplexListArg':
          if (value != null) {
            result.complexListArg.replace((const _i1.XmlBuiltListSerializer(
                    indexer: _i1.XmlIndexer.ec2QueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i3.GreetingStruct)],
              ),
            ) as _i5.BuiltList<_i3.GreetingStruct>));
          }
          break;
        case 'ListArgWithXmlNameMember':
          if (value != null) {
            result.listArgWithXmlNameMember
                .replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(String)],
              ),
            ) as _i5.BuiltList<String>));
          }
          break;
        case 'Hi':
          if (value != null) {
            result.listArgWithXmlName.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(String)],
              ),
            ) as _i5.BuiltList<String>));
          }
          break;
        case 'NestedWithList':
          if (value != null) {
            result.nestedWithList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.NestedStructWithList),
            ) as _i4.NestedStructWithList));
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
    final payload = (object as QueryListsInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'QueryListsInputResponse',
        _i1.XmlNamespace('https://example.com/'),
      )
    ];
    if (payload.listArg != null) {
      result
        ..add(const _i1.XmlElementName('ListArg'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          payload.listArg!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.complexListArg != null) {
      result
        ..add(const _i1.XmlElementName('ComplexListArg'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          payload.complexListArg!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.GreetingStruct)],
          ),
        ));
    }
    if (payload.listArgWithXmlNameMember != null) {
      result
        ..add(const _i1.XmlElementName('ListArgWithXmlNameMember'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.listArgWithXmlNameMember!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.listArgWithXmlName != null) {
      result
        ..add(const _i1.XmlElementName('Hi'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.listArgWithXmlName!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.nestedWithList != null) {
      result
        ..add(const _i1.XmlElementName('NestedWithList'))
        ..add(serializers.serialize(
          payload.nestedWithList!,
          specifiedType: const FullType(_i4.NestedStructWithList),
        ));
    }
    return result;
  }
}
