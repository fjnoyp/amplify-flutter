// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.reset_fpga_image_attribute_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'reset_fpga_image_attribute_result.g.dart';

abstract class ResetFpgaImageAttributeResult
    with
        _i1.AWSEquatable<ResetFpgaImageAttributeResult>
    implements
        Built<ResetFpgaImageAttributeResult,
            ResetFpgaImageAttributeResultBuilder> {
  factory ResetFpgaImageAttributeResult({bool? return_}) {
    return_ ??= false;
    return _$ResetFpgaImageAttributeResult._(return_: return_);
  }

  factory ResetFpgaImageAttributeResult.build(
          [void Function(ResetFpgaImageAttributeResultBuilder) updates]) =
      _$ResetFpgaImageAttributeResult;

  const ResetFpgaImageAttributeResult._();

  /// Constructs a [ResetFpgaImageAttributeResult] from a [payload] and [response].
  factory ResetFpgaImageAttributeResult.fromResponse(
    ResetFpgaImageAttributeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    ResetFpgaImageAttributeResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResetFpgaImageAttributeResultBuilder b) {
    b.return_ = false;
  }

  /// Is `true` if the request succeeds, and an error otherwise.
  bool get return_;
  @override
  List<Object?> get props => [return_];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResetFpgaImageAttributeResult');
    helper.add(
      'return_',
      return_,
    );
    return helper.toString();
  }
}

class ResetFpgaImageAttributeResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ResetFpgaImageAttributeResult> {
  const ResetFpgaImageAttributeResultEc2QuerySerializer()
      : super('ResetFpgaImageAttributeResult');

  @override
  Iterable<Type> get types => const [
        ResetFpgaImageAttributeResult,
        _$ResetFpgaImageAttributeResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ResetFpgaImageAttributeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResetFpgaImageAttributeResultBuilder();
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
    final payload = (object as ResetFpgaImageAttributeResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ResetFpgaImageAttributeResultResponse',
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
