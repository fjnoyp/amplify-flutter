// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.authorize_client_vpn_ingress_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'authorize_client_vpn_ingress_request.g.dart';

abstract class AuthorizeClientVpnIngressRequest
    with
        _i1.HttpInput<AuthorizeClientVpnIngressRequest>,
        _i2.AWSEquatable<AuthorizeClientVpnIngressRequest>
    implements
        Built<AuthorizeClientVpnIngressRequest,
            AuthorizeClientVpnIngressRequestBuilder> {
  factory AuthorizeClientVpnIngressRequest({
    required String clientVpnEndpointId,
    required String targetNetworkCidr,
    String? accessGroupId,
    bool? authorizeAllGroups,
    String? description,
    String? clientToken,
    bool? dryRun,
  }) {
    authorizeAllGroups ??= false;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientToken ??= _i2.uuid(secure: true);
    }
    dryRun ??= false;
    return _$AuthorizeClientVpnIngressRequest._(
      clientVpnEndpointId: clientVpnEndpointId,
      targetNetworkCidr: targetNetworkCidr,
      accessGroupId: accessGroupId,
      authorizeAllGroups: authorizeAllGroups,
      description: description,
      clientToken: clientToken,
      dryRun: dryRun,
    );
  }

  factory AuthorizeClientVpnIngressRequest.build(
          [void Function(AuthorizeClientVpnIngressRequestBuilder) updates]) =
      _$AuthorizeClientVpnIngressRequest;

  const AuthorizeClientVpnIngressRequest._();

  factory AuthorizeClientVpnIngressRequest.fromRequest(
    AuthorizeClientVpnIngressRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    AuthorizeClientVpnIngressRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AuthorizeClientVpnIngressRequestBuilder b) {
    b.authorizeAllGroups = false;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientToken = _i2.uuid(secure: true);
    }
    b.dryRun = false;
  }

  /// The ID of the Client VPN endpoint.
  String get clientVpnEndpointId;

  /// The IPv4 address range, in CIDR notation, of the network for which access is being authorized.
  String get targetNetworkCidr;

  /// The ID of the group to grant access to, for example, the Active Directory group or identity provider (IdP) group. Required if `AuthorizeAllGroups` is `false` or not specified.
  String? get accessGroupId;

  /// Indicates whether to grant access to all clients. Specify `true` to grant all clients who successfully establish a VPN connection access to the network. Must be set to `true` if `AccessGroupId` is not specified.
  bool get authorizeAllGroups;

  /// A brief description of the authorization rule.
  String? get description;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  AuthorizeClientVpnIngressRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        targetNetworkCidr,
        accessGroupId,
        authorizeAllGroups,
        description,
        clientToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AuthorizeClientVpnIngressRequest');
    helper.add(
      'clientVpnEndpointId',
      clientVpnEndpointId,
    );
    helper.add(
      'targetNetworkCidr',
      targetNetworkCidr,
    );
    helper.add(
      'accessGroupId',
      accessGroupId,
    );
    helper.add(
      'authorizeAllGroups',
      authorizeAllGroups,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class AuthorizeClientVpnIngressRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AuthorizeClientVpnIngressRequest> {
  const AuthorizeClientVpnIngressRequestEc2QuerySerializer()
      : super('AuthorizeClientVpnIngressRequest');

  @override
  Iterable<Type> get types => const [
        AuthorizeClientVpnIngressRequest,
        _$AuthorizeClientVpnIngressRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AuthorizeClientVpnIngressRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthorizeClientVpnIngressRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ClientVpnEndpointId':
          result.clientVpnEndpointId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TargetNetworkCidr':
          result.targetNetworkCidr = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'AccessGroupId':
          if (value != null) {
            result.accessGroupId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AuthorizeAllGroups':
          result.authorizeAllGroups = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DryRun':
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
    final payload = (object as AuthorizeClientVpnIngressRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'AuthorizeClientVpnIngressRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('ClientVpnEndpointId'))
      ..add(serializers.serialize(
        payload.clientVpnEndpointId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('TargetNetworkCidr'))
      ..add(serializers.serialize(
        payload.targetNetworkCidr,
        specifiedType: const FullType(String),
      ));
    if (payload.accessGroupId != null) {
      result
        ..add(const _i1.XmlElementName('AccessGroupId'))
        ..add(serializers.serialize(
          payload.accessGroupId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('AuthorizeAllGroups'))
      ..add(serializers.serialize(
        payload.authorizeAllGroups,
        specifiedType: const FullType(bool),
      ));
    if (payload.description != null) {
      result
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
