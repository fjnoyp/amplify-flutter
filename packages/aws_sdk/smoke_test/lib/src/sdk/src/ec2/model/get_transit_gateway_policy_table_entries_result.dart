// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_transit_gateway_policy_table_entries_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table_entry.dart'
    as _i2;

part 'get_transit_gateway_policy_table_entries_result.g.dart';

abstract class GetTransitGatewayPolicyTableEntriesResult
    with
        _i1.AWSEquatable<GetTransitGatewayPolicyTableEntriesResult>
    implements
        Built<GetTransitGatewayPolicyTableEntriesResult,
            GetTransitGatewayPolicyTableEntriesResultBuilder> {
  factory GetTransitGatewayPolicyTableEntriesResult(
      {List<_i2.TransitGatewayPolicyTableEntry>?
          transitGatewayPolicyTableEntries}) {
    return _$GetTransitGatewayPolicyTableEntriesResult._(
        transitGatewayPolicyTableEntries:
            transitGatewayPolicyTableEntries == null
                ? null
                : _i3.BuiltList(transitGatewayPolicyTableEntries));
  }

  factory GetTransitGatewayPolicyTableEntriesResult.build(
      [void Function(GetTransitGatewayPolicyTableEntriesResultBuilder)
          updates]) = _$GetTransitGatewayPolicyTableEntriesResult;

  const GetTransitGatewayPolicyTableEntriesResult._();

  /// Constructs a [GetTransitGatewayPolicyTableEntriesResult] from a [payload] and [response].
  factory GetTransitGatewayPolicyTableEntriesResult.fromResponse(
    GetTransitGatewayPolicyTableEntriesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetTransitGatewayPolicyTableEntriesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetTransitGatewayPolicyTableEntriesResultBuilder b) {}

  /// The entries for the transit gateway policy table.
  _i3.BuiltList<_i2.TransitGatewayPolicyTableEntry>?
      get transitGatewayPolicyTableEntries;
  @override
  List<Object?> get props => [transitGatewayPolicyTableEntries];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetTransitGatewayPolicyTableEntriesResult');
    helper.add(
      'transitGatewayPolicyTableEntries',
      transitGatewayPolicyTableEntries,
    );
    return helper.toString();
  }
}

class GetTransitGatewayPolicyTableEntriesResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<GetTransitGatewayPolicyTableEntriesResult> {
  const GetTransitGatewayPolicyTableEntriesResultEc2QuerySerializer()
      : super('GetTransitGatewayPolicyTableEntriesResult');

  @override
  Iterable<Type> get types => const [
        GetTransitGatewayPolicyTableEntriesResult,
        _$GetTransitGatewayPolicyTableEntriesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetTransitGatewayPolicyTableEntriesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTransitGatewayPolicyTableEntriesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayPolicyTableEntries':
          if (value != null) {
            result.transitGatewayPolicyTableEntries
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.TransitGatewayPolicyTableEntry)],
              ),
            ) as _i3.BuiltList<_i2.TransitGatewayPolicyTableEntry>));
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
    final payload = (object as GetTransitGatewayPolicyTableEntriesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GetTransitGatewayPolicyTableEntriesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayPolicyTableEntries != null) {
      result
        ..add(const _i4.XmlElementName('TransitGatewayPolicyTableEntries'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.transitGatewayPolicyTableEntries!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TransitGatewayPolicyTableEntry)],
          ),
        ));
    }
    return result;
  }
}
