// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.deregister_image_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'deregister_image_request.g.dart';

/// Contains the parameters for DeregisterImage.
abstract class DeregisterImageRequest
    with
        _i1.HttpInput<DeregisterImageRequest>,
        _i2.AWSEquatable<DeregisterImageRequest>
    implements Built<DeregisterImageRequest, DeregisterImageRequestBuilder> {
  /// Contains the parameters for DeregisterImage.
  factory DeregisterImageRequest({
    required String imageId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeregisterImageRequest._(
      imageId: imageId,
      dryRun: dryRun,
    );
  }

  /// Contains the parameters for DeregisterImage.
  factory DeregisterImageRequest.build(
          [void Function(DeregisterImageRequestBuilder) updates]) =
      _$DeregisterImageRequest;

  const DeregisterImageRequest._();

  factory DeregisterImageRequest.fromRequest(
    DeregisterImageRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeregisterImageRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeregisterImageRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the AMI.
  String get imageId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeregisterImageRequest getPayload() => this;
  @override
  List<Object?> get props => [
        imageId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeregisterImageRequest');
    helper.add(
      'imageId',
      imageId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DeregisterImageRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeregisterImageRequest> {
  const DeregisterImageRequestEc2QuerySerializer()
      : super('DeregisterImageRequest');

  @override
  Iterable<Type> get types => const [
        DeregisterImageRequest,
        _$DeregisterImageRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeregisterImageRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeregisterImageRequestBuilder();
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
        case 'dryRun':
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
    final payload = (object as DeregisterImageRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeregisterImageRequestResponse',
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
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
