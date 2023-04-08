// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disable_fast_launch_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_launch_template_specification_response.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_resource_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_snapshot_configuration_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_state_code.dart'
    as _i5;

part 'disable_fast_launch_result.g.dart';

abstract class DisableFastLaunchResult
    with _i1.AWSEquatable<DisableFastLaunchResult>
    implements Built<DisableFastLaunchResult, DisableFastLaunchResultBuilder> {
  factory DisableFastLaunchResult({
    String? imageId,
    _i2.FastLaunchResourceType? resourceType,
    _i3.FastLaunchSnapshotConfigurationResponse? snapshotConfiguration,
    _i4.FastLaunchLaunchTemplateSpecificationResponse? launchTemplate,
    int? maxParallelLaunches,
    String? ownerId,
    _i5.FastLaunchStateCode? state,
    String? stateTransitionReason,
    DateTime? stateTransitionTime,
  }) {
    maxParallelLaunches ??= 0;
    return _$DisableFastLaunchResult._(
      imageId: imageId,
      resourceType: resourceType,
      snapshotConfiguration: snapshotConfiguration,
      launchTemplate: launchTemplate,
      maxParallelLaunches: maxParallelLaunches,
      ownerId: ownerId,
      state: state,
      stateTransitionReason: stateTransitionReason,
      stateTransitionTime: stateTransitionTime,
    );
  }

  factory DisableFastLaunchResult.build(
          [void Function(DisableFastLaunchResultBuilder) updates]) =
      _$DisableFastLaunchResult;

  const DisableFastLaunchResult._();

  /// Constructs a [DisableFastLaunchResult] from a [payload] and [response].
  factory DisableFastLaunchResult.fromResponse(
    DisableFastLaunchResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i6.SmithySerializer> serializers = [
    DisableFastLaunchResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisableFastLaunchResultBuilder b) {
    b.maxParallelLaunches = 0;
  }

  /// The ID of the image for which faster-launching has been turned off.
  String? get imageId;

  /// The pre-provisioning resource type that must be cleaned after turning off faster launching for the Windows AMI. Supported values include: `snapshot`.
  _i2.FastLaunchResourceType? get resourceType;

  /// Parameters that were used for faster launching for the Windows AMI before faster launching was turned off. This informs the clean-up process.
  _i3.FastLaunchSnapshotConfigurationResponse? get snapshotConfiguration;

  /// The launch template that was used to launch Windows instances from pre-provisioned snapshots.
  _i4.FastLaunchLaunchTemplateSpecificationResponse? get launchTemplate;

  /// The maximum number of parallel instances to launch for creating resources.
  int get maxParallelLaunches;

  /// The owner of the Windows AMI for which faster launching was turned off.
  String? get ownerId;

  /// The current state of faster launching for the specified Windows AMI.
  _i5.FastLaunchStateCode? get state;

  /// The reason that the state changed for faster launching for the Windows AMI.
  String? get stateTransitionReason;

  /// The time that the state changed for faster launching for the Windows AMI.
  DateTime? get stateTransitionTime;
  @override
  List<Object?> get props => [
        imageId,
        resourceType,
        snapshotConfiguration,
        launchTemplate,
        maxParallelLaunches,
        ownerId,
        state,
        stateTransitionReason,
        stateTransitionTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DisableFastLaunchResult');
    helper.add(
      'imageId',
      imageId,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    helper.add(
      'snapshotConfiguration',
      snapshotConfiguration,
    );
    helper.add(
      'launchTemplate',
      launchTemplate,
    );
    helper.add(
      'maxParallelLaunches',
      maxParallelLaunches,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'stateTransitionReason',
      stateTransitionReason,
    );
    helper.add(
      'stateTransitionTime',
      stateTransitionTime,
    );
    return helper.toString();
  }
}

class DisableFastLaunchResultEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<DisableFastLaunchResult> {
  const DisableFastLaunchResultEc2QuerySerializer()
      : super('DisableFastLaunchResult');

  @override
  Iterable<Type> get types => const [
        DisableFastLaunchResult,
        _$DisableFastLaunchResult,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableFastLaunchResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableFastLaunchResultBuilder();
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
        case 'resourceType':
          if (value != null) {
            result.resourceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.FastLaunchResourceType),
            ) as _i2.FastLaunchResourceType);
          }
          break;
        case 'snapshotConfiguration':
          if (value != null) {
            result.snapshotConfiguration.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.FastLaunchSnapshotConfigurationResponse),
            ) as _i3.FastLaunchSnapshotConfigurationResponse));
          }
          break;
        case 'launchTemplate':
          if (value != null) {
            result.launchTemplate.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i4.FastLaunchLaunchTemplateSpecificationResponse),
            ) as _i4.FastLaunchLaunchTemplateSpecificationResponse));
          }
          break;
        case 'maxParallelLaunches':
          result.maxParallelLaunches = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'ownerId':
          if (value != null) {
            result.ownerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.FastLaunchStateCode),
            ) as _i5.FastLaunchStateCode);
          }
          break;
        case 'stateTransitionReason':
          if (value != null) {
            result.stateTransitionReason = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'stateTransitionTime':
          if (value != null) {
            result.stateTransitionTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
    final payload = (object as DisableFastLaunchResult);
    final result = <Object?>[
      const _i6.XmlElementName(
        'DisableFastLaunchResultResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.imageId != null) {
      result
        ..add(const _i6.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          payload.imageId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceType != null) {
      result
        ..add(const _i6.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          payload.resourceType!,
          specifiedType: const FullType.nullable(_i2.FastLaunchResourceType),
        ));
    }
    if (payload.snapshotConfiguration != null) {
      result
        ..add(const _i6.XmlElementName('SnapshotConfiguration'))
        ..add(serializers.serialize(
          payload.snapshotConfiguration!,
          specifiedType:
              const FullType(_i3.FastLaunchSnapshotConfigurationResponse),
        ));
    }
    if (payload.launchTemplate != null) {
      result
        ..add(const _i6.XmlElementName('LaunchTemplate'))
        ..add(serializers.serialize(
          payload.launchTemplate!,
          specifiedType:
              const FullType(_i4.FastLaunchLaunchTemplateSpecificationResponse),
        ));
    }
    result
      ..add(const _i6.XmlElementName('MaxParallelLaunches'))
      ..add(serializers.serialize(
        payload.maxParallelLaunches,
        specifiedType: const FullType(int),
      ));
    if (payload.ownerId != null) {
      result
        ..add(const _i6.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i6.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i5.FastLaunchStateCode),
        ));
    }
    if (payload.stateTransitionReason != null) {
      result
        ..add(const _i6.XmlElementName('StateTransitionReason'))
        ..add(serializers.serialize(
          payload.stateTransitionReason!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.stateTransitionTime != null) {
      result
        ..add(const _i6.XmlElementName('StateTransitionTime'))
        ..add(serializers.serialize(
          payload.stateTransitionTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result;
  }
}
