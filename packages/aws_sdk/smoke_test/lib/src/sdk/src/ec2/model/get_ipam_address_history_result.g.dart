// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.get_ipam_address_history_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetIpamAddressHistoryResult extends GetIpamAddressHistoryResult {
  @override
  final _i3.BuiltList<_i2.IpamAddressHistoryRecord>? historyRecords;
  @override
  final String? nextToken;

  factory _$GetIpamAddressHistoryResult(
          [void Function(GetIpamAddressHistoryResultBuilder)? updates]) =>
      (new GetIpamAddressHistoryResultBuilder()..update(updates))._build();

  _$GetIpamAddressHistoryResult._({this.historyRecords, this.nextToken})
      : super._();

  @override
  GetIpamAddressHistoryResult rebuild(
          void Function(GetIpamAddressHistoryResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIpamAddressHistoryResultBuilder toBuilder() =>
      new GetIpamAddressHistoryResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIpamAddressHistoryResult &&
        historyRecords == other.historyRecords &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, historyRecords.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetIpamAddressHistoryResultBuilder
    implements
        Builder<GetIpamAddressHistoryResult,
            GetIpamAddressHistoryResultBuilder> {
  _$GetIpamAddressHistoryResult? _$v;

  _i3.ListBuilder<_i2.IpamAddressHistoryRecord>? _historyRecords;
  _i3.ListBuilder<_i2.IpamAddressHistoryRecord> get historyRecords =>
      _$this._historyRecords ??=
          new _i3.ListBuilder<_i2.IpamAddressHistoryRecord>();
  set historyRecords(
          _i3.ListBuilder<_i2.IpamAddressHistoryRecord>? historyRecords) =>
      _$this._historyRecords = historyRecords;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetIpamAddressHistoryResultBuilder() {
    GetIpamAddressHistoryResult._init(this);
  }

  GetIpamAddressHistoryResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _historyRecords = $v.historyRecords?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetIpamAddressHistoryResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetIpamAddressHistoryResult;
  }

  @override
  void update(void Function(GetIpamAddressHistoryResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetIpamAddressHistoryResult build() => _build();

  _$GetIpamAddressHistoryResult _build() {
    _$GetIpamAddressHistoryResult _$result;
    try {
      _$result = _$v ??
          new _$GetIpamAddressHistoryResult._(
              historyRecords: _historyRecords?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'historyRecords';
        _historyRecords?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetIpamAddressHistoryResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
