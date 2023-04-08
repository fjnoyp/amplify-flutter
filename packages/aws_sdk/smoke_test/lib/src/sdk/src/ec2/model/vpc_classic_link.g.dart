// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.vpc_classic_link;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VpcClassicLink extends VpcClassicLink {
  @override
  final bool classicLinkEnabled;
  @override
  final _i3.BuiltList<_i2.Tag>? tags;
  @override
  final String? vpcId;

  factory _$VpcClassicLink([void Function(VpcClassicLinkBuilder)? updates]) =>
      (new VpcClassicLinkBuilder()..update(updates))._build();

  _$VpcClassicLink._({required this.classicLinkEnabled, this.tags, this.vpcId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        classicLinkEnabled, r'VpcClassicLink', 'classicLinkEnabled');
  }

  @override
  VpcClassicLink rebuild(void Function(VpcClassicLinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpcClassicLinkBuilder toBuilder() =>
      new VpcClassicLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VpcClassicLink &&
        classicLinkEnabled == other.classicLinkEnabled &&
        tags == other.tags &&
        vpcId == other.vpcId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, classicLinkEnabled.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VpcClassicLinkBuilder
    implements Builder<VpcClassicLink, VpcClassicLinkBuilder> {
  _$VpcClassicLink? _$v;

  bool? _classicLinkEnabled;
  bool? get classicLinkEnabled => _$this._classicLinkEnabled;
  set classicLinkEnabled(bool? classicLinkEnabled) =>
      _$this._classicLinkEnabled = classicLinkEnabled;

  _i3.ListBuilder<_i2.Tag>? _tags;
  _i3.ListBuilder<_i2.Tag> get tags =>
      _$this._tags ??= new _i3.ListBuilder<_i2.Tag>();
  set tags(_i3.ListBuilder<_i2.Tag>? tags) => _$this._tags = tags;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  VpcClassicLinkBuilder() {
    VpcClassicLink._init(this);
  }

  VpcClassicLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _classicLinkEnabled = $v.classicLinkEnabled;
      _tags = $v.tags?.toBuilder();
      _vpcId = $v.vpcId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VpcClassicLink other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VpcClassicLink;
  }

  @override
  void update(void Function(VpcClassicLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VpcClassicLink build() => _build();

  _$VpcClassicLink _build() {
    _$VpcClassicLink _$result;
    try {
      _$result = _$v ??
          new _$VpcClassicLink._(
              classicLinkEnabled: BuiltValueNullFieldError.checkNotNull(
                  classicLinkEnabled, r'VpcClassicLink', 'classicLinkEnabled'),
              tags: _tags?.build(),
              vpcId: vpcId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VpcClassicLink', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
