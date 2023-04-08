// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disable_fast_launch_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'disable_fast_launch_request.g.dart';

abstract class DisableFastLaunchRequest
    with
        _i1.HttpInput<DisableFastLaunchRequest>,
        _i2.AWSEquatable<DisableFastLaunchRequest>
    implements
        Built<DisableFastLaunchRequest, DisableFastLaunchRequestBuilder> {
  factory DisableFastLaunchRequest({
    required String imageId,
    bool? force,
    bool? dryRun,
  }) {
    force ??= false;
    dryRun ??= false;
    return _$DisableFastLaunchRequest._(
      imageId: imageId,
      force: force,
      dryRun: dryRun,
    );
  }

  factory DisableFastLaunchRequest.build(
          [void Function(DisableFastLaunchRequestBuilder) updates]) =
      _$DisableFastLaunchRequest;

  const DisableFastLaunchRequest._();

  factory DisableFastLaunchRequest.fromRequest(
    DisableFastLaunchRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DisableFastLaunchRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisableFastLaunchRequestBuilder b) {
    b.force = false;
    b.dryRun = false;
  }

  /// The ID of the image for which you’re turning off faster launching, and removing pre-provisioned snapshots.
  String get imageId;

  /// Forces the image settings to turn off faster launching for your Windows AMI. This parameter overrides any errors that are encountered while cleaning up resources in your account.
  bool get force;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DisableFastLaunchRequest getPayload() => this;
  @override
  List<Object?> get props => [
        imageId,
        force,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DisableFastLaunchRequest');
    helper.add(
      'imageId',
      imageId,
    );
    helper.add(
      'force',
      force,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DisableFastLaunchRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DisableFastLaunchRequest> {
  const DisableFastLaunchRequestEc2QuerySerializer()
      : super('DisableFastLaunchRequest');

  @override
  Iterable<Type> get types => const [
        DisableFastLaunchRequest,
        _$DisableFastLaunchRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableFastLaunchRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableFastLaunchRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ImageId':
          result.imageId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Force':
          result.force = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
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
    final payload = (object as DisableFastLaunchRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DisableFastLaunchRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('ImageId'))
      ..add(serializers.serialize(
        payload.imageId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('Force'))
      ..add(serializers.serialize(
        payload.force,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
