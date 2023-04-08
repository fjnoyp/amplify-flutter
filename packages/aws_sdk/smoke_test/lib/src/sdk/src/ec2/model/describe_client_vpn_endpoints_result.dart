// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_client_vpn_endpoints_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_endpoint.dart'
    as _i2;

part 'describe_client_vpn_endpoints_result.g.dart';

abstract class DescribeClientVpnEndpointsResult
    with
        _i1.AWSEquatable<DescribeClientVpnEndpointsResult>
    implements
        Built<DescribeClientVpnEndpointsResult,
            DescribeClientVpnEndpointsResultBuilder> {
  factory DescribeClientVpnEndpointsResult({
    List<_i2.ClientVpnEndpoint>? clientVpnEndpoints,
    String? nextToken,
  }) {
    return _$DescribeClientVpnEndpointsResult._(
      clientVpnEndpoints:
          clientVpnEndpoints == null ? null : _i3.BuiltList(clientVpnEndpoints),
      nextToken: nextToken,
    );
  }

  factory DescribeClientVpnEndpointsResult.build(
          [void Function(DescribeClientVpnEndpointsResultBuilder) updates]) =
      _$DescribeClientVpnEndpointsResult;

  const DescribeClientVpnEndpointsResult._();

  /// Constructs a [DescribeClientVpnEndpointsResult] from a [payload] and [response].
  factory DescribeClientVpnEndpointsResult.fromResponse(
    DescribeClientVpnEndpointsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeClientVpnEndpointsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeClientVpnEndpointsResultBuilder b) {}

  /// Information about the Client VPN endpoints.
  _i3.BuiltList<_i2.ClientVpnEndpoint>? get clientVpnEndpoints;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        clientVpnEndpoints,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeClientVpnEndpointsResult');
    helper.add(
      'clientVpnEndpoints',
      clientVpnEndpoints,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeClientVpnEndpointsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeClientVpnEndpointsResult> {
  const DescribeClientVpnEndpointsResultEc2QuerySerializer()
      : super('DescribeClientVpnEndpointsResult');

  @override
  Iterable<Type> get types => const [
        DescribeClientVpnEndpointsResult,
        _$DescribeClientVpnEndpointsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeClientVpnEndpointsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeClientVpnEndpointsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'clientVpnEndpoint':
          if (value != null) {
            result.clientVpnEndpoints.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ClientVpnEndpoint)],
              ),
            ) as _i3.BuiltList<_i2.ClientVpnEndpoint>));
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
    final payload = (object as DescribeClientVpnEndpointsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeClientVpnEndpointsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.clientVpnEndpoints != null) {
      result
        ..add(const _i4.XmlElementName('ClientVpnEndpoint'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.clientVpnEndpoints!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ClientVpnEndpoint)],
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
