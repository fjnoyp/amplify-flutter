// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_dhcp_options_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateDhcpOptionsResult extends CreateDhcpOptionsResult {
  @override
  final _i2.DhcpOptions? dhcpOptions;

  factory _$CreateDhcpOptionsResult(
          [void Function(CreateDhcpOptionsResultBuilder)? updates]) =>
      (new CreateDhcpOptionsResultBuilder()..update(updates))._build();

  _$CreateDhcpOptionsResult._({this.dhcpOptions}) : super._();

  @override
  CreateDhcpOptionsResult rebuild(
          void Function(CreateDhcpOptionsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateDhcpOptionsResultBuilder toBuilder() =>
      new CreateDhcpOptionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateDhcpOptionsResult && dhcpOptions == other.dhcpOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dhcpOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateDhcpOptionsResultBuilder
    implements
        Builder<CreateDhcpOptionsResult, CreateDhcpOptionsResultBuilder> {
  _$CreateDhcpOptionsResult? _$v;

  _i2.DhcpOptionsBuilder? _dhcpOptions;
  _i2.DhcpOptionsBuilder get dhcpOptions =>
      _$this._dhcpOptions ??= new _i2.DhcpOptionsBuilder();
  set dhcpOptions(_i2.DhcpOptionsBuilder? dhcpOptions) =>
      _$this._dhcpOptions = dhcpOptions;

  CreateDhcpOptionsResultBuilder() {
    CreateDhcpOptionsResult._init(this);
  }

  CreateDhcpOptionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dhcpOptions = $v.dhcpOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateDhcpOptionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateDhcpOptionsResult;
  }

  @override
  void update(void Function(CreateDhcpOptionsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateDhcpOptionsResult build() => _build();

  _$CreateDhcpOptionsResult _build() {
    _$CreateDhcpOptionsResult _$result;
    try {
      _$result = _$v ??
          new _$CreateDhcpOptionsResult._(dhcpOptions: _dhcpOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dhcpOptions';
        _dhcpOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateDhcpOptionsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
