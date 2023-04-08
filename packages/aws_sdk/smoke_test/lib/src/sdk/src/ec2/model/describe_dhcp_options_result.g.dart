// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_dhcp_options_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeDhcpOptionsResult extends DescribeDhcpOptionsResult {
  @override
  final _i3.BuiltList<_i2.DhcpOptions>? dhcpOptions;
  @override
  final String? nextToken;

  factory _$DescribeDhcpOptionsResult(
          [void Function(DescribeDhcpOptionsResultBuilder)? updates]) =>
      (new DescribeDhcpOptionsResultBuilder()..update(updates))._build();

  _$DescribeDhcpOptionsResult._({this.dhcpOptions, this.nextToken}) : super._();

  @override
  DescribeDhcpOptionsResult rebuild(
          void Function(DescribeDhcpOptionsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeDhcpOptionsResultBuilder toBuilder() =>
      new DescribeDhcpOptionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeDhcpOptionsResult &&
        dhcpOptions == other.dhcpOptions &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dhcpOptions.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeDhcpOptionsResultBuilder
    implements
        Builder<DescribeDhcpOptionsResult, DescribeDhcpOptionsResultBuilder> {
  _$DescribeDhcpOptionsResult? _$v;

  _i3.ListBuilder<_i2.DhcpOptions>? _dhcpOptions;
  _i3.ListBuilder<_i2.DhcpOptions> get dhcpOptions =>
      _$this._dhcpOptions ??= new _i3.ListBuilder<_i2.DhcpOptions>();
  set dhcpOptions(_i3.ListBuilder<_i2.DhcpOptions>? dhcpOptions) =>
      _$this._dhcpOptions = dhcpOptions;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeDhcpOptionsResultBuilder() {
    DescribeDhcpOptionsResult._init(this);
  }

  DescribeDhcpOptionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dhcpOptions = $v.dhcpOptions?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeDhcpOptionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeDhcpOptionsResult;
  }

  @override
  void update(void Function(DescribeDhcpOptionsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeDhcpOptionsResult build() => _build();

  _$DescribeDhcpOptionsResult _build() {
    _$DescribeDhcpOptionsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeDhcpOptionsResult._(
              dhcpOptions: _dhcpOptions?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dhcpOptions';
        _dhcpOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeDhcpOptionsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
