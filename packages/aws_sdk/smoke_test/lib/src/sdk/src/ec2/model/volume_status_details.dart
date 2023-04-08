// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.volume_status_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_name.dart'
    as _i2;

part 'volume_status_details.g.dart';

/// Describes a volume status.
abstract class VolumeStatusDetails
    with _i1.AWSEquatable<VolumeStatusDetails>
    implements Built<VolumeStatusDetails, VolumeStatusDetailsBuilder> {
  /// Describes a volume status.
  factory VolumeStatusDetails({
    _i2.VolumeStatusName? name,
    String? status,
  }) {
    return _$VolumeStatusDetails._(
      name: name,
      status: status,
    );
  }

  /// Describes a volume status.
  factory VolumeStatusDetails.build(
          [void Function(VolumeStatusDetailsBuilder) updates]) =
      _$VolumeStatusDetails;

  const VolumeStatusDetails._();

  static const List<_i3.SmithySerializer> serializers = [
    VolumeStatusDetailsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VolumeStatusDetailsBuilder b) {}

  /// The name of the volume status.
  _i2.VolumeStatusName? get name;

  /// The intended status of the volume status.
  String? get status;
  @override
  List<Object?> get props => [
        name,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VolumeStatusDetails');
    helper.add(
      'name',
      name,
    );
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class VolumeStatusDetailsEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VolumeStatusDetails> {
  const VolumeStatusDetailsEc2QuerySerializer() : super('VolumeStatusDetails');

  @override
  Iterable<Type> get types => const [
        VolumeStatusDetails,
        _$VolumeStatusDetails,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VolumeStatusDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VolumeStatusDetailsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.VolumeStatusName),
            ) as _i2.VolumeStatusName);
          }
          break;
        case 'status':
          if (value != null) {
            result.status = (serializers.deserialize(
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
    final payload = (object as VolumeStatusDetails);
    final result = <Object?>[
      const _i3.XmlElementName(
        'VolumeStatusDetailsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.name != null) {
      result
        ..add(const _i3.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType.nullable(_i2.VolumeStatusName),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
