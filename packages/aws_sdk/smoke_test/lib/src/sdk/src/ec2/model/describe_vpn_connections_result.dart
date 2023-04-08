// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_vpn_connections_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection.dart' as _i2;

part 'describe_vpn_connections_result.g.dart';

/// Contains the output of DescribeVpnConnections.
abstract class DescribeVpnConnectionsResult
    with
        _i1.AWSEquatable<DescribeVpnConnectionsResult>
    implements
        Built<DescribeVpnConnectionsResult,
            DescribeVpnConnectionsResultBuilder> {
  /// Contains the output of DescribeVpnConnections.
  factory DescribeVpnConnectionsResult(
      {List<_i2.VpnConnection>? vpnConnections}) {
    return _$DescribeVpnConnectionsResult._(
        vpnConnections:
            vpnConnections == null ? null : _i3.BuiltList(vpnConnections));
  }

  /// Contains the output of DescribeVpnConnections.
  factory DescribeVpnConnectionsResult.build(
          [void Function(DescribeVpnConnectionsResultBuilder) updates]) =
      _$DescribeVpnConnectionsResult;

  const DescribeVpnConnectionsResult._();

  /// Constructs a [DescribeVpnConnectionsResult] from a [payload] and [response].
  factory DescribeVpnConnectionsResult.fromResponse(
    DescribeVpnConnectionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeVpnConnectionsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpnConnectionsResultBuilder b) {}

  /// Information about one or more VPN connections.
  _i3.BuiltList<_i2.VpnConnection>? get vpnConnections;
  @override
  List<Object?> get props => [vpnConnections];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVpnConnectionsResult');
    helper.add(
      'vpnConnections',
      vpnConnections,
    );
    return helper.toString();
  }
}

class DescribeVpnConnectionsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeVpnConnectionsResult> {
  const DescribeVpnConnectionsResultEc2QuerySerializer()
      : super('DescribeVpnConnectionsResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpnConnectionsResult,
        _$DescribeVpnConnectionsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpnConnectionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpnConnectionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'vpnConnectionSet':
          if (value != null) {
            result.vpnConnections.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.VpnConnection)],
              ),
            ) as _i3.BuiltList<_i2.VpnConnection>));
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
    final payload = (object as DescribeVpnConnectionsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeVpnConnectionsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.vpnConnections != null) {
      result
        ..add(const _i4.XmlElementName('VpnConnectionSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.vpnConnections!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.VpnConnection)],
          ),
        ));
    }
    return result;
  }
}
