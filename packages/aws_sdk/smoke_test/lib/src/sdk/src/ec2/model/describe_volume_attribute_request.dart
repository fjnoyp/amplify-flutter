// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_volume_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_attribute_name.dart'
    as _i3;

part 'describe_volume_attribute_request.g.dart';

abstract class DescribeVolumeAttributeRequest
    with
        _i1.HttpInput<DescribeVolumeAttributeRequest>,
        _i2.AWSEquatable<DescribeVolumeAttributeRequest>
    implements
        Built<DescribeVolumeAttributeRequest,
            DescribeVolumeAttributeRequestBuilder> {
  factory DescribeVolumeAttributeRequest({
    required _i3.VolumeAttributeName attribute,
    required String volumeId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DescribeVolumeAttributeRequest._(
      attribute: attribute,
      volumeId: volumeId,
      dryRun: dryRun,
    );
  }

  factory DescribeVolumeAttributeRequest.build(
          [void Function(DescribeVolumeAttributeRequestBuilder) updates]) =
      _$DescribeVolumeAttributeRequest;

  const DescribeVolumeAttributeRequest._();

  factory DescribeVolumeAttributeRequest.fromRequest(
    DescribeVolumeAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeVolumeAttributeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVolumeAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// The attribute of the volume. This parameter is required.
  _i3.VolumeAttributeName get attribute;

  /// The ID of the volume.
  String get volumeId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeVolumeAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        attribute,
        volumeId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeVolumeAttributeRequest');
    helper.add(
      'attribute',
      attribute,
    );
    helper.add(
      'volumeId',
      volumeId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DescribeVolumeAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeVolumeAttributeRequest> {
  const DescribeVolumeAttributeRequestEc2QuerySerializer()
      : super('DescribeVolumeAttributeRequest');

  @override
  Iterable<Type> get types => const [
        DescribeVolumeAttributeRequest,
        _$DescribeVolumeAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVolumeAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVolumeAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Attribute':
          result.attribute = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.VolumeAttributeName),
          ) as _i3.VolumeAttributeName);
          break;
        case 'VolumeId':
          result.volumeId = (serializers.deserialize(
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
    final payload = (object as DescribeVolumeAttributeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeVolumeAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('Attribute'))
      ..add(serializers.serialize(
        payload.attribute,
        specifiedType: const FullType.nullable(_i3.VolumeAttributeName),
      ));
    result
      ..add(const _i1.XmlElementName('VolumeId'))
      ..add(serializers.serialize(
        payload.volumeId,
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
