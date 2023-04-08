// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.dns_options_specification;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DnsOptionsSpecification extends DnsOptionsSpecification {
  @override
  final _i2.DnsRecordIpType? dnsRecordIpType;

  factory _$DnsOptionsSpecification(
          [void Function(DnsOptionsSpecificationBuilder)? updates]) =>
      (new DnsOptionsSpecificationBuilder()..update(updates))._build();

  _$DnsOptionsSpecification._({this.dnsRecordIpType}) : super._();

  @override
  DnsOptionsSpecification rebuild(
          void Function(DnsOptionsSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DnsOptionsSpecificationBuilder toBuilder() =>
      new DnsOptionsSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DnsOptionsSpecification &&
        dnsRecordIpType == other.dnsRecordIpType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dnsRecordIpType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DnsOptionsSpecificationBuilder
    implements
        Builder<DnsOptionsSpecification, DnsOptionsSpecificationBuilder> {
  _$DnsOptionsSpecification? _$v;

  _i2.DnsRecordIpType? _dnsRecordIpType;
  _i2.DnsRecordIpType? get dnsRecordIpType => _$this._dnsRecordIpType;
  set dnsRecordIpType(_i2.DnsRecordIpType? dnsRecordIpType) =>
      _$this._dnsRecordIpType = dnsRecordIpType;

  DnsOptionsSpecificationBuilder() {
    DnsOptionsSpecification._init(this);
  }

  DnsOptionsSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dnsRecordIpType = $v.dnsRecordIpType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DnsOptionsSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DnsOptionsSpecification;
  }

  @override
  void update(void Function(DnsOptionsSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DnsOptionsSpecification build() => _build();

  _$DnsOptionsSpecification _build() {
    final _$result = _$v ??
        new _$DnsOptionsSpecification._(dnsRecordIpType: dnsRecordIpType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
