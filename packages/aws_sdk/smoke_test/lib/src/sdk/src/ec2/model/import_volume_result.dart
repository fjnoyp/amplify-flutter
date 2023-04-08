// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.import_volume_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/conversion_task.dart' as _i2;

part 'import_volume_result.g.dart';

abstract class ImportVolumeResult
    with _i1.AWSEquatable<ImportVolumeResult>
    implements Built<ImportVolumeResult, ImportVolumeResultBuilder> {
  factory ImportVolumeResult({_i2.ConversionTask? conversionTask}) {
    return _$ImportVolumeResult._(conversionTask: conversionTask);
  }

  factory ImportVolumeResult.build(
          [void Function(ImportVolumeResultBuilder) updates]) =
      _$ImportVolumeResult;

  const ImportVolumeResult._();

  /// Constructs a [ImportVolumeResult] from a [payload] and [response].
  factory ImportVolumeResult.fromResponse(
    ImportVolumeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ImportVolumeResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportVolumeResultBuilder b) {}

  /// Information about the conversion task.
  _i2.ConversionTask? get conversionTask;
  @override
  List<Object?> get props => [conversionTask];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportVolumeResult');
    helper.add(
      'conversionTask',
      conversionTask,
    );
    return helper.toString();
  }
}

class ImportVolumeResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ImportVolumeResult> {
  const ImportVolumeResultEc2QuerySerializer() : super('ImportVolumeResult');

  @override
  Iterable<Type> get types => const [
        ImportVolumeResult,
        _$ImportVolumeResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportVolumeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportVolumeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'conversionTask':
          if (value != null) {
            result.conversionTask.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ConversionTask),
            ) as _i2.ConversionTask));
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
    final payload = (object as ImportVolumeResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ImportVolumeResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.conversionTask != null) {
      result
        ..add(const _i3.XmlElementName('ConversionTask'))
        ..add(serializers.serialize(
          payload.conversionTask!,
          specifiedType: const FullType(_i2.ConversionTask),
        ));
    }
    return result;
  }
}
