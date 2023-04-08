// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_managed_prefix_lists_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/managed_prefix_list.dart'
    as _i2;

part 'describe_managed_prefix_lists_result.g.dart';

abstract class DescribeManagedPrefixListsResult
    with
        _i1.AWSEquatable<DescribeManagedPrefixListsResult>
    implements
        Built<DescribeManagedPrefixListsResult,
            DescribeManagedPrefixListsResultBuilder> {
  factory DescribeManagedPrefixListsResult({
    String? nextToken,
    List<_i2.ManagedPrefixList>? prefixLists,
  }) {
    return _$DescribeManagedPrefixListsResult._(
      nextToken: nextToken,
      prefixLists: prefixLists == null ? null : _i3.BuiltList(prefixLists),
    );
  }

  factory DescribeManagedPrefixListsResult.build(
          [void Function(DescribeManagedPrefixListsResultBuilder) updates]) =
      _$DescribeManagedPrefixListsResult;

  const DescribeManagedPrefixListsResult._();

  /// Constructs a [DescribeManagedPrefixListsResult] from a [payload] and [response].
  factory DescribeManagedPrefixListsResult.fromResponse(
    DescribeManagedPrefixListsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeManagedPrefixListsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeManagedPrefixListsResultBuilder b) {}

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// Information about the prefix lists.
  _i3.BuiltList<_i2.ManagedPrefixList>? get prefixLists;
  @override
  List<Object?> get props => [
        nextToken,
        prefixLists,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeManagedPrefixListsResult');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'prefixLists',
      prefixLists,
    );
    return helper.toString();
  }
}

class DescribeManagedPrefixListsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeManagedPrefixListsResult> {
  const DescribeManagedPrefixListsResultEc2QuerySerializer()
      : super('DescribeManagedPrefixListsResult');

  @override
  Iterable<Type> get types => const [
        DescribeManagedPrefixListsResult,
        _$DescribeManagedPrefixListsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeManagedPrefixListsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeManagedPrefixListsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'prefixListSet':
          if (value != null) {
            result.prefixLists.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ManagedPrefixList)],
              ),
            ) as _i3.BuiltList<_i2.ManagedPrefixList>));
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
    final payload = (object as DescribeManagedPrefixListsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeManagedPrefixListsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.prefixLists != null) {
      result
        ..add(const _i4.XmlElementName('PrefixListSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.prefixLists!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ManagedPrefixList)],
          ),
        ));
    }
    return result;
  }
}
