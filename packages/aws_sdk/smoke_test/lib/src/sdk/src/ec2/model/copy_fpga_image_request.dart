// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.copy_fpga_image_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'copy_fpga_image_request.g.dart';

abstract class CopyFpgaImageRequest
    with
        _i1.HttpInput<CopyFpgaImageRequest>,
        _i2.AWSEquatable<CopyFpgaImageRequest>
    implements Built<CopyFpgaImageRequest, CopyFpgaImageRequestBuilder> {
  factory CopyFpgaImageRequest({
    bool? dryRun,
    required String sourceFpgaImageId,
    String? description,
    String? name,
    required String sourceRegion,
    String? clientToken,
  }) {
    dryRun ??= false;
    return _$CopyFpgaImageRequest._(
      dryRun: dryRun,
      sourceFpgaImageId: sourceFpgaImageId,
      description: description,
      name: name,
      sourceRegion: sourceRegion,
      clientToken: clientToken,
    );
  }

  factory CopyFpgaImageRequest.build(
          [void Function(CopyFpgaImageRequestBuilder) updates]) =
      _$CopyFpgaImageRequest;

  const CopyFpgaImageRequest._();

  factory CopyFpgaImageRequest.fromRequest(
    CopyFpgaImageRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CopyFpgaImageRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CopyFpgaImageRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the source AFI.
  String get sourceFpgaImageId;

  /// The description for the new AFI.
  String? get description;

  /// The name for the new AFI. The default is the name of the source AFI.
  String? get name;

  /// The Region that contains the source AFI.
  String get sourceRegion;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring idempotency](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  CopyFpgaImageRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        sourceFpgaImageId,
        description,
        name,
        sourceRegion,
        clientToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CopyFpgaImageRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'sourceFpgaImageId',
      sourceFpgaImageId,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'sourceRegion',
      sourceRegion,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    return helper.toString();
  }
}

class CopyFpgaImageRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CopyFpgaImageRequest> {
  const CopyFpgaImageRequestEc2QuerySerializer()
      : super('CopyFpgaImageRequest');

  @override
  Iterable<Type> get types => const [
        CopyFpgaImageRequest,
        _$CopyFpgaImageRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CopyFpgaImageRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CopyFpgaImageRequestBuilder();
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
        case 'SourceFpgaImageId':
          result.sourceFpgaImageId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
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
        case 'SourceRegion':
          result.sourceRegion = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
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
    final payload = (object as CopyFpgaImageRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CopyFpgaImageRequestResponse',
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
      ..add(const _i1.XmlElementName('SourceFpgaImageId'))
      ..add(serializers.serialize(
        payload.sourceFpgaImageId,
        specifiedType: const FullType(String),
      ));
    if (payload.description != null) {
      result
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.name != null) {
      result
        ..add(const _i1.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('SourceRegion'))
      ..add(serializers.serialize(
        payload.sourceRegion,
        specifiedType: const FullType(String),
      ));
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
