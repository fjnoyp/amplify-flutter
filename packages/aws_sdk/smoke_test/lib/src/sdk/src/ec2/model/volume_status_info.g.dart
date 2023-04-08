// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.volume_status_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VolumeStatusInfo extends VolumeStatusInfo {
  @override
  final _i4.BuiltList<_i2.VolumeStatusDetails>? details;
  @override
  final _i3.VolumeStatusInfoStatus? status;

  factory _$VolumeStatusInfo(
          [void Function(VolumeStatusInfoBuilder)? updates]) =>
      (new VolumeStatusInfoBuilder()..update(updates))._build();

  _$VolumeStatusInfo._({this.details, this.status}) : super._();

  @override
  VolumeStatusInfo rebuild(void Function(VolumeStatusInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VolumeStatusInfoBuilder toBuilder() =>
      new VolumeStatusInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VolumeStatusInfo &&
        details == other.details &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VolumeStatusInfoBuilder
    implements Builder<VolumeStatusInfo, VolumeStatusInfoBuilder> {
  _$VolumeStatusInfo? _$v;

  _i4.ListBuilder<_i2.VolumeStatusDetails>? _details;
  _i4.ListBuilder<_i2.VolumeStatusDetails> get details =>
      _$this._details ??= new _i4.ListBuilder<_i2.VolumeStatusDetails>();
  set details(_i4.ListBuilder<_i2.VolumeStatusDetails>? details) =>
      _$this._details = details;

  _i3.VolumeStatusInfoStatus? _status;
  _i3.VolumeStatusInfoStatus? get status => _$this._status;
  set status(_i3.VolumeStatusInfoStatus? status) => _$this._status = status;

  VolumeStatusInfoBuilder() {
    VolumeStatusInfo._init(this);
  }

  VolumeStatusInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _details = $v.details?.toBuilder();
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VolumeStatusInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VolumeStatusInfo;
  }

  @override
  void update(void Function(VolumeStatusInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VolumeStatusInfo build() => _build();

  _$VolumeStatusInfo _build() {
    _$VolumeStatusInfo _$result;
    try {
      _$result = _$v ??
          new _$VolumeStatusInfo._(details: _details?.build(), status: status);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VolumeStatusInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
