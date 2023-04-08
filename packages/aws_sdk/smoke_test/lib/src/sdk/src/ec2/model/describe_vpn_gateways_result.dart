// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_vpn_gateways_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_gateway.dart' as _i2;

part 'describe_vpn_gateways_result.g.dart';

/// Contains the output of DescribeVpnGateways.
abstract class DescribeVpnGatewaysResult
    with _i1.AWSEquatable<DescribeVpnGatewaysResult>
    implements
        Built<DescribeVpnGatewaysResult, DescribeVpnGatewaysResultBuilder> {
  /// Contains the output of DescribeVpnGateways.
  factory DescribeVpnGatewaysResult({List<_i2.VpnGateway>? vpnGateways}) {
    return _$DescribeVpnGatewaysResult._(
        vpnGateways: vpnGateways == null ? null : _i3.BuiltList(vpnGateways));
  }

  /// Contains the output of DescribeVpnGateways.
  factory DescribeVpnGatewaysResult.build(
          [void Function(DescribeVpnGatewaysResultBuilder) updates]) =
      _$DescribeVpnGatewaysResult;

  const DescribeVpnGatewaysResult._();

  /// Constructs a [DescribeVpnGatewaysResult] from a [payload] and [response].
  factory DescribeVpnGatewaysResult.fromResponse(
    DescribeVpnGatewaysResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeVpnGatewaysResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpnGatewaysResultBuilder b) {}

  /// Information about one or more virtual private gateways.
  _i3.BuiltList<_i2.VpnGateway>? get vpnGateways;
  @override
  List<Object?> get props => [vpnGateways];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVpnGatewaysResult');
    helper.add(
      'vpnGateways',
      vpnGateways,
    );
    return helper.toString();
  }
}

class DescribeVpnGatewaysResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeVpnGatewaysResult> {
  const DescribeVpnGatewaysResultEc2QuerySerializer()
      : super('DescribeVpnGatewaysResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpnGatewaysResult,
        _$DescribeVpnGatewaysResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpnGatewaysResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpnGatewaysResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'vpnGatewaySet':
          if (value != null) {
            result.vpnGateways.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.VpnGateway)],
              ),
            ) as _i3.BuiltList<_i2.VpnGateway>));
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
    final payload = (object as DescribeVpnGatewaysResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeVpnGatewaysResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.vpnGateways != null) {
      result
        ..add(const _i4.XmlElementName('VpnGatewaySet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.vpnGateways!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.VpnGateway)],
          ),
        ));
    }
    return result;
  }
}
