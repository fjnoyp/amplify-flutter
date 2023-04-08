// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.import_volume_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportVolumeResult extends ImportVolumeResult {
  @override
  final _i2.ConversionTask? conversionTask;

  factory _$ImportVolumeResult(
          [void Function(ImportVolumeResultBuilder)? updates]) =>
      (new ImportVolumeResultBuilder()..update(updates))._build();

  _$ImportVolumeResult._({this.conversionTask}) : super._();

  @override
  ImportVolumeResult rebuild(
          void Function(ImportVolumeResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportVolumeResultBuilder toBuilder() =>
      new ImportVolumeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportVolumeResult &&
        conversionTask == other.conversionTask;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conversionTask.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportVolumeResultBuilder
    implements Builder<ImportVolumeResult, ImportVolumeResultBuilder> {
  _$ImportVolumeResult? _$v;

  _i2.ConversionTaskBuilder? _conversionTask;
  _i2.ConversionTaskBuilder get conversionTask =>
      _$this._conversionTask ??= new _i2.ConversionTaskBuilder();
  set conversionTask(_i2.ConversionTaskBuilder? conversionTask) =>
      _$this._conversionTask = conversionTask;

  ImportVolumeResultBuilder() {
    ImportVolumeResult._init(this);
  }

  ImportVolumeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conversionTask = $v.conversionTask?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportVolumeResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportVolumeResult;
  }

  @override
  void update(void Function(ImportVolumeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportVolumeResult build() => _build();

  _$ImportVolumeResult _build() {
    _$ImportVolumeResult _$result;
    try {
      _$result = _$v ??
          new _$ImportVolumeResult._(conversionTask: _conversionTask?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conversionTask';
        _conversionTask?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImportVolumeResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
