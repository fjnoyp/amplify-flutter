// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.ebs_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EbsInfo extends EbsInfo {
  @override
  final _i2.EbsOptimizedSupport? ebsOptimizedSupport;
  @override
  final _i3.EbsEncryptionSupport? encryptionSupport;
  @override
  final _i4.EbsOptimizedInfo? ebsOptimizedInfo;
  @override
  final _i5.EbsNvmeSupport? nvmeSupport;

  factory _$EbsInfo([void Function(EbsInfoBuilder)? updates]) =>
      (new EbsInfoBuilder()..update(updates))._build();

  _$EbsInfo._(
      {this.ebsOptimizedSupport,
      this.encryptionSupport,
      this.ebsOptimizedInfo,
      this.nvmeSupport})
      : super._();

  @override
  EbsInfo rebuild(void Function(EbsInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EbsInfoBuilder toBuilder() => new EbsInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EbsInfo &&
        ebsOptimizedSupport == other.ebsOptimizedSupport &&
        encryptionSupport == other.encryptionSupport &&
        ebsOptimizedInfo == other.ebsOptimizedInfo &&
        nvmeSupport == other.nvmeSupport;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ebsOptimizedSupport.hashCode);
    _$hash = $jc(_$hash, encryptionSupport.hashCode);
    _$hash = $jc(_$hash, ebsOptimizedInfo.hashCode);
    _$hash = $jc(_$hash, nvmeSupport.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EbsInfoBuilder implements Builder<EbsInfo, EbsInfoBuilder> {
  _$EbsInfo? _$v;

  _i2.EbsOptimizedSupport? _ebsOptimizedSupport;
  _i2.EbsOptimizedSupport? get ebsOptimizedSupport =>
      _$this._ebsOptimizedSupport;
  set ebsOptimizedSupport(_i2.EbsOptimizedSupport? ebsOptimizedSupport) =>
      _$this._ebsOptimizedSupport = ebsOptimizedSupport;

  _i3.EbsEncryptionSupport? _encryptionSupport;
  _i3.EbsEncryptionSupport? get encryptionSupport => _$this._encryptionSupport;
  set encryptionSupport(_i3.EbsEncryptionSupport? encryptionSupport) =>
      _$this._encryptionSupport = encryptionSupport;

  _i4.EbsOptimizedInfoBuilder? _ebsOptimizedInfo;
  _i4.EbsOptimizedInfoBuilder get ebsOptimizedInfo =>
      _$this._ebsOptimizedInfo ??= new _i4.EbsOptimizedInfoBuilder();
  set ebsOptimizedInfo(_i4.EbsOptimizedInfoBuilder? ebsOptimizedInfo) =>
      _$this._ebsOptimizedInfo = ebsOptimizedInfo;

  _i5.EbsNvmeSupport? _nvmeSupport;
  _i5.EbsNvmeSupport? get nvmeSupport => _$this._nvmeSupport;
  set nvmeSupport(_i5.EbsNvmeSupport? nvmeSupport) =>
      _$this._nvmeSupport = nvmeSupport;

  EbsInfoBuilder() {
    EbsInfo._init(this);
  }

  EbsInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ebsOptimizedSupport = $v.ebsOptimizedSupport;
      _encryptionSupport = $v.encryptionSupport;
      _ebsOptimizedInfo = $v.ebsOptimizedInfo?.toBuilder();
      _nvmeSupport = $v.nvmeSupport;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EbsInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EbsInfo;
  }

  @override
  void update(void Function(EbsInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EbsInfo build() => _build();

  _$EbsInfo _build() {
    _$EbsInfo _$result;
    try {
      _$result = _$v ??
          new _$EbsInfo._(
              ebsOptimizedSupport: ebsOptimizedSupport,
              encryptionSupport: encryptionSupport,
              ebsOptimizedInfo: _ebsOptimizedInfo?.build(),
              nvmeSupport: nvmeSupport);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ebsOptimizedInfo';
        _ebsOptimizedInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EbsInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
