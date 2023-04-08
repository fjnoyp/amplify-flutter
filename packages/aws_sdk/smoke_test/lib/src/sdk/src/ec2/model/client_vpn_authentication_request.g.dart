// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.client_vpn_authentication_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientVpnAuthenticationRequest extends ClientVpnAuthenticationRequest {
  @override
  final _i2.ClientVpnAuthenticationType? type;
  @override
  final _i3.DirectoryServiceAuthenticationRequest? activeDirectory;
  @override
  final _i4.CertificateAuthenticationRequest? mutualAuthentication;
  @override
  final _i5.FederatedAuthenticationRequest? federatedAuthentication;

  factory _$ClientVpnAuthenticationRequest(
          [void Function(ClientVpnAuthenticationRequestBuilder)? updates]) =>
      (new ClientVpnAuthenticationRequestBuilder()..update(updates))._build();

  _$ClientVpnAuthenticationRequest._(
      {this.type,
      this.activeDirectory,
      this.mutualAuthentication,
      this.federatedAuthentication})
      : super._();

  @override
  ClientVpnAuthenticationRequest rebuild(
          void Function(ClientVpnAuthenticationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientVpnAuthenticationRequestBuilder toBuilder() =>
      new ClientVpnAuthenticationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientVpnAuthenticationRequest &&
        type == other.type &&
        activeDirectory == other.activeDirectory &&
        mutualAuthentication == other.mutualAuthentication &&
        federatedAuthentication == other.federatedAuthentication;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, activeDirectory.hashCode);
    _$hash = $jc(_$hash, mutualAuthentication.hashCode);
    _$hash = $jc(_$hash, federatedAuthentication.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ClientVpnAuthenticationRequestBuilder
    implements
        Builder<ClientVpnAuthenticationRequest,
            ClientVpnAuthenticationRequestBuilder> {
  _$ClientVpnAuthenticationRequest? _$v;

  _i2.ClientVpnAuthenticationType? _type;
  _i2.ClientVpnAuthenticationType? get type => _$this._type;
  set type(_i2.ClientVpnAuthenticationType? type) => _$this._type = type;

  _i3.DirectoryServiceAuthenticationRequestBuilder? _activeDirectory;
  _i3.DirectoryServiceAuthenticationRequestBuilder get activeDirectory =>
      _$this._activeDirectory ??=
          new _i3.DirectoryServiceAuthenticationRequestBuilder();
  set activeDirectory(
          _i3.DirectoryServiceAuthenticationRequestBuilder? activeDirectory) =>
      _$this._activeDirectory = activeDirectory;

  _i4.CertificateAuthenticationRequestBuilder? _mutualAuthentication;
  _i4.CertificateAuthenticationRequestBuilder get mutualAuthentication =>
      _$this._mutualAuthentication ??=
          new _i4.CertificateAuthenticationRequestBuilder();
  set mutualAuthentication(
          _i4.CertificateAuthenticationRequestBuilder? mutualAuthentication) =>
      _$this._mutualAuthentication = mutualAuthentication;

  _i5.FederatedAuthenticationRequestBuilder? _federatedAuthentication;
  _i5.FederatedAuthenticationRequestBuilder get federatedAuthentication =>
      _$this._federatedAuthentication ??=
          new _i5.FederatedAuthenticationRequestBuilder();
  set federatedAuthentication(
          _i5.FederatedAuthenticationRequestBuilder? federatedAuthentication) =>
      _$this._federatedAuthentication = federatedAuthentication;

  ClientVpnAuthenticationRequestBuilder() {
    ClientVpnAuthenticationRequest._init(this);
  }

  ClientVpnAuthenticationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _activeDirectory = $v.activeDirectory?.toBuilder();
      _mutualAuthentication = $v.mutualAuthentication?.toBuilder();
      _federatedAuthentication = $v.federatedAuthentication?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientVpnAuthenticationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientVpnAuthenticationRequest;
  }

  @override
  void update(void Function(ClientVpnAuthenticationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientVpnAuthenticationRequest build() => _build();

  _$ClientVpnAuthenticationRequest _build() {
    _$ClientVpnAuthenticationRequest _$result;
    try {
      _$result = _$v ??
          new _$ClientVpnAuthenticationRequest._(
              type: type,
              activeDirectory: _activeDirectory?.build(),
              mutualAuthentication: _mutualAuthentication?.build(),
              federatedAuthentication: _federatedAuthentication?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'activeDirectory';
        _activeDirectory?.build();
        _$failedField = 'mutualAuthentication';
        _mutualAuthentication?.build();
        _$failedField = 'federatedAuthentication';
        _federatedAuthentication?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ClientVpnAuthenticationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
