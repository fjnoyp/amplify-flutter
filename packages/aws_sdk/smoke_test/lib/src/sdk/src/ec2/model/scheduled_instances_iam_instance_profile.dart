// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.scheduled_instances_iam_instance_profile; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'scheduled_instances_iam_instance_profile.g.dart';

/// Describes an IAM instance profile for a Scheduled Instance.
abstract class ScheduledInstancesIamInstanceProfile
    with
        _i1.AWSEquatable<ScheduledInstancesIamInstanceProfile>
    implements
        Built<ScheduledInstancesIamInstanceProfile,
            ScheduledInstancesIamInstanceProfileBuilder> {
  /// Describes an IAM instance profile for a Scheduled Instance.
  factory ScheduledInstancesIamInstanceProfile({
    String? arn,
    String? name,
  }) {
    return _$ScheduledInstancesIamInstanceProfile._(
      arn: arn,
      name: name,
    );
  }

  /// Describes an IAM instance profile for a Scheduled Instance.
  factory ScheduledInstancesIamInstanceProfile.build(
      [void Function(ScheduledInstancesIamInstanceProfileBuilder)
          updates]) = _$ScheduledInstancesIamInstanceProfile;

  const ScheduledInstancesIamInstanceProfile._();

  static const List<_i2.SmithySerializer> serializers = [
    ScheduledInstancesIamInstanceProfileEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScheduledInstancesIamInstanceProfileBuilder b) {}

  /// The Amazon Resource Name (ARN).
  String? get arn;

  /// The name.
  String? get name;
  @override
  List<Object?> get props => [
        arn,
        name,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ScheduledInstancesIamInstanceProfile');
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

class ScheduledInstancesIamInstanceProfileEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<ScheduledInstancesIamInstanceProfile> {
  const ScheduledInstancesIamInstanceProfileEc2QuerySerializer()
      : super('ScheduledInstancesIamInstanceProfile');

  @override
  Iterable<Type> get types => const [
        ScheduledInstancesIamInstanceProfile,
        _$ScheduledInstancesIamInstanceProfile,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ScheduledInstancesIamInstanceProfile deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledInstancesIamInstanceProfileBuilder();
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
    final payload = (object as ScheduledInstancesIamInstanceProfile);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ScheduledInstancesIamInstanceProfileResponse',
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
