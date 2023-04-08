// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.delete_role_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_role_policy_request.g.dart';

abstract class DeleteRolePolicyRequest
    with
        _i1.HttpInput<DeleteRolePolicyRequest>,
        _i2.AWSEquatable<DeleteRolePolicyRequest>
    implements Built<DeleteRolePolicyRequest, DeleteRolePolicyRequestBuilder> {
  factory DeleteRolePolicyRequest({
    required String roleName,
    required String policyName,
  }) {
    return _$DeleteRolePolicyRequest._(
      roleName: roleName,
      policyName: policyName,
    );
  }

  factory DeleteRolePolicyRequest.build(
          [void Function(DeleteRolePolicyRequestBuilder) updates]) =
      _$DeleteRolePolicyRequest;

  const DeleteRolePolicyRequest._();

  factory DeleteRolePolicyRequest.fromRequest(
    DeleteRolePolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteRolePolicyRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteRolePolicyRequestBuilder b) {}

  /// The name (friendly name, not ARN) identifying the role that the policy is embedded in.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get roleName;

  /// The name of the inline policy to delete from the specified IAM role.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get policyName;
  @override
  DeleteRolePolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        roleName,
        policyName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteRolePolicyRequest');
    helper.add(
      'roleName',
      roleName,
    );
    helper.add(
      'policyName',
      policyName,
    );
    return helper.toString();
  }
}

class DeleteRolePolicyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteRolePolicyRequest> {
  const DeleteRolePolicyRequestAwsQuerySerializer()
      : super('DeleteRolePolicyRequest');

  @override
  Iterable<Type> get types => const [
        DeleteRolePolicyRequest,
        _$DeleteRolePolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteRolePolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteRolePolicyRequestBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'RoleName':
          result.roleName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'PolicyName':
          result.policyName = (serializers.deserialize(
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
    final payload = (object as DeleteRolePolicyRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteRolePolicyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('RoleName'))
      ..add(serializers.serialize(
        payload.roleName,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('PolicyName'))
      ..add(serializers.serialize(
        payload.policyName,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
