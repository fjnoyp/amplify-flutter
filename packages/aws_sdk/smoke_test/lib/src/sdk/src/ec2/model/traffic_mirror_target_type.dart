// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.traffic_mirror_target_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TrafficMirrorTargetType extends _i1.SmithyEnum<TrafficMirrorTargetType> {
  const TrafficMirrorTargetType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const TrafficMirrorTargetType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const gatewayLoadBalancerEndpoint = TrafficMirrorTargetType._(
    0,
    'gateway_load_balancer_endpoint',
    'gateway-load-balancer-endpoint',
  );

  static const networkInterface = TrafficMirrorTargetType._(
    1,
    'network_interface',
    'network-interface',
  );

  static const networkLoadBalancer = TrafficMirrorTargetType._(
    2,
    'network_load_balancer',
    'network-load-balancer',
  );

  /// All values of [TrafficMirrorTargetType].
  static const values = <TrafficMirrorTargetType>[
    TrafficMirrorTargetType.gatewayLoadBalancerEndpoint,
    TrafficMirrorTargetType.networkInterface,
    TrafficMirrorTargetType.networkLoadBalancer,
  ];

  static const List<_i1.SmithySerializer<TrafficMirrorTargetType>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'TrafficMirrorTargetType',
      values: values,
      sdkUnknown: TrafficMirrorTargetType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TrafficMirrorTargetTypeHelpers on List<TrafficMirrorTargetType> {
  /// Returns the value of [TrafficMirrorTargetType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TrafficMirrorTargetType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TrafficMirrorTargetType] whose value matches [value].
  TrafficMirrorTargetType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
