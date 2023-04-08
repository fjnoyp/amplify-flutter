// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.launch_template_tag_specification;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateTagSpecification extends LaunchTemplateTagSpecification {
  @override
  final _i2.ResourceType? resourceType;
  @override
  final _i4.BuiltList<_i3.Tag>? tags;

  factory _$LaunchTemplateTagSpecification(
          [void Function(LaunchTemplateTagSpecificationBuilder)? updates]) =>
      (new LaunchTemplateTagSpecificationBuilder()..update(updates))._build();

  _$LaunchTemplateTagSpecification._({this.resourceType, this.tags})
      : super._();

  @override
  LaunchTemplateTagSpecification rebuild(
          void Function(LaunchTemplateTagSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateTagSpecificationBuilder toBuilder() =>
      new LaunchTemplateTagSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateTagSpecification &&
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

class LaunchTemplateTagSpecificationBuilder
    implements
        Builder<LaunchTemplateTagSpecification,
            LaunchTemplateTagSpecificationBuilder> {
  _$LaunchTemplateTagSpecification? _$v;

  _i2.ResourceType? _resourceType;
  _i2.ResourceType? get resourceType => _$this._resourceType;
  set resourceType(_i2.ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  LaunchTemplateTagSpecificationBuilder() {
    LaunchTemplateTagSpecification._init(this);
  }

  LaunchTemplateTagSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceType = $v.resourceType;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateTagSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateTagSpecification;
  }

  @override
  void update(void Function(LaunchTemplateTagSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateTagSpecification build() => _build();

  _$LaunchTemplateTagSpecification _build() {
    _$LaunchTemplateTagSpecification _$result;
    try {
      _$result = _$v ??
          new _$LaunchTemplateTagSpecification._(
              resourceType: resourceType, tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LaunchTemplateTagSpecification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
