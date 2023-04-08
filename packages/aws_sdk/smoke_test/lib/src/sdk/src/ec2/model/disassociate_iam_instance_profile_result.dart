// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disassociate_iam_instance_profile_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_association.dart'
    as _i2;

part 'disassociate_iam_instance_profile_result.g.dart';

abstract class DisassociateIamInstanceProfileResult
    with
        _i1.AWSEquatable<DisassociateIamInstanceProfileResult>
    implements
        Built<DisassociateIamInstanceProfileResult,
            DisassociateIamInstanceProfileResultBuilder> {
  factory DisassociateIamInstanceProfileResult(
      {_i2.IamInstanceProfileAssociation? iamInstanceProfileAssociation}) {
    return _$DisassociateIamInstanceProfileResult._(
        iamInstanceProfileAssociation: iamInstanceProfileAssociation);
  }

  factory DisassociateIamInstanceProfileResult.build(
      [void Function(DisassociateIamInstanceProfileResultBuilder)
          updates]) = _$DisassociateIamInstanceProfileResult;

  const DisassociateIamInstanceProfileResult._();

  /// Constructs a [DisassociateIamInstanceProfileResult] from a [payload] and [response].
  factory DisassociateIamInstanceProfileResult.fromResponse(
    DisassociateIamInstanceProfileResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DisassociateIamInstanceProfileResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisassociateIamInstanceProfileResultBuilder b) {}

  /// Information about the IAM instance profile association.
  _i2.IamInstanceProfileAssociation? get iamInstanceProfileAssociation;
  @override
  List<Object?> get props => [iamInstanceProfileAssociation];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisassociateIamInstanceProfileResult');
    helper.add(
      'iamInstanceProfileAssociation',
      iamInstanceProfileAssociation,
    );
    return helper.toString();
  }
}

class DisassociateIamInstanceProfileResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DisassociateIamInstanceProfileResult> {
  const DisassociateIamInstanceProfileResultEc2QuerySerializer()
      : super('DisassociateIamInstanceProfileResult');

  @override
  Iterable<Type> get types => const [
        DisassociateIamInstanceProfileResult,
        _$DisassociateIamInstanceProfileResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateIamInstanceProfileResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateIamInstanceProfileResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'iamInstanceProfileAssociation':
          if (value != null) {
            result.iamInstanceProfileAssociation
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.IamInstanceProfileAssociation),
            ) as _i2.IamInstanceProfileAssociation));
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
    final payload = (object as DisassociateIamInstanceProfileResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DisassociateIamInstanceProfileResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.iamInstanceProfileAssociation != null) {
      result
        ..add(const _i3.XmlElementName('IamInstanceProfileAssociation'))
        ..add(serializers.serialize(
          payload.iamInstanceProfileAssociation!,
          specifiedType: const FullType(_i2.IamInstanceProfileAssociation),
        ));
    }
    return result;
  }
}
