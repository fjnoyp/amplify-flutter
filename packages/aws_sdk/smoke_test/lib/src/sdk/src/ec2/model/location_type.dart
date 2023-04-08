// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.location_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class LocationType extends _i1.SmithyEnum<LocationType> {
  const LocationType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const LocationType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const availabilityZone = LocationType._(
    0,
    'availability_zone',
    'availability-zone',
  );

  static const availabilityZoneId = LocationType._(
    1,
    'availability_zone_id',
    'availability-zone-id',
  );

  static const region = LocationType._(
    2,
    'region',
    'region',
  );

  /// All values of [LocationType].
  static const values = <LocationType>[
    LocationType.availabilityZone,
    LocationType.availabilityZoneId,
    LocationType.region,
  ];

  static const List<_i1.SmithySerializer<LocationType>> serializers = [
    _i1.SmithyEnumSerializer(
      'LocationType',
      values: values,
      sdkUnknown: LocationType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension LocationTypeHelpers on List<LocationType> {
  /// Returns the value of [LocationType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  LocationType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [LocationType] whose value matches [value].
  LocationType byValue(String value) => firstWhere((el) => el.value == value);
}
