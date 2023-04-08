// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_export_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/export_environment.dart'
    as _i2;

part 'instance_export_details.g.dart';

/// Describes an instance to export.
abstract class InstanceExportDetails
    with _i1.AWSEquatable<InstanceExportDetails>
    implements Built<InstanceExportDetails, InstanceExportDetailsBuilder> {
  /// Describes an instance to export.
  factory InstanceExportDetails({
    String? instanceId,
    _i2.ExportEnvironment? targetEnvironment,
  }) {
    return _$InstanceExportDetails._(
      instanceId: instanceId,
      targetEnvironment: targetEnvironment,
    );
  }

  /// Describes an instance to export.
  factory InstanceExportDetails.build(
          [void Function(InstanceExportDetailsBuilder) updates]) =
      _$InstanceExportDetails;

  const InstanceExportDetails._();

  static const List<_i3.SmithySerializer> serializers = [
    InstanceExportDetailsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceExportDetailsBuilder b) {}

  /// The ID of the resource being exported.
  String? get instanceId;

  /// The target virtualization environment.
  _i2.ExportEnvironment? get targetEnvironment;
  @override
  List<Object?> get props => [
        instanceId,
        targetEnvironment,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceExportDetails');
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'targetEnvironment',
      targetEnvironment,
    );
    return helper.toString();
  }
}

class InstanceExportDetailsEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceExportDetails> {
  const InstanceExportDetailsEc2QuerySerializer()
      : super('InstanceExportDetails');

  @override
  Iterable<Type> get types => const [
        InstanceExportDetails,
        _$InstanceExportDetails,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceExportDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceExportDetailsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'targetEnvironment':
          if (value != null) {
            result.targetEnvironment = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ExportEnvironment),
            ) as _i2.ExportEnvironment);
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
    final payload = (object as InstanceExportDetails);
    final result = <Object?>[
      const _i3.XmlElementName(
        'InstanceExportDetailsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceId != null) {
      result
        ..add(const _i3.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.targetEnvironment != null) {
      result
        ..add(const _i3.XmlElementName('TargetEnvironment'))
        ..add(serializers.serialize(
          payload.targetEnvironment!,
          specifiedType: const FullType.nullable(_i2.ExportEnvironment),
        ));
    }
    return result;
  }
}
