// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.register_image_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'register_image_result.g.dart';

/// Contains the output of RegisterImage.
abstract class RegisterImageResult
    with _i1.AWSEquatable<RegisterImageResult>
    implements Built<RegisterImageResult, RegisterImageResultBuilder> {
  /// Contains the output of RegisterImage.
  factory RegisterImageResult({String? imageId}) {
    return _$RegisterImageResult._(imageId: imageId);
  }

  /// Contains the output of RegisterImage.
  factory RegisterImageResult.build(
          [void Function(RegisterImageResultBuilder) updates]) =
      _$RegisterImageResult;

  const RegisterImageResult._();

  /// Constructs a [RegisterImageResult] from a [payload] and [response].
  factory RegisterImageResult.fromResponse(
    RegisterImageResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    RegisterImageResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RegisterImageResultBuilder b) {}

  /// The ID of the newly registered AMI.
  String? get imageId;
  @override
  List<Object?> get props => [imageId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RegisterImageResult');
    helper.add(
      'imageId',
      imageId,
    );
    return helper.toString();
  }
}

class RegisterImageResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<RegisterImageResult> {
  const RegisterImageResultEc2QuerySerializer() : super('RegisterImageResult');

  @override
  Iterable<Type> get types => const [
        RegisterImageResult,
        _$RegisterImageResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RegisterImageResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegisterImageResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'imageId':
          if (value != null) {
            result.imageId = (serializers.deserialize(
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
    final payload = (object as RegisterImageResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'RegisterImageResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.imageId != null) {
      result
        ..add(const _i2.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          payload.imageId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
