// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_tags_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTagsResult extends DescribeTagsResult {
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<_i2.TagDescription>? tags;

  factory _$DescribeTagsResult(
          [void Function(DescribeTagsResultBuilder)? updates]) =>
      (new DescribeTagsResultBuilder()..update(updates))._build();

  _$DescribeTagsResult._({this.nextToken, this.tags}) : super._();

  @override
  DescribeTagsResult rebuild(
          void Function(DescribeTagsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTagsResultBuilder toBuilder() =>
      new DescribeTagsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTagsResult &&
        nextToken == other.nextToken &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTagsResultBuilder
    implements Builder<DescribeTagsResult, DescribeTagsResultBuilder> {
  _$DescribeTagsResult? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<_i2.TagDescription>? _tags;
  _i3.ListBuilder<_i2.TagDescription> get tags =>
      _$this._tags ??= new _i3.ListBuilder<_i2.TagDescription>();
  set tags(_i3.ListBuilder<_i2.TagDescription>? tags) => _$this._tags = tags;

  DescribeTagsResultBuilder() {
    DescribeTagsResult._init(this);
  }

  DescribeTagsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTagsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTagsResult;
  }

  @override
  void update(void Function(DescribeTagsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTagsResult build() => _build();

  _$DescribeTagsResult _build() {
    _$DescribeTagsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeTagsResult._(
              nextToken: nextToken, tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTagsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
