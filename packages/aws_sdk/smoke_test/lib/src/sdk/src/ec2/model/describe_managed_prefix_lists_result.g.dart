// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_managed_prefix_lists_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeManagedPrefixListsResult
    extends DescribeManagedPrefixListsResult {
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<_i2.ManagedPrefixList>? prefixLists;

  factory _$DescribeManagedPrefixListsResult(
          [void Function(DescribeManagedPrefixListsResultBuilder)? updates]) =>
      (new DescribeManagedPrefixListsResultBuilder()..update(updates))._build();

  _$DescribeManagedPrefixListsResult._({this.nextToken, this.prefixLists})
      : super._();

  @override
  DescribeManagedPrefixListsResult rebuild(
          void Function(DescribeManagedPrefixListsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeManagedPrefixListsResultBuilder toBuilder() =>
      new DescribeManagedPrefixListsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeManagedPrefixListsResult &&
        nextToken == other.nextToken &&
        prefixLists == other.prefixLists;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, prefixLists.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeManagedPrefixListsResultBuilder
    implements
        Builder<DescribeManagedPrefixListsResult,
            DescribeManagedPrefixListsResultBuilder> {
  _$DescribeManagedPrefixListsResult? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<_i2.ManagedPrefixList>? _prefixLists;
  _i3.ListBuilder<_i2.ManagedPrefixList> get prefixLists =>
      _$this._prefixLists ??= new _i3.ListBuilder<_i2.ManagedPrefixList>();
  set prefixLists(_i3.ListBuilder<_i2.ManagedPrefixList>? prefixLists) =>
      _$this._prefixLists = prefixLists;

  DescribeManagedPrefixListsResultBuilder() {
    DescribeManagedPrefixListsResult._init(this);
  }

  DescribeManagedPrefixListsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _prefixLists = $v.prefixLists?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeManagedPrefixListsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeManagedPrefixListsResult;
  }

  @override
  void update(void Function(DescribeManagedPrefixListsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeManagedPrefixListsResult build() => _build();

  _$DescribeManagedPrefixListsResult _build() {
    _$DescribeManagedPrefixListsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeManagedPrefixListsResult._(
              nextToken: nextToken, prefixLists: _prefixLists?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prefixLists';
        _prefixLists?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeManagedPrefixListsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
