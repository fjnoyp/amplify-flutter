// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.launch_template_cpu_options_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateCpuOptionsRequest
    extends LaunchTemplateCpuOptionsRequest {
  @override
  final int coreCount;
  @override
  final int threadsPerCore;

  factory _$LaunchTemplateCpuOptionsRequest(
          [void Function(LaunchTemplateCpuOptionsRequestBuilder)? updates]) =>
      (new LaunchTemplateCpuOptionsRequestBuilder()..update(updates))._build();

  _$LaunchTemplateCpuOptionsRequest._(
      {required this.coreCount, required this.threadsPerCore})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        coreCount, r'LaunchTemplateCpuOptionsRequest', 'coreCount');
    BuiltValueNullFieldError.checkNotNull(
        threadsPerCore, r'LaunchTemplateCpuOptionsRequest', 'threadsPerCore');
  }

  @override
  LaunchTemplateCpuOptionsRequest rebuild(
          void Function(LaunchTemplateCpuOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateCpuOptionsRequestBuilder toBuilder() =>
      new LaunchTemplateCpuOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateCpuOptionsRequest &&
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

class LaunchTemplateCpuOptionsRequestBuilder
    implements
        Builder<LaunchTemplateCpuOptionsRequest,
            LaunchTemplateCpuOptionsRequestBuilder> {
  _$LaunchTemplateCpuOptionsRequest? _$v;

  int? _coreCount;
  int? get coreCount => _$this._coreCount;
  set coreCount(int? coreCount) => _$this._coreCount = coreCount;

  int? _threadsPerCore;
  int? get threadsPerCore => _$this._threadsPerCore;
  set threadsPerCore(int? threadsPerCore) =>
      _$this._threadsPerCore = threadsPerCore;

  LaunchTemplateCpuOptionsRequestBuilder() {
    LaunchTemplateCpuOptionsRequest._init(this);
  }

  LaunchTemplateCpuOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coreCount = $v.coreCount;
      _threadsPerCore = $v.threadsPerCore;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateCpuOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateCpuOptionsRequest;
  }

  @override
  void update(void Function(LaunchTemplateCpuOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateCpuOptionsRequest build() => _build();

  _$LaunchTemplateCpuOptionsRequest _build() {
    final _$result = _$v ??
        new _$LaunchTemplateCpuOptionsRequest._(
            coreCount: BuiltValueNullFieldError.checkNotNull(
                coreCount, r'LaunchTemplateCpuOptionsRequest', 'coreCount'),
            threadsPerCore: BuiltValueNullFieldError.checkNotNull(
                threadsPerCore,
                r'LaunchTemplateCpuOptionsRequest',
                'threadsPerCore'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
