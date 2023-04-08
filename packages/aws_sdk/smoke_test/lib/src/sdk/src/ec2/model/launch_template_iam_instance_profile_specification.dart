// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_iam_instance_profile_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'launch_template_iam_instance_profile_specification.g.dart';

/// Describes an IAM instance profile.
abstract class LaunchTemplateIamInstanceProfileSpecification
    with
        _i1.AWSEquatable<LaunchTemplateIamInstanceProfileSpecification>
    implements
        Built<LaunchTemplateIamInstanceProfileSpecification,
            LaunchTemplateIamInstanceProfileSpecificationBuilder> {
  /// Describes an IAM instance profile.
  factory LaunchTemplateIamInstanceProfileSpecification({
    String? arn,
    String? name,
  }) {
    return _$LaunchTemplateIamInstanceProfileSpecification._(
      arn: arn,
      name: name,
    );
  }

  /// Describes an IAM instance profile.
  factory LaunchTemplateIamInstanceProfileSpecification.build(
      [void Function(LaunchTemplateIamInstanceProfileSpecificationBuilder)
          updates]) = _$LaunchTemplateIamInstanceProfileSpecification;

  const LaunchTemplateIamInstanceProfileSpecification._();

  static const List<_i2.SmithySerializer> serializers = [
    LaunchTemplateIamInstanceProfileSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateIamInstanceProfileSpecificationBuilder b) {}

  /// The Amazon Resource Name (ARN) of the instance profile.
  String? get arn;

  /// The name of the instance profile.
  String? get name;
  @override
  List<Object?> get props => [
        arn,
        name,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'LaunchTemplateIamInstanceProfileSpecification');
    helper.add(
      'arn',
      arn,
    );
    helper.add(
      'name',
      name,
    );
    return helper.toString();
  }
}

class LaunchTemplateIamInstanceProfileSpecificationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        LaunchTemplateIamInstanceProfileSpecification> {
  const LaunchTemplateIamInstanceProfileSpecificationEc2QuerySerializer()
      : super('LaunchTemplateIamInstanceProfileSpecification');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateIamInstanceProfileSpecification,
        _$LaunchTemplateIamInstanceProfileSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateIamInstanceProfileSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateIamInstanceProfileSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'arn':
          if (value != null) {
            result.arn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
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
    final payload = (object as LaunchTemplateIamInstanceProfileSpecification);
    final result = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateIamInstanceProfileSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.arn != null) {
      result
        ..add(const _i2.XmlElementName('Arn'))
        ..add(serializers.serialize(
          payload.arn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.name != null) {
      result
        ..add(const _i2.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
