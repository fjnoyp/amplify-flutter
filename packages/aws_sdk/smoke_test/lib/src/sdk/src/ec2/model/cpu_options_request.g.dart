// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.cpu_options_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CpuOptionsRequest extends CpuOptionsRequest {
  @override
  final int coreCount;
  @override
  final int threadsPerCore;

  factory _$CpuOptionsRequest(
          [void Function(CpuOptionsRequestBuilder)? updates]) =>
      (new CpuOptionsRequestBuilder()..update(updates))._build();

  _$CpuOptionsRequest._({required this.coreCount, required this.threadsPerCore})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        coreCount, r'CpuOptionsRequest', 'coreCount');
    BuiltValueNullFieldError.checkNotNull(
        threadsPerCore, r'CpuOptionsRequest', 'threadsPerCore');
  }

  @override
  CpuOptionsRequest rebuild(void Function(CpuOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CpuOptionsRequestBuilder toBuilder() =>
      new CpuOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpuOptionsRequest &&
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

class CpuOptionsRequestBuilder
    implements Builder<CpuOptionsRequest, CpuOptionsRequestBuilder> {
  _$CpuOptionsRequest? _$v;

  int? _coreCount;
  int? get coreCount => _$this._coreCount;
  set coreCount(int? coreCount) => _$this._coreCount = coreCount;

  int? _threadsPerCore;
  int? get threadsPerCore => _$this._threadsPerCore;
  set threadsPerCore(int? threadsPerCore) =>
      _$this._threadsPerCore = threadsPerCore;

  CpuOptionsRequestBuilder() {
    CpuOptionsRequest._init(this);
  }

  CpuOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coreCount = $v.coreCount;
      _threadsPerCore = $v.threadsPerCore;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CpuOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CpuOptionsRequest;
  }

  @override
  void update(void Function(CpuOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CpuOptionsRequest build() => _build();

  _$CpuOptionsRequest _build() {
    final _$result = _$v ??
        new _$CpuOptionsRequest._(
            coreCount: BuiltValueNullFieldError.checkNotNull(
                coreCount, r'CpuOptionsRequest', 'coreCount'),
            threadsPerCore: BuiltValueNullFieldError.checkNotNull(
                threadsPerCore, r'CpuOptionsRequest', 'threadsPerCore'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
