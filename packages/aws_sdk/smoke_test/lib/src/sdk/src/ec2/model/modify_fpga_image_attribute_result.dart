// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_fpga_image_attribute_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image_attribute.dart'
    as _i2;

part 'modify_fpga_image_attribute_result.g.dart';

abstract class ModifyFpgaImageAttributeResult
    with
        _i1.AWSEquatable<ModifyFpgaImageAttributeResult>
    implements
        Built<ModifyFpgaImageAttributeResult,
            ModifyFpgaImageAttributeResultBuilder> {
  factory ModifyFpgaImageAttributeResult(
      {_i2.FpgaImageAttribute? fpgaImageAttribute}) {
    return _$ModifyFpgaImageAttributeResult._(
        fpgaImageAttribute: fpgaImageAttribute);
  }

  factory ModifyFpgaImageAttributeResult.build(
          [void Function(ModifyFpgaImageAttributeResultBuilder) updates]) =
      _$ModifyFpgaImageAttributeResult;

  const ModifyFpgaImageAttributeResult._();

  /// Constructs a [ModifyFpgaImageAttributeResult] from a [payload] and [response].
  factory ModifyFpgaImageAttributeResult.fromResponse(
    ModifyFpgaImageAttributeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ModifyFpgaImageAttributeResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyFpgaImageAttributeResultBuilder b) {}

  /// Information about the attribute.
  _i2.FpgaImageAttribute? get fpgaImageAttribute;
  @override
  List<Object?> get props => [fpgaImageAttribute];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyFpgaImageAttributeResult');
    helper.add(
      'fpgaImageAttribute',
      fpgaImageAttribute,
    );
    return helper.toString();
  }
}

class ModifyFpgaImageAttributeResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ModifyFpgaImageAttributeResult> {
  const ModifyFpgaImageAttributeResultEc2QuerySerializer()
      : super('ModifyFpgaImageAttributeResult');

  @override
  Iterable<Type> get types => const [
        ModifyFpgaImageAttributeResult,
        _$ModifyFpgaImageAttributeResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyFpgaImageAttributeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyFpgaImageAttributeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'fpgaImageAttribute':
          if (value != null) {
            result.fpgaImageAttribute.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.FpgaImageAttribute),
            ) as _i2.FpgaImageAttribute));
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
    final payload = (object as ModifyFpgaImageAttributeResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ModifyFpgaImageAttributeResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.fpgaImageAttribute != null) {
      result
        ..add(const _i3.XmlElementName('FpgaImageAttribute'))
        ..add(serializers.serialize(
          payload.fpgaImageAttribute!,
          specifiedType: const FullType(_i2.FpgaImageAttribute),
        ));
    }
    return result;
  }
}
