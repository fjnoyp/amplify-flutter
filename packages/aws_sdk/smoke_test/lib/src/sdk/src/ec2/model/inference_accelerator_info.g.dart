// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.inference_accelerator_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InferenceAcceleratorInfo extends InferenceAcceleratorInfo {
  @override
  final _i3.BuiltList<_i2.InferenceDeviceInfo>? accelerators;

  factory _$InferenceAcceleratorInfo(
          [void Function(InferenceAcceleratorInfoBuilder)? updates]) =>
      (new InferenceAcceleratorInfoBuilder()..update(updates))._build();

  _$InferenceAcceleratorInfo._({this.accelerators}) : super._();

  @override
  InferenceAcceleratorInfo rebuild(
          void Function(InferenceAcceleratorInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InferenceAcceleratorInfoBuilder toBuilder() =>
      new InferenceAcceleratorInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InferenceAcceleratorInfo &&
        accelerators == other.accelerators;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accelerators.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InferenceAcceleratorInfoBuilder
    implements
        Builder<InferenceAcceleratorInfo, InferenceAcceleratorInfoBuilder> {
  _$InferenceAcceleratorInfo? _$v;

  _i3.ListBuilder<_i2.InferenceDeviceInfo>? _accelerators;
  _i3.ListBuilder<_i2.InferenceDeviceInfo> get accelerators =>
      _$this._accelerators ??= new _i3.ListBuilder<_i2.InferenceDeviceInfo>();
  set accelerators(_i3.ListBuilder<_i2.InferenceDeviceInfo>? accelerators) =>
      _$this._accelerators = accelerators;

  InferenceAcceleratorInfoBuilder() {
    InferenceAcceleratorInfo._init(this);
  }

  InferenceAcceleratorInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accelerators = $v.accelerators?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InferenceAcceleratorInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InferenceAcceleratorInfo;
  }

  @override
  void update(void Function(InferenceAcceleratorInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InferenceAcceleratorInfo build() => _build();

  _$InferenceAcceleratorInfo _build() {
    _$InferenceAcceleratorInfo _$result;
    try {
      _$result = _$v ??
          new _$InferenceAcceleratorInfo._(
              accelerators: _accelerators?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accelerators';
        _accelerators?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InferenceAcceleratorInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
