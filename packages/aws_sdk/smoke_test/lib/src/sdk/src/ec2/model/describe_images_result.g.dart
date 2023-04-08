// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_images_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeImagesResult extends DescribeImagesResult {
  @override
  final _i3.BuiltList<_i2.Image>? images;

  factory _$DescribeImagesResult(
          [void Function(DescribeImagesResultBuilder)? updates]) =>
      (new DescribeImagesResultBuilder()..update(updates))._build();

  _$DescribeImagesResult._({this.images}) : super._();

  @override
  DescribeImagesResult rebuild(
          void Function(DescribeImagesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeImagesResultBuilder toBuilder() =>
      new DescribeImagesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeImagesResult && images == other.images;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeImagesResultBuilder
    implements Builder<DescribeImagesResult, DescribeImagesResultBuilder> {
  _$DescribeImagesResult? _$v;

  _i3.ListBuilder<_i2.Image>? _images;
  _i3.ListBuilder<_i2.Image> get images =>
      _$this._images ??= new _i3.ListBuilder<_i2.Image>();
  set images(_i3.ListBuilder<_i2.Image>? images) => _$this._images = images;

  DescribeImagesResultBuilder() {
    DescribeImagesResult._init(this);
  }

  DescribeImagesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _images = $v.images?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeImagesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeImagesResult;
  }

  @override
  void update(void Function(DescribeImagesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeImagesResult build() => _build();

  _$DescribeImagesResult _build() {
    _$DescribeImagesResult _$result;
    try {
      _$result = _$v ?? new _$DescribeImagesResult._(images: _images?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeImagesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
