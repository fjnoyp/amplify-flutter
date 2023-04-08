// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.principal_id_format;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrincipalIdFormat extends PrincipalIdFormat {
  @override
  final String? arn;
  @override
  final _i3.BuiltList<_i2.IdFormat>? statuses;

  factory _$PrincipalIdFormat(
          [void Function(PrincipalIdFormatBuilder)? updates]) =>
      (new PrincipalIdFormatBuilder()..update(updates))._build();

  _$PrincipalIdFormat._({this.arn, this.statuses}) : super._();

  @override
  PrincipalIdFormat rebuild(void Function(PrincipalIdFormatBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrincipalIdFormatBuilder toBuilder() =>
      new PrincipalIdFormatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrincipalIdFormat &&
        arn == other.arn &&
        statuses == other.statuses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, statuses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PrincipalIdFormatBuilder
    implements Builder<PrincipalIdFormat, PrincipalIdFormatBuilder> {
  _$PrincipalIdFormat? _$v;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  _i3.ListBuilder<_i2.IdFormat>? _statuses;
  _i3.ListBuilder<_i2.IdFormat> get statuses =>
      _$this._statuses ??= new _i3.ListBuilder<_i2.IdFormat>();
  set statuses(_i3.ListBuilder<_i2.IdFormat>? statuses) =>
      _$this._statuses = statuses;

  PrincipalIdFormatBuilder() {
    PrincipalIdFormat._init(this);
  }

  PrincipalIdFormatBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _arn = $v.arn;
      _statuses = $v.statuses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrincipalIdFormat other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrincipalIdFormat;
  }

  @override
  void update(void Function(PrincipalIdFormatBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrincipalIdFormat build() => _build();

  _$PrincipalIdFormat _build() {
    _$PrincipalIdFormat _$result;
    try {
      _$result = _$v ??
          new _$PrincipalIdFormat._(arn: arn, statuses: _statuses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'statuses';
        _statuses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PrincipalIdFormat', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
