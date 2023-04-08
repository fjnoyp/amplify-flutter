// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.dns_options;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DnsOptions extends DnsOptions {
  @override
  final _i2.DnsRecordIpType? dnsRecordIpType;

  factory _$DnsOptions([void Function(DnsOptionsBuilder)? updates]) =>
      (new DnsOptionsBuilder()..update(updates))._build();

  _$DnsOptions._({this.dnsRecordIpType}) : super._();

  @override
  DnsOptions rebuild(void Function(DnsOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DnsOptionsBuilder toBuilder() => new DnsOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DnsOptions && dnsRecordIpType == other.dnsRecordIpType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dnsRecordIpType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DnsOptionsBuilder implements Builder<DnsOptions, DnsOptionsBuilder> {
  _$DnsOptions? _$v;

  _i2.DnsRecordIpType? _dnsRecordIpType;
  _i2.DnsRecordIpType? get dnsRecordIpType => _$this._dnsRecordIpType;
  set dnsRecordIpType(_i2.DnsRecordIpType? dnsRecordIpType) =>
      _$this._dnsRecordIpType = dnsRecordIpType;

  DnsOptionsBuilder() {
    DnsOptions._init(this);
  }

  DnsOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dnsRecordIpType = $v.dnsRecordIpType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DnsOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DnsOptions;
  }

  @override
  void update(void Function(DnsOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DnsOptions build() => _build();

  _$DnsOptions _build() {
    final _$result =
        _$v ?? new _$DnsOptions._(dnsRecordIpType: dnsRecordIpType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
