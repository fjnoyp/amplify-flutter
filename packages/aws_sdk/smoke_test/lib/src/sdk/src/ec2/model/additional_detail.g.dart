// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.additional_detail;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdditionalDetail extends AdditionalDetail {
  @override
  final String? additionalDetailType;
  @override
  final _i2.AnalysisComponent? component;

  factory _$AdditionalDetail(
          [void Function(AdditionalDetailBuilder)? updates]) =>
      (new AdditionalDetailBuilder()..update(updates))._build();

  _$AdditionalDetail._({this.additionalDetailType, this.component}) : super._();

  @override
  AdditionalDetail rebuild(void Function(AdditionalDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdditionalDetailBuilder toBuilder() =>
      new AdditionalDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdditionalDetail &&
        additionalDetailType == other.additionalDetailType &&
        component == other.component;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, additionalDetailType.hashCode);
    _$hash = $jc(_$hash, component.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AdditionalDetailBuilder
    implements Builder<AdditionalDetail, AdditionalDetailBuilder> {
  _$AdditionalDetail? _$v;

  String? _additionalDetailType;
  String? get additionalDetailType => _$this._additionalDetailType;
  set additionalDetailType(String? additionalDetailType) =>
      _$this._additionalDetailType = additionalDetailType;

  _i2.AnalysisComponentBuilder? _component;
  _i2.AnalysisComponentBuilder get component =>
      _$this._component ??= new _i2.AnalysisComponentBuilder();
  set component(_i2.AnalysisComponentBuilder? component) =>
      _$this._component = component;

  AdditionalDetailBuilder() {
    AdditionalDetail._init(this);
  }

  AdditionalDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _additionalDetailType = $v.additionalDetailType;
      _component = $v.component?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdditionalDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdditionalDetail;
  }

  @override
  void update(void Function(AdditionalDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdditionalDetail build() => _build();

  _$AdditionalDetail _build() {
    _$AdditionalDetail _$result;
    try {
      _$result = _$v ??
          new _$AdditionalDetail._(
              additionalDetailType: additionalDetailType,
              component: _component?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'component';
        _component?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AdditionalDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
