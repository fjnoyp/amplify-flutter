// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.fast_launch_snapshot_configuration_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'fast_launch_snapshot_configuration_response.g.dart';

/// Configuration settings for creating and managing pre-provisioned snapshots for a fast-launch enabled Windows AMI.
abstract class FastLaunchSnapshotConfigurationResponse
    with
        _i1.AWSEquatable<FastLaunchSnapshotConfigurationResponse>
    implements
        Built<FastLaunchSnapshotConfigurationResponse,
            FastLaunchSnapshotConfigurationResponseBuilder> {
  /// Configuration settings for creating and managing pre-provisioned snapshots for a fast-launch enabled Windows AMI.
  factory FastLaunchSnapshotConfigurationResponse({int? targetResourceCount}) {
    targetResourceCount ??= 0;
    return _$FastLaunchSnapshotConfigurationResponse._(
        targetResourceCount: targetResourceCount);
  }

  /// Configuration settings for creating and managing pre-provisioned snapshots for a fast-launch enabled Windows AMI.
  factory FastLaunchSnapshotConfigurationResponse.build(
      [void Function(FastLaunchSnapshotConfigurationResponseBuilder)
          updates]) = _$FastLaunchSnapshotConfigurationResponse;

  const FastLaunchSnapshotConfigurationResponse._();

  static const List<_i2.SmithySerializer> serializers = [
    FastLaunchSnapshotConfigurationResponseEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FastLaunchSnapshotConfigurationResponseBuilder b) {
    b.targetResourceCount = 0;
  }

  /// The number of pre-provisioned snapshots requested to keep on hand for a fast-launch enabled Windows AMI.
  int get targetResourceCount;
  @override
  List<Object?> get props => [targetResourceCount];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('FastLaunchSnapshotConfigurationResponse');
    helper.add(
      'targetResourceCount',
      targetResourceCount,
    );
    return helper.toString();
  }
}

class FastLaunchSnapshotConfigurationResponseEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<FastLaunchSnapshotConfigurationResponse> {
  const FastLaunchSnapshotConfigurationResponseEc2QuerySerializer()
      : super('FastLaunchSnapshotConfigurationResponse');

  @override
  Iterable<Type> get types => const [
        FastLaunchSnapshotConfigurationResponse,
        _$FastLaunchSnapshotConfigurationResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FastLaunchSnapshotConfigurationResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FastLaunchSnapshotConfigurationResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'targetResourceCount':
          result.targetResourceCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as FastLaunchSnapshotConfigurationResponse);
    final result = <Object?>[
      const _i2.XmlElementName(
        'FastLaunchSnapshotConfigurationResponseResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('TargetResourceCount'))
      ..add(serializers.serialize(
        payload.targetResourceCount,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
