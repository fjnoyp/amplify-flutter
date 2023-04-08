// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disassociate_enclave_certificate_iam_role_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'disassociate_enclave_certificate_iam_role_result.g.dart';

abstract class DisassociateEnclaveCertificateIamRoleResult
    with
        _i1.AWSEquatable<DisassociateEnclaveCertificateIamRoleResult>
    implements
        Built<DisassociateEnclaveCertificateIamRoleResult,
            DisassociateEnclaveCertificateIamRoleResultBuilder> {
  factory DisassociateEnclaveCertificateIamRoleResult({bool? return_}) {
    return_ ??= false;
    return _$DisassociateEnclaveCertificateIamRoleResult._(return_: return_);
  }

  factory DisassociateEnclaveCertificateIamRoleResult.build(
      [void Function(DisassociateEnclaveCertificateIamRoleResultBuilder)
          updates]) = _$DisassociateEnclaveCertificateIamRoleResult;

  const DisassociateEnclaveCertificateIamRoleResult._();

  /// Constructs a [DisassociateEnclaveCertificateIamRoleResult] from a [payload] and [response].
  factory DisassociateEnclaveCertificateIamRoleResult.fromResponse(
    DisassociateEnclaveCertificateIamRoleResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    DisassociateEnclaveCertificateIamRoleResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisassociateEnclaveCertificateIamRoleResultBuilder b) {
    b.return_ = false;
  }

  /// Returns `true` if the request succeeds; otherwise, it returns an error.
  bool get return_;
  @override
  List<Object?> get props => [return_];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DisassociateEnclaveCertificateIamRoleResult');
    helper.add(
      'return_',
      return_,
    );
    return helper.toString();
  }
}

class DisassociateEnclaveCertificateIamRoleResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DisassociateEnclaveCertificateIamRoleResult> {
  const DisassociateEnclaveCertificateIamRoleResultEc2QuerySerializer()
      : super('DisassociateEnclaveCertificateIamRoleResult');

  @override
  Iterable<Type> get types => const [
        DisassociateEnclaveCertificateIamRoleResult,
        _$DisassociateEnclaveCertificateIamRoleResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateEnclaveCertificateIamRoleResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateEnclaveCertificateIamRoleResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'return':
          result.return_ = (serializers.deserialize(
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
    final payload = (object as DisassociateEnclaveCertificateIamRoleResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'DisassociateEnclaveCertificateIamRoleResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        payload.return_,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
