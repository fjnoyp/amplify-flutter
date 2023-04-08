// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.replace_iam_instance_profile_association_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_specification.dart'
    as _i3;

part 'replace_iam_instance_profile_association_request.g.dart';

abstract class ReplaceIamInstanceProfileAssociationRequest
    with
        _i1.HttpInput<ReplaceIamInstanceProfileAssociationRequest>,
        _i2.AWSEquatable<ReplaceIamInstanceProfileAssociationRequest>
    implements
        Built<ReplaceIamInstanceProfileAssociationRequest,
            ReplaceIamInstanceProfileAssociationRequestBuilder> {
  factory ReplaceIamInstanceProfileAssociationRequest({
    required _i3.IamInstanceProfileSpecification iamInstanceProfile,
    required String associationId,
  }) {
    return _$ReplaceIamInstanceProfileAssociationRequest._(
      iamInstanceProfile: iamInstanceProfile,
      associationId: associationId,
    );
  }

  factory ReplaceIamInstanceProfileAssociationRequest.build(
      [void Function(ReplaceIamInstanceProfileAssociationRequestBuilder)
          updates]) = _$ReplaceIamInstanceProfileAssociationRequest;

  const ReplaceIamInstanceProfileAssociationRequest._();

  factory ReplaceIamInstanceProfileAssociationRequest.fromRequest(
    ReplaceIamInstanceProfileAssociationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ReplaceIamInstanceProfileAssociationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplaceIamInstanceProfileAssociationRequestBuilder b) {}

  /// The IAM instance profile.
  _i3.IamInstanceProfileSpecification get iamInstanceProfile;

  /// The ID of the existing IAM instance profile association.
  String get associationId;
  @override
  ReplaceIamInstanceProfileAssociationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        iamInstanceProfile,
        associationId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ReplaceIamInstanceProfileAssociationRequest');
    helper.add(
      'iamInstanceProfile',
      iamInstanceProfile,
    );
    helper.add(
      'associationId',
      associationId,
    );
    return helper.toString();
  }
}

class ReplaceIamInstanceProfileAssociationRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ReplaceIamInstanceProfileAssociationRequest> {
  const ReplaceIamInstanceProfileAssociationRequestEc2QuerySerializer()
      : super('ReplaceIamInstanceProfileAssociationRequest');

  @override
  Iterable<Type> get types => const [
        ReplaceIamInstanceProfileAssociationRequest,
        _$ReplaceIamInstanceProfileAssociationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReplaceIamInstanceProfileAssociationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplaceIamInstanceProfileAssociationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'IamInstanceProfile':
          result.iamInstanceProfile.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.IamInstanceProfileSpecification),
          ) as _i3.IamInstanceProfileSpecification));
          break;
        case 'AssociationId':
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
    final payload = (object as ReplaceIamInstanceProfileAssociationRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ReplaceIamInstanceProfileAssociationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('IamInstanceProfile'))
      ..add(serializers.serialize(
        payload.iamInstanceProfile,
        specifiedType: const FullType(_i3.IamInstanceProfileSpecification),
      ));
    result
      ..add(const _i1.XmlElementName('AssociationId'))
      ..add(serializers.serialize(
        payload.associationId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
