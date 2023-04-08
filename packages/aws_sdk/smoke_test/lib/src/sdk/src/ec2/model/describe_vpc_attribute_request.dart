// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_vpc_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_attribute_name.dart'
    as _i3;

part 'describe_vpc_attribute_request.g.dart';

abstract class DescribeVpcAttributeRequest
    with
        _i1.HttpInput<DescribeVpcAttributeRequest>,
        _i2.AWSEquatable<DescribeVpcAttributeRequest>
    implements
        Built<DescribeVpcAttributeRequest, DescribeVpcAttributeRequestBuilder> {
  factory DescribeVpcAttributeRequest({
    required _i3.VpcAttributeName attribute,
    required String vpcId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DescribeVpcAttributeRequest._(
      attribute: attribute,
      vpcId: vpcId,
      dryRun: dryRun,
    );
  }

  factory DescribeVpcAttributeRequest.build(
          [void Function(DescribeVpcAttributeRequestBuilder) updates]) =
      _$DescribeVpcAttributeRequest;

  const DescribeVpcAttributeRequest._();

  factory DescribeVpcAttributeRequest.fromRequest(
    DescribeVpcAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeVpcAttributeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpcAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// The VPC attribute.
  _i3.VpcAttributeName get attribute;

  /// The ID of the VPC.
  String get vpcId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeVpcAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        attribute,
        vpcId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVpcAttributeRequest');
    helper.add(
      'attribute',
      attribute,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DescribeVpcAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeVpcAttributeRequest> {
  const DescribeVpcAttributeRequestEc2QuerySerializer()
      : super('DescribeVpcAttributeRequest');

  @override
  Iterable<Type> get types => const [
        DescribeVpcAttributeRequest,
        _$DescribeVpcAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Attribute':
          result.attribute = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.VpcAttributeName),
          ) as _i3.VpcAttributeName);
          break;
        case 'VpcId':
          result.vpcId = (serializers.deserialize(
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
    final payload = (object as DescribeVpcAttributeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeVpcAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('Attribute'))
      ..add(serializers.serialize(
        payload.attribute,
        specifiedType: const FullType.nullable(_i3.VpcAttributeName),
      ));
    result
      ..add(const _i1.XmlElementName('VpcId'))
      ..add(serializers.serialize(
        payload.vpcId,
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
