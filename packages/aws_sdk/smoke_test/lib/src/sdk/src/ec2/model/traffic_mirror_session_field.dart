// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.traffic_mirror_session_field; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TrafficMirrorSessionField
    extends _i1.SmithyEnum<TrafficMirrorSessionField> {
  const TrafficMirrorSessionField._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const TrafficMirrorSessionField._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const description = TrafficMirrorSessionField._(
    0,
    'description',
    'description',
  );

  static const packetLength = TrafficMirrorSessionField._(
    1,
    'packet_length',
    'packet-length',
  );

  static const virtualNetworkId = TrafficMirrorSessionField._(
    2,
    'virtual_network_id',
    'virtual-network-id',
  );

  /// All values of [TrafficMirrorSessionField].
  static const values = <TrafficMirrorSessionField>[
    TrafficMirrorSessionField.description,
    TrafficMirrorSessionField.packetLength,
    TrafficMirrorSessionField.virtualNetworkId,
  ];

  static const List<_i1.SmithySerializer<TrafficMirrorSessionField>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'TrafficMirrorSessionField',
      values: values,
      sdkUnknown: TrafficMirrorSessionField._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TrafficMirrorSessionFieldHelpers on List<TrafficMirrorSessionField> {
  /// Returns the value of [TrafficMirrorSessionField] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TrafficMirrorSessionField byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TrafficMirrorSessionField] whose value matches [value].
  TrafficMirrorSessionField byValue(String value) =>
      firstWhere((el) => el.value == value);
}
