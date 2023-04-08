// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_ipam_address_history_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_address_history_record.dart'
    as _i2;

part 'get_ipam_address_history_result.g.dart';

abstract class GetIpamAddressHistoryResult
    with _i1.AWSEquatable<GetIpamAddressHistoryResult>
    implements
        Built<GetIpamAddressHistoryResult, GetIpamAddressHistoryResultBuilder> {
  factory GetIpamAddressHistoryResult({
    List<_i2.IpamAddressHistoryRecord>? historyRecords,
    String? nextToken,
  }) {
    return _$GetIpamAddressHistoryResult._(
      historyRecords:
          historyRecords == null ? null : _i3.BuiltList(historyRecords),
      nextToken: nextToken,
    );
  }

  factory GetIpamAddressHistoryResult.build(
          [void Function(GetIpamAddressHistoryResultBuilder) updates]) =
      _$GetIpamAddressHistoryResult;

  const GetIpamAddressHistoryResult._();

  /// Constructs a [GetIpamAddressHistoryResult] from a [payload] and [response].
  factory GetIpamAddressHistoryResult.fromResponse(
    GetIpamAddressHistoryResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetIpamAddressHistoryResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetIpamAddressHistoryResultBuilder b) {}

  /// A historical record for a CIDR within an IPAM scope. If the CIDR is associated with an EC2 instance, you will see an object in the response for the instance and one for the network interface.
  _i3.BuiltList<_i2.IpamAddressHistoryRecord>? get historyRecords;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        historyRecords,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetIpamAddressHistoryResult');
    helper.add(
      'historyRecords',
      historyRecords,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetIpamAddressHistoryResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<GetIpamAddressHistoryResult> {
  const GetIpamAddressHistoryResultEc2QuerySerializer()
      : super('GetIpamAddressHistoryResult');

  @override
  Iterable<Type> get types => const [
        GetIpamAddressHistoryResult,
        _$GetIpamAddressHistoryResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetIpamAddressHistoryResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIpamAddressHistoryResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'historyRecordSet':
          if (value != null) {
            result.historyRecords.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.IpamAddressHistoryRecord)],
              ),
            ) as _i3.BuiltList<_i2.IpamAddressHistoryRecord>));
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
    final payload = (object as GetIpamAddressHistoryResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GetIpamAddressHistoryResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.historyRecords != null) {
      result
        ..add(const _i4.XmlElementName('HistoryRecordSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.historyRecords!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.IpamAddressHistoryRecord)],
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
