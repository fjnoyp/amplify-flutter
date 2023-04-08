// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.add_ipam_operating_region; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'add_ipam_operating_region.g.dart';

/// Add an operating Region to an IPAM. Operating Regions are Amazon Web Services Regions where the IPAM is allowed to manage IP address CIDRs. IPAM only discovers and monitors resources in the Amazon Web Services Regions you select as operating Regions.
///
/// For more information about operating Regions, see [Create an IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html) in the _Amazon VPC IPAM User Guide_.
abstract class AddIpamOperatingRegion
    with _i1.AWSEquatable<AddIpamOperatingRegion>
    implements Built<AddIpamOperatingRegion, AddIpamOperatingRegionBuilder> {
  /// Add an operating Region to an IPAM. Operating Regions are Amazon Web Services Regions where the IPAM is allowed to manage IP address CIDRs. IPAM only discovers and monitors resources in the Amazon Web Services Regions you select as operating Regions.
  ///
  /// For more information about operating Regions, see [Create an IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html) in the _Amazon VPC IPAM User Guide_.
  factory AddIpamOperatingRegion({String? regionName}) {
    return _$AddIpamOperatingRegion._(regionName: regionName);
  }

  /// Add an operating Region to an IPAM. Operating Regions are Amazon Web Services Regions where the IPAM is allowed to manage IP address CIDRs. IPAM only discovers and monitors resources in the Amazon Web Services Regions you select as operating Regions.
  ///
  /// For more information about operating Regions, see [Create an IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html) in the _Amazon VPC IPAM User Guide_.
  factory AddIpamOperatingRegion.build(
          [void Function(AddIpamOperatingRegionBuilder) updates]) =
      _$AddIpamOperatingRegion;

  const AddIpamOperatingRegion._();

  static const List<_i2.SmithySerializer> serializers = [
    AddIpamOperatingRegionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AddIpamOperatingRegionBuilder b) {}

  /// The name of the operating Region.
  String? get regionName;
  @override
  List<Object?> get props => [regionName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AddIpamOperatingRegion');
    helper.add(
      'regionName',
      regionName,
    );
    return helper.toString();
  }
}

class AddIpamOperatingRegionEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AddIpamOperatingRegion> {
  const AddIpamOperatingRegionEc2QuerySerializer()
      : super('AddIpamOperatingRegion');

  @override
  Iterable<Type> get types => const [
        AddIpamOperatingRegion,
        _$AddIpamOperatingRegion,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AddIpamOperatingRegion deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddIpamOperatingRegionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'RegionName':
          if (value != null) {
            result.regionName = (serializers.deserialize(
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
    final payload = (object as AddIpamOperatingRegion);
    final result = <Object?>[
      const _i2.XmlElementName(
        'AddIpamOperatingRegionResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.regionName != null) {
      result
        ..add(const _i2.XmlElementName('RegionName'))
        ..add(serializers.serialize(
          payload.regionName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
