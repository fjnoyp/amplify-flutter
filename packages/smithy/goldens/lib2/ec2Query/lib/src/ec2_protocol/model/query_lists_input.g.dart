// GENERATED CODE - DO NOT MODIFY BY HAND

part of ec2_query_v2.ec2_protocol.model.query_lists_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueryListsInput extends QueryListsInput {
  @override
  final _i5.BuiltList<String>? listArg;
  @override
  final _i5.BuiltList<_i3.GreetingStruct>? complexListArg;
  @override
  final _i5.BuiltList<String>? listArgWithXmlNameMember;
  @override
  final _i5.BuiltList<String>? listArgWithXmlName;
  @override
  final _i4.NestedStructWithList? nestedWithList;

  factory _$QueryListsInput([void Function(QueryListsInputBuilder)? updates]) =>
      (new QueryListsInputBuilder()..update(updates))._build();

  _$QueryListsInput._(
      {this.listArg,
      this.complexListArg,
      this.listArgWithXmlNameMember,
      this.listArgWithXmlName,
      this.nestedWithList})
      : super._();

  @override
  QueryListsInput rebuild(void Function(QueryListsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueryListsInputBuilder toBuilder() =>
      new QueryListsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryListsInput &&
        listArg == other.listArg &&
        complexListArg == other.complexListArg &&
        listArgWithXmlNameMember == other.listArgWithXmlNameMember &&
        listArgWithXmlName == other.listArgWithXmlName &&
        nestedWithList == other.nestedWithList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, listArg.hashCode);
    _$hash = $jc(_$hash, complexListArg.hashCode);
    _$hash = $jc(_$hash, listArgWithXmlNameMember.hashCode);
    _$hash = $jc(_$hash, listArgWithXmlName.hashCode);
    _$hash = $jc(_$hash, nestedWithList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class QueryListsInputBuilder
    implements Builder<QueryListsInput, QueryListsInputBuilder> {
  _$QueryListsInput? _$v;

  _i5.ListBuilder<String>? _listArg;
  _i5.ListBuilder<String> get listArg =>
      _$this._listArg ??= new _i5.ListBuilder<String>();
  set listArg(_i5.ListBuilder<String>? listArg) => _$this._listArg = listArg;

  _i5.ListBuilder<_i3.GreetingStruct>? _complexListArg;
  _i5.ListBuilder<_i3.GreetingStruct> get complexListArg =>
      _$this._complexListArg ??= new _i5.ListBuilder<_i3.GreetingStruct>();
  set complexListArg(_i5.ListBuilder<_i3.GreetingStruct>? complexListArg) =>
      _$this._complexListArg = complexListArg;

  _i5.ListBuilder<String>? _listArgWithXmlNameMember;
  _i5.ListBuilder<String> get listArgWithXmlNameMember =>
      _$this._listArgWithXmlNameMember ??= new _i5.ListBuilder<String>();
  set listArgWithXmlNameMember(
          _i5.ListBuilder<String>? listArgWithXmlNameMember) =>
      _$this._listArgWithXmlNameMember = listArgWithXmlNameMember;

  _i5.ListBuilder<String>? _listArgWithXmlName;
  _i5.ListBuilder<String> get listArgWithXmlName =>
      _$this._listArgWithXmlName ??= new _i5.ListBuilder<String>();
  set listArgWithXmlName(_i5.ListBuilder<String>? listArgWithXmlName) =>
      _$this._listArgWithXmlName = listArgWithXmlName;

  _i4.NestedStructWithListBuilder? _nestedWithList;
  _i4.NestedStructWithListBuilder get nestedWithList =>
      _$this._nestedWithList ??= new _i4.NestedStructWithListBuilder();
  set nestedWithList(_i4.NestedStructWithListBuilder? nestedWithList) =>
      _$this._nestedWithList = nestedWithList;

  QueryListsInputBuilder() {
    QueryListsInput._init(this);
  }

  QueryListsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listArg = $v.listArg?.toBuilder();
      _complexListArg = $v.complexListArg?.toBuilder();
      _listArgWithXmlNameMember = $v.listArgWithXmlNameMember?.toBuilder();
      _listArgWithXmlName = $v.listArgWithXmlName?.toBuilder();
      _nestedWithList = $v.nestedWithList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueryListsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QueryListsInput;
  }

  @override
  void update(void Function(QueryListsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueryListsInput build() => _build();

  _$QueryListsInput _build() {
    _$QueryListsInput _$result;
    try {
      _$result = _$v ??
          new _$QueryListsInput._(
              listArg: _listArg?.build(),
              complexListArg: _complexListArg?.build(),
              listArgWithXmlNameMember: _listArgWithXmlNameMember?.build(),
              listArgWithXmlName: _listArgWithXmlName?.build(),
              nestedWithList: _nestedWithList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listArg';
        _listArg?.build();
        _$failedField = 'complexListArg';
        _complexListArg?.build();
        _$failedField = 'listArgWithXmlNameMember';
        _listArgWithXmlNameMember?.build();
        _$failedField = 'listArgWithXmlName';
        _listArgWithXmlName?.build();
        _$failedField = 'nestedWithList';
        _nestedWithList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QueryListsInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
