// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_fast_snapshot_restores_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeFastSnapshotRestoresResult
    extends DescribeFastSnapshotRestoresResult {
  @override
  final _i3.BuiltList<_i2.DescribeFastSnapshotRestoreSuccessItem>?
      fastSnapshotRestores;
  @override
  final String? nextToken;

  factory _$DescribeFastSnapshotRestoresResult(
          [void Function(DescribeFastSnapshotRestoresResultBuilder)?
              updates]) =>
      (new DescribeFastSnapshotRestoresResultBuilder()..update(updates))
          ._build();

  _$DescribeFastSnapshotRestoresResult._(
      {this.fastSnapshotRestores, this.nextToken})
      : super._();

  @override
  DescribeFastSnapshotRestoresResult rebuild(
          void Function(DescribeFastSnapshotRestoresResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeFastSnapshotRestoresResultBuilder toBuilder() =>
      new DescribeFastSnapshotRestoresResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeFastSnapshotRestoresResult &&
        fastSnapshotRestores == other.fastSnapshotRestores &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fastSnapshotRestores.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeFastSnapshotRestoresResultBuilder
    implements
        Builder<DescribeFastSnapshotRestoresResult,
            DescribeFastSnapshotRestoresResultBuilder> {
  _$DescribeFastSnapshotRestoresResult? _$v;

  _i3.ListBuilder<_i2.DescribeFastSnapshotRestoreSuccessItem>?
      _fastSnapshotRestores;
  _i3.ListBuilder<_i2.DescribeFastSnapshotRestoreSuccessItem>
      get fastSnapshotRestores => _$this._fastSnapshotRestores ??=
          new _i3.ListBuilder<_i2.DescribeFastSnapshotRestoreSuccessItem>();
  set fastSnapshotRestores(
          _i3.ListBuilder<_i2.DescribeFastSnapshotRestoreSuccessItem>?
              fastSnapshotRestores) =>
      _$this._fastSnapshotRestores = fastSnapshotRestores;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeFastSnapshotRestoresResultBuilder() {
    DescribeFastSnapshotRestoresResult._init(this);
  }

  DescribeFastSnapshotRestoresResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fastSnapshotRestores = $v.fastSnapshotRestores?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeFastSnapshotRestoresResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeFastSnapshotRestoresResult;
  }

  @override
  void update(
      void Function(DescribeFastSnapshotRestoresResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeFastSnapshotRestoresResult build() => _build();

  _$DescribeFastSnapshotRestoresResult _build() {
    _$DescribeFastSnapshotRestoresResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeFastSnapshotRestoresResult._(
              fastSnapshotRestores: _fastSnapshotRestores?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fastSnapshotRestores';
        _fastSnapshotRestores?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeFastSnapshotRestoresResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
