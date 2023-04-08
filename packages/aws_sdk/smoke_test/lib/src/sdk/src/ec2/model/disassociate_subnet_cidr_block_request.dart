// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disassociate_subnet_cidr_block_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'disassociate_subnet_cidr_block_request.g.dart';

abstract class DisassociateSubnetCidrBlockRequest
    with
        _i1.HttpInput<DisassociateSubnetCidrBlockRequest>,
        _i2.AWSEquatable<DisassociateSubnetCidrBlockRequest>
    implements
        Built<DisassociateSubnetCidrBlockRequest,
            DisassociateSubnetCidrBlockRequestBuilder> {
  factory DisassociateSubnetCidrBlockRequest({required String associationId}) {
    return _$DisassociateSubnetCidrBlockRequest._(associationId: associationId);
  }

  factory DisassociateSubnetCidrBlockRequest.build(
          [void Function(DisassociateSubnetCidrBlockRequestBuilder) updates]) =
      _$DisassociateSubnetCidrBlockRequest;

  const DisassociateSubnetCidrBlockRequest._();

  factory DisassociateSubnetCidrBlockRequest.fromRequest(
    DisassociateSubnetCidrBlockRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DisassociateSubnetCidrBlockRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisassociateSubnetCidrBlockRequestBuilder b) {}

  /// The association ID for the CIDR block.
  String get associationId;
  @override
  DisassociateSubnetCidrBlockRequest getPayload() => this;
  @override
  List<Object?> get props => [associationId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisassociateSubnetCidrBlockRequest');
    helper.add(
      'associationId',
      associationId,
    );
    return helper.toString();
  }
}

class DisassociateSubnetCidrBlockRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DisassociateSubnetCidrBlockRequest> {
  const DisassociateSubnetCidrBlockRequestEc2QuerySerializer()
      : super('DisassociateSubnetCidrBlockRequest');

  @override
  Iterable<Type> get types => const [
        DisassociateSubnetCidrBlockRequest,
        _$DisassociateSubnetCidrBlockRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateSubnetCidrBlockRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateSubnetCidrBlockRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'associationId':
          result.associationId = (serializers.deserialize(
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
    final payload = (object as DisassociateSubnetCidrBlockRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DisassociateSubnetCidrBlockRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('AssociationId'))
      ..add(serializers.serialize(
        payload.associationId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
