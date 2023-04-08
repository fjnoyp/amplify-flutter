// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.inference_accelerator_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/inference_device_info.dart'
    as _i2;

part 'inference_accelerator_info.g.dart';

/// Describes the Inference accelerators for the instance type.
abstract class InferenceAcceleratorInfo
    with _i1.AWSEquatable<InferenceAcceleratorInfo>
    implements
        Built<InferenceAcceleratorInfo, InferenceAcceleratorInfoBuilder> {
  /// Describes the Inference accelerators for the instance type.
  factory InferenceAcceleratorInfo(
      {List<_i2.InferenceDeviceInfo>? accelerators}) {
    return _$InferenceAcceleratorInfo._(
        accelerators:
            accelerators == null ? null : _i3.BuiltList(accelerators));
  }

  /// Describes the Inference accelerators for the instance type.
  factory InferenceAcceleratorInfo.build(
          [void Function(InferenceAcceleratorInfoBuilder) updates]) =
      _$InferenceAcceleratorInfo;

  const InferenceAcceleratorInfo._();

  static const List<_i4.SmithySerializer> serializers = [
    InferenceAcceleratorInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InferenceAcceleratorInfoBuilder b) {}

  /// Describes the Inference accelerators for the instance type.
  _i3.BuiltList<_i2.InferenceDeviceInfo>? get accelerators;
  @override
  List<Object?> get props => [accelerators];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InferenceAcceleratorInfo');
    helper.add(
      'accelerators',
      accelerators,
    );
    return helper.toString();
  }
}

class InferenceAcceleratorInfoEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<InferenceAcceleratorInfo> {
  const InferenceAcceleratorInfoEc2QuerySerializer()
      : super('InferenceAcceleratorInfo');

  @override
  Iterable<Type> get types => const [
        InferenceAcceleratorInfo,
        _$InferenceAcceleratorInfo,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InferenceAcceleratorInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InferenceAcceleratorInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'accelerators':
          if (value != null) {
            result.accelerators.replace((const _i4.XmlBuiltListSerializer(
                    indexer: _i4.XmlIndexer.ec2QueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.InferenceDeviceInfo)],
              ),
            ) as _i3.BuiltList<_i2.InferenceDeviceInfo>));
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
    final payload = (object as InferenceAcceleratorInfo);
    final result = <Object?>[
      const _i4.XmlElementName(
        'InferenceAcceleratorInfoResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.accelerators != null) {
      result
        ..add(const _i4.XmlElementName('Accelerators'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          payload.accelerators!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.InferenceDeviceInfo)],
          ),
        ));
    }
    return result;
  }
}
