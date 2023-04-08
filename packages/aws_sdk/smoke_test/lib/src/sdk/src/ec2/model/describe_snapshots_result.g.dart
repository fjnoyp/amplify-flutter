// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_snapshots_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSnapshotsResult extends DescribeSnapshotsResult {
  @override
  final _i3.BuiltList<_i2.Snapshot>? snapshots;
  @override
  final String? nextToken;

  factory _$DescribeSnapshotsResult(
          [void Function(DescribeSnapshotsResultBuilder)? updates]) =>
      (new DescribeSnapshotsResultBuilder()..update(updates))._build();

  _$DescribeSnapshotsResult._({this.snapshots, this.nextToken}) : super._();

  @override
  DescribeSnapshotsResult rebuild(
          void Function(DescribeSnapshotsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSnapshotsResultBuilder toBuilder() =>
      new DescribeSnapshotsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSnapshotsResult &&
        snapshots == other.snapshots &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, snapshots.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSnapshotsResultBuilder
    implements
        Builder<DescribeSnapshotsResult, DescribeSnapshotsResultBuilder> {
  _$DescribeSnapshotsResult? _$v;

  _i3.ListBuilder<_i2.Snapshot>? _snapshots;
  _i3.ListBuilder<_i2.Snapshot> get snapshots =>
      _$this._snapshots ??= new _i3.ListBuilder<_i2.Snapshot>();
  set snapshots(_i3.ListBuilder<_i2.Snapshot>? snapshots) =>
      _$this._snapshots = snapshots;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeSnapshotsResultBuilder() {
    DescribeSnapshotsResult._init(this);
  }

  DescribeSnapshotsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _snapshots = $v.snapshots?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSnapshotsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSnapshotsResult;
  }

  @override
  void update(void Function(DescribeSnapshotsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSnapshotsResult build() => _build();

  _$DescribeSnapshotsResult _build() {
    _$DescribeSnapshotsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeSnapshotsResult._(
              snapshots: _snapshots?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'snapshots';
        _snapshots?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSnapshotsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
