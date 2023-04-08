// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_iam_instance_profile_specification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'launch_template_iam_instance_profile_specification_request.g.dart';

/// An IAM instance profile.
abstract class LaunchTemplateIamInstanceProfileSpecificationRequest
    with
        _i1.AWSEquatable<LaunchTemplateIamInstanceProfileSpecificationRequest>
    implements
        Built<LaunchTemplateIamInstanceProfileSpecificationRequest,
            LaunchTemplateIamInstanceProfileSpecificationRequestBuilder> {
  /// An IAM instance profile.
  factory LaunchTemplateIamInstanceProfileSpecificationRequest({
    String? arn,
    String? name,
  }) {
    return _$LaunchTemplateIamInstanceProfileSpecificationRequest._(
      arn: arn,
      name: name,
    );
  }

  /// An IAM instance profile.
  factory LaunchTemplateIamInstanceProfileSpecificationRequest.build(
      [void Function(
              LaunchTemplateIamInstanceProfileSpecificationRequestBuilder)
          updates]) = _$LaunchTemplateIamInstanceProfileSpecificationRequest;

  const LaunchTemplateIamInstanceProfileSpecificationRequest._();

  static const List<_i2.SmithySerializer> serializers = [
    LaunchTemplateIamInstanceProfileSpecificationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      LaunchTemplateIamInstanceProfileSpecificationRequestBuilder b) {}

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
        'LaunchTemplateIamInstanceProfileSpecificationRequest');
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

class LaunchTemplateIamInstanceProfileSpecificationRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        LaunchTemplateIamInstanceProfileSpecificationRequest> {
  const LaunchTemplateIamInstanceProfileSpecificationRequestEc2QuerySerializer()
      : super('LaunchTemplateIamInstanceProfileSpecificationRequest');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateIamInstanceProfileSpecificationRequest,
        _$LaunchTemplateIamInstanceProfileSpecificationRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateIamInstanceProfileSpecificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        LaunchTemplateIamInstanceProfileSpecificationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Arn':
          if (value != null) {
            result.arn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Name':
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
    final payload =
        (object as LaunchTemplateIamInstanceProfileSpecificationRequest);
    final result = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateIamInstanceProfileSpecificationRequestResponse',
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
