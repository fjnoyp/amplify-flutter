// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.restore_image_from_recycle_bin_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'restore_image_from_recycle_bin_request.g.dart';

abstract class RestoreImageFromRecycleBinRequest
    with
        _i1.HttpInput<RestoreImageFromRecycleBinRequest>,
        _i2.AWSEquatable<RestoreImageFromRecycleBinRequest>
    implements
        Built<RestoreImageFromRecycleBinRequest,
            RestoreImageFromRecycleBinRequestBuilder> {
  factory RestoreImageFromRecycleBinRequest({
    required String imageId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$RestoreImageFromRecycleBinRequest._(
      imageId: imageId,
      dryRun: dryRun,
    );
  }

  factory RestoreImageFromRecycleBinRequest.build(
          [void Function(RestoreImageFromRecycleBinRequestBuilder) updates]) =
      _$RestoreImageFromRecycleBinRequest;

  const RestoreImageFromRecycleBinRequest._();

  factory RestoreImageFromRecycleBinRequest.fromRequest(
    RestoreImageFromRecycleBinRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    RestoreImageFromRecycleBinRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestoreImageFromRecycleBinRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the AMI to restore.
  String get imageId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  RestoreImageFromRecycleBinRequest getPayload() => this;
  @override
  List<Object?> get props => [
        imageId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RestoreImageFromRecycleBinRequest');
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

class RestoreImageFromRecycleBinRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<RestoreImageFromRecycleBinRequest> {
  const RestoreImageFromRecycleBinRequestEc2QuerySerializer()
      : super('RestoreImageFromRecycleBinRequest');

  @override
  Iterable<Type> get types => const [
        RestoreImageFromRecycleBinRequest,
        _$RestoreImageFromRecycleBinRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RestoreImageFromRecycleBinRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestoreImageFromRecycleBinRequestBuilder();
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
    final payload = (object as RestoreImageFromRecycleBinRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'RestoreImageFromRecycleBinRequestResponse',
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
