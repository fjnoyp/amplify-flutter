// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_image_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/image_attribute_name.dart'
    as _i3;

part 'describe_image_attribute_request.g.dart';

/// Contains the parameters for DescribeImageAttribute.
abstract class DescribeImageAttributeRequest
    with
        _i1.HttpInput<DescribeImageAttributeRequest>,
        _i2.AWSEquatable<DescribeImageAttributeRequest>
    implements
        Built<DescribeImageAttributeRequest,
            DescribeImageAttributeRequestBuilder> {
  /// Contains the parameters for DescribeImageAttribute.
  factory DescribeImageAttributeRequest({
    required _i3.ImageAttributeName attribute,
    required String imageId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DescribeImageAttributeRequest._(
      attribute: attribute,
      imageId: imageId,
      dryRun: dryRun,
    );
  }

  /// Contains the parameters for DescribeImageAttribute.
  factory DescribeImageAttributeRequest.build(
          [void Function(DescribeImageAttributeRequestBuilder) updates]) =
      _$DescribeImageAttributeRequest;

  const DescribeImageAttributeRequest._();

  factory DescribeImageAttributeRequest.fromRequest(
    DescribeImageAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeImageAttributeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeImageAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// The AMI attribute.
  ///
  /// **Note**: The `blockDeviceMapping` attribute is deprecated. Using this attribute returns the `Client.AuthFailure` error. To get information about the block device mappings for an AMI, use the DescribeImages action.
  _i3.ImageAttributeName get attribute;

  /// The ID of the AMI.
  String get imageId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeImageAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        attribute,
        imageId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeImageAttributeRequest');
    helper.add(
      'attribute',
      attribute,
    );
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

class DescribeImageAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeImageAttributeRequest> {
  const DescribeImageAttributeRequestEc2QuerySerializer()
      : super('DescribeImageAttributeRequest');

  @override
  Iterable<Type> get types => const [
        DescribeImageAttributeRequest,
        _$DescribeImageAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeImageAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeImageAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Attribute':
          result.attribute = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.ImageAttributeName),
          ) as _i3.ImageAttributeName);
          break;
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
    final payload = (object as DescribeImageAttributeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeImageAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('Attribute'))
      ..add(serializers.serialize(
        payload.attribute,
        specifiedType: const FullType.nullable(_i3.ImageAttributeName),
      ));
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
