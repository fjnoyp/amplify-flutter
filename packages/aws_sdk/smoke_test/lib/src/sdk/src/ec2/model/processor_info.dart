// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.processor_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/architecture_type.dart' as _i2;

part 'processor_info.g.dart';

/// Describes the processor used by the instance type.
abstract class ProcessorInfo
    with _i1.AWSEquatable<ProcessorInfo>
    implements Built<ProcessorInfo, ProcessorInfoBuilder> {
  /// Describes the processor used by the instance type.
  factory ProcessorInfo({
    List<_i2.ArchitectureType>? supportedArchitectures,
    double? sustainedClockSpeedInGhz,
  }) {
    return _$ProcessorInfo._(
      supportedArchitectures: supportedArchitectures == null
          ? null
          : _i3.BuiltList(supportedArchitectures),
      sustainedClockSpeedInGhz: sustainedClockSpeedInGhz,
    );
  }

  /// Describes the processor used by the instance type.
  factory ProcessorInfo.build([void Function(ProcessorInfoBuilder) updates]) =
      _$ProcessorInfo;

  const ProcessorInfo._();

  static const List<_i4.SmithySerializer> serializers = [
    ProcessorInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ProcessorInfoBuilder b) {}

  /// The architectures supported by the instance type.
  _i3.BuiltList<_i2.ArchitectureType>? get supportedArchitectures;

  /// The speed of the processor, in GHz.
  double? get sustainedClockSpeedInGhz;
  @override
  List<Object?> get props => [
        supportedArchitectures,
        sustainedClockSpeedInGhz,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ProcessorInfo');
    helper.add(
      'supportedArchitectures',
      supportedArchitectures,
    );
    helper.add(
      'sustainedClockSpeedInGhz',
      sustainedClockSpeedInGhz,
    );
    return helper.toString();
  }
}

class ProcessorInfoEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<ProcessorInfo> {
  const ProcessorInfoEc2QuerySerializer() : super('ProcessorInfo');

  @override
  Iterable<Type> get types => const [
        ProcessorInfo,
        _$ProcessorInfo,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ProcessorInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProcessorInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'supportedArchitectures':
          if (value != null) {
            result.supportedArchitectures
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ArchitectureType)],
              ),
            ) as _i3.BuiltList<_i2.ArchitectureType>));
          }
          break;
        case 'sustainedClockSpeedInGhz':
          if (value != null) {
            result.sustainedClockSpeedInGhz = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
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
    final payload = (object as ProcessorInfo);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ProcessorInfoResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.supportedArchitectures != null) {
      result
        ..add(const _i4.XmlElementName('SupportedArchitectures'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.supportedArchitectures!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ArchitectureType)],
          ),
        ));
    }
    if (payload.sustainedClockSpeedInGhz != null) {
      result
        ..add(const _i4.XmlElementName('SustainedClockSpeedInGhz'))
        ..add(serializers.serialize(
          payload.sustainedClockSpeedInGhz!,
          specifiedType: const FullType.nullable(double),
        ));
    }
    return result;
  }
}
