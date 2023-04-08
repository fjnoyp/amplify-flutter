// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_volume_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_modification.dart'
    as _i2;

part 'modify_volume_result.g.dart';

abstract class ModifyVolumeResult
    with _i1.AWSEquatable<ModifyVolumeResult>
    implements Built<ModifyVolumeResult, ModifyVolumeResultBuilder> {
  factory ModifyVolumeResult({_i2.VolumeModification? volumeModification}) {
    return _$ModifyVolumeResult._(volumeModification: volumeModification);
  }

  factory ModifyVolumeResult.build(
          [void Function(ModifyVolumeResultBuilder) updates]) =
      _$ModifyVolumeResult;

  const ModifyVolumeResult._();

  /// Constructs a [ModifyVolumeResult] from a [payload] and [response].
  factory ModifyVolumeResult.fromResponse(
    ModifyVolumeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ModifyVolumeResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVolumeResultBuilder b) {}

  /// Information about the volume modification.
  _i2.VolumeModification? get volumeModification;
  @override
  List<Object?> get props => [volumeModification];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyVolumeResult');
    helper.add(
      'volumeModification',
      volumeModification,
    );
    return helper.toString();
  }
}

class ModifyVolumeResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ModifyVolumeResult> {
  const ModifyVolumeResultEc2QuerySerializer() : super('ModifyVolumeResult');

  @override
  Iterable<Type> get types => const [
        ModifyVolumeResult,
        _$ModifyVolumeResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVolumeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVolumeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'volumeModification':
          if (value != null) {
            result.volumeModification.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.VolumeModification),
            ) as _i2.VolumeModification));
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
    final payload = (object as ModifyVolumeResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ModifyVolumeResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.volumeModification != null) {
      result
        ..add(const _i3.XmlElementName('VolumeModification'))
        ..add(serializers.serialize(
          payload.volumeModification!,
          specifiedType: const FullType(_i2.VolumeModification),
        ));
    }
    return result;
  }
}
