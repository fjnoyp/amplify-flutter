// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_fpga_image_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_fpga_image_result.g.dart';

abstract class DeleteFpgaImageResult
    with _i1.AWSEquatable<DeleteFpgaImageResult>
    implements Built<DeleteFpgaImageResult, DeleteFpgaImageResultBuilder> {
  factory DeleteFpgaImageResult({bool? return_}) {
    return_ ??= false;
    return _$DeleteFpgaImageResult._(return_: return_);
  }

  factory DeleteFpgaImageResult.build(
          [void Function(DeleteFpgaImageResultBuilder) updates]) =
      _$DeleteFpgaImageResult;

  const DeleteFpgaImageResult._();

  /// Constructs a [DeleteFpgaImageResult] from a [payload] and [response].
  factory DeleteFpgaImageResult.fromResponse(
    DeleteFpgaImageResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    DeleteFpgaImageResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteFpgaImageResultBuilder b) {
    b.return_ = false;
  }

  /// Is `true` if the request succeeds, and an error otherwise.
  bool get return_;
  @override
  List<Object?> get props => [return_];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteFpgaImageResult');
    helper.add(
      'return_',
      return_,
    );
    return helper.toString();
  }
}

class DeleteFpgaImageResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteFpgaImageResult> {
  const DeleteFpgaImageResultEc2QuerySerializer()
      : super('DeleteFpgaImageResult');

  @override
  Iterable<Type> get types => const [
        DeleteFpgaImageResult,
        _$DeleteFpgaImageResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteFpgaImageResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteFpgaImageResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'return':
          result.return_ = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as DeleteFpgaImageResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'DeleteFpgaImageResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        payload.return_,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
