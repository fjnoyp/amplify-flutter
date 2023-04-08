// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.reset_fpga_image_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/reset_fpga_image_attribute_name.dart'
    as _i3;

part 'reset_fpga_image_attribute_request.g.dart';

abstract class ResetFpgaImageAttributeRequest
    with
        _i1.HttpInput<ResetFpgaImageAttributeRequest>,
        _i2.AWSEquatable<ResetFpgaImageAttributeRequest>
    implements
        Built<ResetFpgaImageAttributeRequest,
            ResetFpgaImageAttributeRequestBuilder> {
  factory ResetFpgaImageAttributeRequest({
    bool? dryRun,
    required String fpgaImageId,
    _i3.ResetFpgaImageAttributeName? attribute,
  }) {
    dryRun ??= false;
    return _$ResetFpgaImageAttributeRequest._(
      dryRun: dryRun,
      fpgaImageId: fpgaImageId,
      attribute: attribute,
    );
  }

  factory ResetFpgaImageAttributeRequest.build(
          [void Function(ResetFpgaImageAttributeRequestBuilder) updates]) =
      _$ResetFpgaImageAttributeRequest;

  const ResetFpgaImageAttributeRequest._();

  factory ResetFpgaImageAttributeRequest.fromRequest(
    ResetFpgaImageAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ResetFpgaImageAttributeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResetFpgaImageAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the AFI.
  String get fpgaImageId;

  /// The attribute.
  _i3.ResetFpgaImageAttributeName? get attribute;
  @override
  ResetFpgaImageAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        fpgaImageId,
        attribute,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ResetFpgaImageAttributeRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'fpgaImageId',
      fpgaImageId,
    );
    helper.add(
      'attribute',
      attribute,
    );
    return helper.toString();
  }
}

class ResetFpgaImageAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ResetFpgaImageAttributeRequest> {
  const ResetFpgaImageAttributeRequestEc2QuerySerializer()
      : super('ResetFpgaImageAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ResetFpgaImageAttributeRequest,
        _$ResetFpgaImageAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ResetFpgaImageAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResetFpgaImageAttributeRequestBuilder();
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
        case 'Attribute':
          if (value != null) {
            result.attribute = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ResetFpgaImageAttributeName),
            ) as _i3.ResetFpgaImageAttributeName);
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
    final payload = (object as ResetFpgaImageAttributeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ResetFpgaImageAttributeRequestResponse',
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
    if (payload.attribute != null) {
      result
        ..add(const _i1.XmlElementName('Attribute'))
        ..add(serializers.serialize(
          payload.attribute!,
          specifiedType:
              const FullType.nullable(_i3.ResetFpgaImageAttributeName),
        ));
    }
    return result;
  }
}
