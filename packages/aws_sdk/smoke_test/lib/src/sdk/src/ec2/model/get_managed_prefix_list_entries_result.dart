// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_managed_prefix_list_entries_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/prefix_list_entry.dart' as _i2;

part 'get_managed_prefix_list_entries_result.g.dart';

abstract class GetManagedPrefixListEntriesResult
    with
        _i1.AWSEquatable<GetManagedPrefixListEntriesResult>
    implements
        Built<GetManagedPrefixListEntriesResult,
            GetManagedPrefixListEntriesResultBuilder> {
  factory GetManagedPrefixListEntriesResult({
    List<_i2.PrefixListEntry>? entries,
    String? nextToken,
  }) {
    return _$GetManagedPrefixListEntriesResult._(
      entries: entries == null ? null : _i3.BuiltList(entries),
      nextToken: nextToken,
    );
  }

  factory GetManagedPrefixListEntriesResult.build(
          [void Function(GetManagedPrefixListEntriesResultBuilder) updates]) =
      _$GetManagedPrefixListEntriesResult;

  const GetManagedPrefixListEntriesResult._();

  /// Constructs a [GetManagedPrefixListEntriesResult] from a [payload] and [response].
  factory GetManagedPrefixListEntriesResult.fromResponse(
    GetManagedPrefixListEntriesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetManagedPrefixListEntriesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetManagedPrefixListEntriesResultBuilder b) {}

  /// Information about the prefix list entries.
  _i3.BuiltList<_i2.PrefixListEntry>? get entries;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        entries,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetManagedPrefixListEntriesResult');
    helper.add(
      'entries',
      entries,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetManagedPrefixListEntriesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<GetManagedPrefixListEntriesResult> {
  const GetManagedPrefixListEntriesResultEc2QuerySerializer()
      : super('GetManagedPrefixListEntriesResult');

  @override
  Iterable<Type> get types => const [
        GetManagedPrefixListEntriesResult,
        _$GetManagedPrefixListEntriesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetManagedPrefixListEntriesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetManagedPrefixListEntriesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'entrySet':
          if (value != null) {
            result.entries.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.PrefixListEntry)],
              ),
            ) as _i3.BuiltList<_i2.PrefixListEntry>));
          }
          break;
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
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
    final payload = (object as GetManagedPrefixListEntriesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GetManagedPrefixListEntriesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.entries != null) {
      result
        ..add(const _i4.XmlElementName('EntrySet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.entries!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.PrefixListEntry)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
