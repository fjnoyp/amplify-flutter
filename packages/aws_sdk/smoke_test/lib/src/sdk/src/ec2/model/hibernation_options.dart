// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.hibernation_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'hibernation_options.g.dart';

/// Indicates whether your instance is configured for hibernation. This parameter is valid only if the instance meets the [hibernation prerequisites](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html#hibernating-prerequisites). For more information, see [Hibernate your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in the _Amazon EC2 User Guide_.
abstract class HibernationOptions
    with _i1.AWSEquatable<HibernationOptions>
    implements Built<HibernationOptions, HibernationOptionsBuilder> {
  /// Indicates whether your instance is configured for hibernation. This parameter is valid only if the instance meets the [hibernation prerequisites](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html#hibernating-prerequisites). For more information, see [Hibernate your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in the _Amazon EC2 User Guide_.
  factory HibernationOptions({bool? configured}) {
    configured ??= false;
    return _$HibernationOptions._(configured: configured);
  }

  /// Indicates whether your instance is configured for hibernation. This parameter is valid only if the instance meets the [hibernation prerequisites](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html#hibernating-prerequisites). For more information, see [Hibernate your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in the _Amazon EC2 User Guide_.
  factory HibernationOptions.build(
          [void Function(HibernationOptionsBuilder) updates]) =
      _$HibernationOptions;

  const HibernationOptions._();

  static const List<_i2.SmithySerializer> serializers = [
    HibernationOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HibernationOptionsBuilder b) {
    b.configured = false;
  }

  /// If this parameter is set to `true`, your instance is enabled for hibernation; otherwise, it is not enabled for hibernation.
  bool get configured;
  @override
  List<Object?> get props => [configured];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HibernationOptions');
    helper.add(
      'configured',
      configured,
    );
    return helper.toString();
  }
}

class HibernationOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<HibernationOptions> {
  const HibernationOptionsEc2QuerySerializer() : super('HibernationOptions');

  @override
  Iterable<Type> get types => const [
        HibernationOptions,
        _$HibernationOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  HibernationOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HibernationOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'configured':
          result.configured = (serializers.deserialize(
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
    final payload = (object as HibernationOptions);
    final result = <Object?>[
      const _i2.XmlElementName(
        'HibernationOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Configured'))
      ..add(serializers.serialize(
        payload.configured,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
