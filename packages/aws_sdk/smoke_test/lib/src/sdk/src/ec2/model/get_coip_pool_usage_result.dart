// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_coip_pool_usage_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/coip_address_usage.dart'
    as _i2;

part 'get_coip_pool_usage_result.g.dart';

abstract class GetCoipPoolUsageResult
    with _i1.AWSEquatable<GetCoipPoolUsageResult>
    implements Built<GetCoipPoolUsageResult, GetCoipPoolUsageResultBuilder> {
  factory GetCoipPoolUsageResult({
    String? coipPoolId,
    List<_i2.CoipAddressUsage>? coipAddressUsages,
    String? localGatewayRouteTableId,
  }) {
    return _$GetCoipPoolUsageResult._(
      coipPoolId: coipPoolId,
      coipAddressUsages:
          coipAddressUsages == null ? null : _i3.BuiltList(coipAddressUsages),
      localGatewayRouteTableId: localGatewayRouteTableId,
    );
  }

  factory GetCoipPoolUsageResult.build(
          [void Function(GetCoipPoolUsageResultBuilder) updates]) =
      _$GetCoipPoolUsageResult;

  const GetCoipPoolUsageResult._();

  /// Constructs a [GetCoipPoolUsageResult] from a [payload] and [response].
  factory GetCoipPoolUsageResult.fromResponse(
    GetCoipPoolUsageResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetCoipPoolUsageResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetCoipPoolUsageResultBuilder b) {}

  /// The ID of the customer-owned address pool.
  String? get coipPoolId;

  /// Information about the address usage.
  _i3.BuiltList<_i2.CoipAddressUsage>? get coipAddressUsages;

  /// The ID of the local gateway route table.
  String? get localGatewayRouteTableId;
  @override
  List<Object?> get props => [
        coipPoolId,
        coipAddressUsages,
        localGatewayRouteTableId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetCoipPoolUsageResult');
    helper.add(
      'coipPoolId',
      coipPoolId,
    );
    helper.add(
      'coipAddressUsages',
      coipAddressUsages,
    );
    helper.add(
      'localGatewayRouteTableId',
      localGatewayRouteTableId,
    );
    return helper.toString();
  }
}

class GetCoipPoolUsageResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<GetCoipPoolUsageResult> {
  const GetCoipPoolUsageResultEc2QuerySerializer()
      : super('GetCoipPoolUsageResult');

  @override
  Iterable<Type> get types => const [
        GetCoipPoolUsageResult,
        _$GetCoipPoolUsageResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetCoipPoolUsageResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCoipPoolUsageResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'coipPoolId':
          if (value != null) {
            result.coipPoolId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'coipAddressUsageSet':
          if (value != null) {
            result.coipAddressUsages.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.CoipAddressUsage)],
              ),
            ) as _i3.BuiltList<_i2.CoipAddressUsage>));
          }
          break;
        case 'localGatewayRouteTableId':
          if (value != null) {
            result.localGatewayRouteTableId = (serializers.deserialize(
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
    final payload = (object as GetCoipPoolUsageResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GetCoipPoolUsageResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.coipPoolId != null) {
      result
        ..add(const _i4.XmlElementName('CoipPoolId'))
        ..add(serializers.serialize(
          payload.coipPoolId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.coipAddressUsages != null) {
      result
        ..add(const _i4.XmlElementName('CoipAddressUsageSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.coipAddressUsages!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.CoipAddressUsage)],
          ),
        ));
    }
    if (payload.localGatewayRouteTableId != null) {
      result
        ..add(const _i4.XmlElementName('LocalGatewayRouteTableId'))
        ..add(serializers.serialize(
          payload.localGatewayRouteTableId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
