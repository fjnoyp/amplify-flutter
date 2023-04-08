// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.internet_gateway_attachment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/attachment_status.dart' as _i2;

part 'internet_gateway_attachment.g.dart';

/// Describes the attachment of a VPC to an internet gateway or an egress-only internet gateway.
abstract class InternetGatewayAttachment
    with _i1.AWSEquatable<InternetGatewayAttachment>
    implements
        Built<InternetGatewayAttachment, InternetGatewayAttachmentBuilder> {
  /// Describes the attachment of a VPC to an internet gateway or an egress-only internet gateway.
  factory InternetGatewayAttachment({
    _i2.AttachmentStatus? state,
    String? vpcId,
  }) {
    return _$InternetGatewayAttachment._(
      state: state,
      vpcId: vpcId,
    );
  }

  /// Describes the attachment of a VPC to an internet gateway or an egress-only internet gateway.
  factory InternetGatewayAttachment.build(
          [void Function(InternetGatewayAttachmentBuilder) updates]) =
      _$InternetGatewayAttachment;

  const InternetGatewayAttachment._();

  static const List<_i3.SmithySerializer> serializers = [
    InternetGatewayAttachmentEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InternetGatewayAttachmentBuilder b) {}

  /// The current state of the attachment. For an internet gateway, the state is `available` when attached to a VPC; otherwise, this value is not returned.
  _i2.AttachmentStatus? get state;

  /// The ID of the VPC.
  String? get vpcId;
  @override
  List<Object?> get props => [
        state,
        vpcId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InternetGatewayAttachment');
    helper.add(
      'state',
      state,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    return helper.toString();
  }
}

class InternetGatewayAttachmentEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InternetGatewayAttachment> {
  const InternetGatewayAttachmentEc2QuerySerializer()
      : super('InternetGatewayAttachment');

  @override
  Iterable<Type> get types => const [
        InternetGatewayAttachment,
        _$InternetGatewayAttachment,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InternetGatewayAttachment deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InternetGatewayAttachmentBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AttachmentStatus),
            ) as _i2.AttachmentStatus);
          }
          break;
        case 'vpcId':
          if (value != null) {
            result.vpcId = (serializers.deserialize(
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
    final payload = (object as InternetGatewayAttachment);
    final result = <Object?>[
      const _i3.XmlElementName(
        'InternetGatewayAttachmentResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.state != null) {
      result
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i2.AttachmentStatus),
        ));
    }
    if (payload.vpcId != null) {
      result
        ..add(const _i3.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          payload.vpcId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
