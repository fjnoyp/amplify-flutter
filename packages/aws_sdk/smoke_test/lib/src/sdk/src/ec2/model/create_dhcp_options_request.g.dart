// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_dhcp_options_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateDhcpOptionsRequest extends CreateDhcpOptionsRequest {
  @override
  final _i5.BuiltList<_i3.NewDhcpConfiguration> dhcpConfigurations;
  @override
  final _i5.BuiltList<_i4.TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$CreateDhcpOptionsRequest(
          [void Function(CreateDhcpOptionsRequestBuilder)? updates]) =>
      (new CreateDhcpOptionsRequestBuilder()..update(updates))._build();

  _$CreateDhcpOptionsRequest._(
      {required this.dhcpConfigurations,
      this.tagSpecifications,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dhcpConfigurations, r'CreateDhcpOptionsRequest', 'dhcpConfigurations');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateDhcpOptionsRequest', 'dryRun');
  }

  @override
  CreateDhcpOptionsRequest rebuild(
          void Function(CreateDhcpOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateDhcpOptionsRequestBuilder toBuilder() =>
      new CreateDhcpOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateDhcpOptionsRequest &&
        dhcpConfigurations == other.dhcpConfigurations &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dhcpConfigurations.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateDhcpOptionsRequestBuilder
    implements
        Builder<CreateDhcpOptionsRequest, CreateDhcpOptionsRequestBuilder> {
  _$CreateDhcpOptionsRequest? _$v;

  _i5.ListBuilder<_i3.NewDhcpConfiguration>? _dhcpConfigurations;
  _i5.ListBuilder<_i3.NewDhcpConfiguration> get dhcpConfigurations =>
      _$this._dhcpConfigurations ??=
          new _i5.ListBuilder<_i3.NewDhcpConfiguration>();
  set dhcpConfigurations(
          _i5.ListBuilder<_i3.NewDhcpConfiguration>? dhcpConfigurations) =>
      _$this._dhcpConfigurations = dhcpConfigurations;

  _i5.ListBuilder<_i4.TagSpecification>? _tagSpecifications;
  _i5.ListBuilder<_i4.TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i5.ListBuilder<_i4.TagSpecification>();
  set tagSpecifications(
          _i5.ListBuilder<_i4.TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateDhcpOptionsRequestBuilder() {
    CreateDhcpOptionsRequest._init(this);
  }

  CreateDhcpOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dhcpConfigurations = $v.dhcpConfigurations.toBuilder();
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateDhcpOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateDhcpOptionsRequest;
  }

  @override
  void update(void Function(CreateDhcpOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateDhcpOptionsRequest build() => _build();

  _$CreateDhcpOptionsRequest _build() {
    _$CreateDhcpOptionsRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateDhcpOptionsRequest._(
              dhcpConfigurations: dhcpConfigurations.build(),
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateDhcpOptionsRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dhcpConfigurations';
        dhcpConfigurations.build();
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateDhcpOptionsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
