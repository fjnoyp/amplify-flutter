// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transport_protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TransportProtocol extends _i1.SmithyEnum<TransportProtocol> {
  const TransportProtocol._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const TransportProtocol._sdkUnknown(String value) : super.sdkUnknown(value);

  static const tcp = TransportProtocol._(
    0,
    'tcp',
    'tcp',
  );

  static const udp = TransportProtocol._(
    1,
    'udp',
    'udp',
  );

  /// All values of [TransportProtocol].
  static const values = <TransportProtocol>[
    TransportProtocol.tcp,
    TransportProtocol.udp,
  ];

  static const List<_i1.SmithySerializer<TransportProtocol>> serializers = [
    _i1.SmithyEnumSerializer(
      'TransportProtocol',
      values: values,
      sdkUnknown: TransportProtocol._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TransportProtocolHelpers on List<TransportProtocol> {
  /// Returns the value of [TransportProtocol] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TransportProtocol byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TransportProtocol] whose value matches [value].
  TransportProtocol byValue(String value) =>
      firstWhere((el) => el.value == value);
}
