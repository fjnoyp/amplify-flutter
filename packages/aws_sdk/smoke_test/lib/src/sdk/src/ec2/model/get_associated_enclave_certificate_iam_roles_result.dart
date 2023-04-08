// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_associated_enclave_certificate_iam_roles_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/associated_role.dart' as _i2;

part 'get_associated_enclave_certificate_iam_roles_result.g.dart';

abstract class GetAssociatedEnclaveCertificateIamRolesResult
    with
        _i1.AWSEquatable<GetAssociatedEnclaveCertificateIamRolesResult>
    implements
        Built<GetAssociatedEnclaveCertificateIamRolesResult,
            GetAssociatedEnclaveCertificateIamRolesResultBuilder> {
  factory GetAssociatedEnclaveCertificateIamRolesResult(
      {List<_i2.AssociatedRole>? associatedRoles}) {
    return _$GetAssociatedEnclaveCertificateIamRolesResult._(
        associatedRoles:
            associatedRoles == null ? null : _i3.BuiltList(associatedRoles));
  }

  factory GetAssociatedEnclaveCertificateIamRolesResult.build(
      [void Function(GetAssociatedEnclaveCertificateIamRolesResultBuilder)
          updates]) = _$GetAssociatedEnclaveCertificateIamRolesResult;

  const GetAssociatedEnclaveCertificateIamRolesResult._();

  /// Constructs a [GetAssociatedEnclaveCertificateIamRolesResult] from a [payload] and [response].
  factory GetAssociatedEnclaveCertificateIamRolesResult.fromResponse(
    GetAssociatedEnclaveCertificateIamRolesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetAssociatedEnclaveCertificateIamRolesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAssociatedEnclaveCertificateIamRolesResultBuilder b) {}

  /// Information about the associated IAM roles.
  _i3.BuiltList<_i2.AssociatedRole>? get associatedRoles;
  @override
  List<Object?> get props => [associatedRoles];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetAssociatedEnclaveCertificateIamRolesResult');
    helper.add(
      'associatedRoles',
      associatedRoles,
    );
    return helper.toString();
  }
}

class GetAssociatedEnclaveCertificateIamRolesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<
        GetAssociatedEnclaveCertificateIamRolesResult> {
  const GetAssociatedEnclaveCertificateIamRolesResultEc2QuerySerializer()
      : super('GetAssociatedEnclaveCertificateIamRolesResult');

  @override
  Iterable<Type> get types => const [
        GetAssociatedEnclaveCertificateIamRolesResult,
        _$GetAssociatedEnclaveCertificateIamRolesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetAssociatedEnclaveCertificateIamRolesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAssociatedEnclaveCertificateIamRolesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'associatedRoleSet':
          if (value != null) {
            result.associatedRoles.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.AssociatedRole)],
              ),
            ) as _i3.BuiltList<_i2.AssociatedRole>));
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
    final payload = (object as GetAssociatedEnclaveCertificateIamRolesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GetAssociatedEnclaveCertificateIamRolesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.associatedRoles != null) {
      result
        ..add(const _i4.XmlElementName('AssociatedRoleSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.associatedRoles!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.AssociatedRole)],
          ),
        ));
    }
    return result;
  }
}
