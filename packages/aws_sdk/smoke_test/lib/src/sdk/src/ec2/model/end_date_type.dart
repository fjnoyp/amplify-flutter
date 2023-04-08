// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.end_date_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class EndDateType extends _i1.SmithyEnum<EndDateType> {
  const EndDateType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const EndDateType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const limited = EndDateType._(
    0,
    'limited',
    'limited',
  );

  static const unlimited = EndDateType._(
    1,
    'unlimited',
    'unlimited',
  );

  /// All values of [EndDateType].
  static const values = <EndDateType>[
    EndDateType.limited,
    EndDateType.unlimited,
  ];

  static const List<_i1.SmithySerializer<EndDateType>> serializers = [
    _i1.SmithyEnumSerializer(
      'EndDateType',
      values: values,
      sdkUnknown: EndDateType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension EndDateTypeHelpers on List<EndDateType> {
  /// Returns the value of [EndDateType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  EndDateType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [EndDateType] whose value matches [value].
  EndDateType byValue(String value) => firstWhere((el) => el.value == value);
}
