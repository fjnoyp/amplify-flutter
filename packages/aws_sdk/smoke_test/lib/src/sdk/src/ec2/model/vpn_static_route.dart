// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.vpn_static_route; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_state.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_static_route_source.dart'
    as _i2;

part 'vpn_static_route.g.dart';

/// Describes a static route for a VPN connection.
abstract class VpnStaticRoute
    with _i1.AWSEquatable<VpnStaticRoute>
    implements Built<VpnStaticRoute, VpnStaticRouteBuilder> {
  /// Describes a static route for a VPN connection.
  factory VpnStaticRoute({
    String? destinationCidrBlock,
    _i2.VpnStaticRouteSource? source,
    _i3.VpnState? state,
  }) {
    return _$VpnStaticRoute._(
      destinationCidrBlock: destinationCidrBlock,
      source: source,
      state: state,
    );
  }

  /// Describes a static route for a VPN connection.
  factory VpnStaticRoute.build([void Function(VpnStaticRouteBuilder) updates]) =
      _$VpnStaticRoute;

  const VpnStaticRoute._();

  static const List<_i4.SmithySerializer> serializers = [
    VpnStaticRouteEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpnStaticRouteBuilder b) {}

  /// The CIDR block associated with the local subnet of the customer data center.
  String? get destinationCidrBlock;

  /// Indicates how the routes were provided.
  _i2.VpnStaticRouteSource? get source;

  /// The current state of the static route.
  _i3.VpnState? get state;
  @override
  List<Object?> get props => [
        destinationCidrBlock,
        source,
        state,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpnStaticRoute');
    helper.add(
      'destinationCidrBlock',
      destinationCidrBlock,
    );
    helper.add(
      'source',
      source,
    );
    helper.add(
      'state',
      state,
    );
    return helper.toString();
  }
}

class VpnStaticRouteEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<VpnStaticRoute> {
  const VpnStaticRouteEc2QuerySerializer() : super('VpnStaticRoute');

  @override
  Iterable<Type> get types => const [
        VpnStaticRoute,
        _$VpnStaticRoute,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpnStaticRoute deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpnStaticRouteBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'destinationCidrBlock':
          if (value != null) {
            result.destinationCidrBlock = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'source':
          if (value != null) {
            result.source = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.VpnStaticRouteSource),
            ) as _i2.VpnStaticRouteSource);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.VpnState),
            ) as _i3.VpnState);
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
    final payload = (object as VpnStaticRoute);
    final result = <Object?>[
      const _i4.XmlElementName(
        'VpnStaticRouteResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.destinationCidrBlock != null) {
      result
        ..add(const _i4.XmlElementName('DestinationCidrBlock'))
        ..add(serializers.serialize(
          payload.destinationCidrBlock!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.source != null) {
      result
        ..add(const _i4.XmlElementName('Source'))
        ..add(serializers.serialize(
          payload.source!,
          specifiedType: const FullType.nullable(_i2.VpnStaticRouteSource),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i4.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i3.VpnState),
        ));
    }
    return result;
  }
}
