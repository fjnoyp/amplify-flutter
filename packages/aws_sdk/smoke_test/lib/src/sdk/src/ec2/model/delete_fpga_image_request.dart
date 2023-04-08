// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_fpga_image_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_fpga_image_request.g.dart';

abstract class DeleteFpgaImageRequest
    with
        _i1.HttpInput<DeleteFpgaImageRequest>,
        _i2.AWSEquatable<DeleteFpgaImageRequest>
    implements Built<DeleteFpgaImageRequest, DeleteFpgaImageRequestBuilder> {
  factory DeleteFpgaImageRequest({
    bool? dryRun,
    required String fpgaImageId,
  }) {
    dryRun ??= false;
    return _$DeleteFpgaImageRequest._(
      dryRun: dryRun,
      fpgaImageId: fpgaImageId,
    );
  }

  factory DeleteFpgaImageRequest.build(
          [void Function(DeleteFpgaImageRequestBuilder) updates]) =
      _$DeleteFpgaImageRequest;

  const DeleteFpgaImageRequest._();

  factory DeleteFpgaImageRequest.fromRequest(
    DeleteFpgaImageRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteFpgaImageRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteFpgaImageRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the AFI.
  String get fpgaImageId;
  @override
  DeleteFpgaImageRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        fpgaImageId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteFpgaImageRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'fpgaImageId',
      fpgaImageId,
    );
    return helper.toString();
  }
}

class DeleteFpgaImageRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteFpgaImageRequest> {
  const DeleteFpgaImageRequestEc2QuerySerializer()
      : super('DeleteFpgaImageRequest');

  @override
  Iterable<Type> get types => const [
        DeleteFpgaImageRequest,
        _$DeleteFpgaImageRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteFpgaImageRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteFpgaImageRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'FpgaImageId':
          result.fpgaImageId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as DeleteFpgaImageRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteFpgaImageRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('FpgaImageId'))
      ..add(serializers.serialize(
        payload.fpgaImageId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
