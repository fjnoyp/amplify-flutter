// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.authorize_client_vpn_ingress_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authorization_rule_status.dart'
    as _i2;

part 'authorize_client_vpn_ingress_result.g.dart';

abstract class AuthorizeClientVpnIngressResult
    with
        _i1.AWSEquatable<AuthorizeClientVpnIngressResult>
    implements
        Built<AuthorizeClientVpnIngressResult,
            AuthorizeClientVpnIngressResultBuilder> {
  factory AuthorizeClientVpnIngressResult(
      {_i2.ClientVpnAuthorizationRuleStatus? status}) {
    return _$AuthorizeClientVpnIngressResult._(status: status);
  }

  factory AuthorizeClientVpnIngressResult.build(
          [void Function(AuthorizeClientVpnIngressResultBuilder) updates]) =
      _$AuthorizeClientVpnIngressResult;

  const AuthorizeClientVpnIngressResult._();

  /// Constructs a [AuthorizeClientVpnIngressResult] from a [payload] and [response].
  factory AuthorizeClientVpnIngressResult.fromResponse(
    AuthorizeClientVpnIngressResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    AuthorizeClientVpnIngressResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AuthorizeClientVpnIngressResultBuilder b) {}

  /// The current state of the authorization rule.
  _i2.ClientVpnAuthorizationRuleStatus? get status;
  @override
  List<Object?> get props => [status];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AuthorizeClientVpnIngressResult');
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class AuthorizeClientVpnIngressResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AuthorizeClientVpnIngressResult> {
  const AuthorizeClientVpnIngressResultEc2QuerySerializer()
      : super('AuthorizeClientVpnIngressResult');

  @override
  Iterable<Type> get types => const [
        AuthorizeClientVpnIngressResult,
        _$AuthorizeClientVpnIngressResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AuthorizeClientVpnIngressResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthorizeClientVpnIngressResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'status':
          if (value != null) {
            result.status.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.ClientVpnAuthorizationRuleStatus),
            ) as _i2.ClientVpnAuthorizationRuleStatus));
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
    final payload = (object as AuthorizeClientVpnIngressResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AuthorizeClientVpnIngressResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.status != null) {
      result
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType(_i2.ClientVpnAuthorizationRuleStatus),
        ));
    }
    return result;
  }
}
