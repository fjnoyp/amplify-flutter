// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.copy_fpga_image_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'copy_fpga_image_result.g.dart';

abstract class CopyFpgaImageResult
    with _i1.AWSEquatable<CopyFpgaImageResult>
    implements Built<CopyFpgaImageResult, CopyFpgaImageResultBuilder> {
  factory CopyFpgaImageResult({String? fpgaImageId}) {
    return _$CopyFpgaImageResult._(fpgaImageId: fpgaImageId);
  }

  factory CopyFpgaImageResult.build(
          [void Function(CopyFpgaImageResultBuilder) updates]) =
      _$CopyFpgaImageResult;

  const CopyFpgaImageResult._();

  /// Constructs a [CopyFpgaImageResult] from a [payload] and [response].
  factory CopyFpgaImageResult.fromResponse(
    CopyFpgaImageResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    CopyFpgaImageResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CopyFpgaImageResultBuilder b) {}

  /// The ID of the new AFI.
  String? get fpgaImageId;
  @override
  List<Object?> get props => [fpgaImageId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CopyFpgaImageResult');
    helper.add(
      'fpgaImageId',
      fpgaImageId,
    );
    return helper.toString();
  }
}

class CopyFpgaImageResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CopyFpgaImageResult> {
  const CopyFpgaImageResultEc2QuerySerializer() : super('CopyFpgaImageResult');

  @override
  Iterable<Type> get types => const [
        CopyFpgaImageResult,
        _$CopyFpgaImageResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CopyFpgaImageResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CopyFpgaImageResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'fpgaImageId':
          if (value != null) {
            result.fpgaImageId = (serializers.deserialize(
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
    final payload = (object as CopyFpgaImageResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'CopyFpgaImageResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.fpgaImageId != null) {
      result
        ..add(const _i2.XmlElementName('FpgaImageId'))
        ..add(serializers.serialize(
          payload.fpgaImageId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
