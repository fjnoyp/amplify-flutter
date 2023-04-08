// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.tag_specification;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagSpecification extends TagSpecification {
  @override
  final _i2.ResourceType? resourceType;
  @override
  final _i4.BuiltList<_i3.Tag>? tags;

  factory _$TagSpecification(
          [void Function(TagSpecificationBuilder)? updates]) =>
      (new TagSpecificationBuilder()..update(updates))._build();

  _$TagSpecification._({this.resourceType, this.tags}) : super._();

  @override
  TagSpecification rebuild(void Function(TagSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagSpecificationBuilder toBuilder() =>
      new TagSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagSpecification &&
        resourceType == other.resourceType &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TagSpecificationBuilder
    implements Builder<TagSpecification, TagSpecificationBuilder> {
  _$TagSpecification? _$v;

  _i2.ResourceType? _resourceType;
  _i2.ResourceType? get resourceType => _$this._resourceType;
  set resourceType(_i2.ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  TagSpecificationBuilder() {
    TagSpecification._init(this);
  }

  TagSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceType = $v.resourceType;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TagSpecification;
  }

  @override
  void update(void Function(TagSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagSpecification build() => _build();

  _$TagSpecification _build() {
    _$TagSpecification _$result;
    try {
      _$result = _$v ??
          new _$TagSpecification._(
              resourceType: resourceType, tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TagSpecification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
