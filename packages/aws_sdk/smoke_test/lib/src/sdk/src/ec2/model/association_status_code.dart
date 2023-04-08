// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.association_status_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AssociationStatusCode extends _i1.SmithyEnum<AssociationStatusCode> {
  const AssociationStatusCode._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const AssociationStatusCode._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const associated = AssociationStatusCode._(
    0,
    'associated',
    'associated',
  );

  static const associating = AssociationStatusCode._(
    1,
    'associating',
    'associating',
  );

  static const associationFailed = AssociationStatusCode._(
    2,
    'association_failed',
    'association-failed',
  );

  static const disassociated = AssociationStatusCode._(
    3,
    'disassociated',
    'disassociated',
  );

  static const disassociating = AssociationStatusCode._(
    4,
    'disassociating',
    'disassociating',
  );

  /// All values of [AssociationStatusCode].
  static const values = <AssociationStatusCode>[
    AssociationStatusCode.associated,
    AssociationStatusCode.associating,
    AssociationStatusCode.associationFailed,
    AssociationStatusCode.disassociated,
    AssociationStatusCode.disassociating,
  ];

  static const List<_i1.SmithySerializer<AssociationStatusCode>> serializers = [
    _i1.SmithyEnumSerializer(
      'AssociationStatusCode',
      values: values,
      sdkUnknown: AssociationStatusCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AssociationStatusCodeHelpers on List<AssociationStatusCode> {
  /// Returns the value of [AssociationStatusCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AssociationStatusCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AssociationStatusCode] whose value matches [value].
  AssociationStatusCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
