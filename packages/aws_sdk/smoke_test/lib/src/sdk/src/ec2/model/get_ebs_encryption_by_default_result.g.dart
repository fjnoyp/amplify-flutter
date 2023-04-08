// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.get_ebs_encryption_by_default_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetEbsEncryptionByDefaultResult
    extends GetEbsEncryptionByDefaultResult {
  @override
  final bool ebsEncryptionByDefault;

  factory _$GetEbsEncryptionByDefaultResult(
          [void Function(GetEbsEncryptionByDefaultResultBuilder)? updates]) =>
      (new GetEbsEncryptionByDefaultResultBuilder()..update(updates))._build();

  _$GetEbsEncryptionByDefaultResult._({required this.ebsEncryptionByDefault})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(ebsEncryptionByDefault,
        r'GetEbsEncryptionByDefaultResult', 'ebsEncryptionByDefault');
  }

  @override
  GetEbsEncryptionByDefaultResult rebuild(
          void Function(GetEbsEncryptionByDefaultResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetEbsEncryptionByDefaultResultBuilder toBuilder() =>
      new GetEbsEncryptionByDefaultResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetEbsEncryptionByDefaultResult &&
        ebsEncryptionByDefault == other.ebsEncryptionByDefault;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ebsEncryptionByDefault.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetEbsEncryptionByDefaultResultBuilder
    implements
        Builder<GetEbsEncryptionByDefaultResult,
            GetEbsEncryptionByDefaultResultBuilder> {
  _$GetEbsEncryptionByDefaultResult? _$v;

  bool? _ebsEncryptionByDefault;
  bool? get ebsEncryptionByDefault => _$this._ebsEncryptionByDefault;
  set ebsEncryptionByDefault(bool? ebsEncryptionByDefault) =>
      _$this._ebsEncryptionByDefault = ebsEncryptionByDefault;

  GetEbsEncryptionByDefaultResultBuilder() {
    GetEbsEncryptionByDefaultResult._init(this);
  }

  GetEbsEncryptionByDefaultResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ebsEncryptionByDefault = $v.ebsEncryptionByDefault;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetEbsEncryptionByDefaultResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetEbsEncryptionByDefaultResult;
  }

  @override
  void update(void Function(GetEbsEncryptionByDefaultResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetEbsEncryptionByDefaultResult build() => _build();

  _$GetEbsEncryptionByDefaultResult _build() {
    final _$result = _$v ??
        new _$GetEbsEncryptionByDefaultResult._(
            ebsEncryptionByDefault: BuiltValueNullFieldError.checkNotNull(
                ebsEncryptionByDefault,
                r'GetEbsEncryptionByDefaultResult',
                'ebsEncryptionByDefault'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
