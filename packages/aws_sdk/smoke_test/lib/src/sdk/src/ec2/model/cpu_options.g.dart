// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.cpu_options;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CpuOptions extends CpuOptions {
  @override
  final int coreCount;
  @override
  final int threadsPerCore;

  factory _$CpuOptions([void Function(CpuOptionsBuilder)? updates]) =>
      (new CpuOptionsBuilder()..update(updates))._build();

  _$CpuOptions._({required this.coreCount, required this.threadsPerCore})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        coreCount, r'CpuOptions', 'coreCount');
    BuiltValueNullFieldError.checkNotNull(
        threadsPerCore, r'CpuOptions', 'threadsPerCore');
  }

  @override
  CpuOptions rebuild(void Function(CpuOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CpuOptionsBuilder toBuilder() => new CpuOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpuOptions &&
        coreCount == other.coreCount &&
        threadsPerCore == other.threadsPerCore;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, coreCount.hashCode);
    _$hash = $jc(_$hash, threadsPerCore.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CpuOptionsBuilder implements Builder<CpuOptions, CpuOptionsBuilder> {
  _$CpuOptions? _$v;

  int? _coreCount;
  int? get coreCount => _$this._coreCount;
  set coreCount(int? coreCount) => _$this._coreCount = coreCount;

  int? _threadsPerCore;
  int? get threadsPerCore => _$this._threadsPerCore;
  set threadsPerCore(int? threadsPerCore) =>
      _$this._threadsPerCore = threadsPerCore;

  CpuOptionsBuilder() {
    CpuOptions._init(this);
  }

  CpuOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coreCount = $v.coreCount;
      _threadsPerCore = $v.threadsPerCore;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CpuOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CpuOptions;
  }

  @override
  void update(void Function(CpuOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CpuOptions build() => _build();

  _$CpuOptions _build() {
    final _$result = _$v ??
        new _$CpuOptions._(
            coreCount: BuiltValueNullFieldError.checkNotNull(
                coreCount, r'CpuOptions', 'coreCount'),
            threadsPerCore: BuiltValueNullFieldError.checkNotNull(
                threadsPerCore, r'CpuOptions', 'threadsPerCore'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
