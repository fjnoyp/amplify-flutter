// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.credit_specification_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreditSpecificationRequest extends CreditSpecificationRequest {
  @override
  final String cpuCredits;

  factory _$CreditSpecificationRequest(
          [void Function(CreditSpecificationRequestBuilder)? updates]) =>
      (new CreditSpecificationRequestBuilder()..update(updates))._build();

  _$CreditSpecificationRequest._({required this.cpuCredits}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        cpuCredits, r'CreditSpecificationRequest', 'cpuCredits');
  }

  @override
  CreditSpecificationRequest rebuild(
          void Function(CreditSpecificationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreditSpecificationRequestBuilder toBuilder() =>
      new CreditSpecificationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreditSpecificationRequest &&
        cpuCredits == other.cpuCredits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cpuCredits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreditSpecificationRequestBuilder
    implements
        Builder<CreditSpecificationRequest, CreditSpecificationRequestBuilder> {
  _$CreditSpecificationRequest? _$v;

  String? _cpuCredits;
  String? get cpuCredits => _$this._cpuCredits;
  set cpuCredits(String? cpuCredits) => _$this._cpuCredits = cpuCredits;

  CreditSpecificationRequestBuilder() {
    CreditSpecificationRequest._init(this);
  }

  CreditSpecificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cpuCredits = $v.cpuCredits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreditSpecificationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreditSpecificationRequest;
  }

  @override
  void update(void Function(CreditSpecificationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreditSpecificationRequest build() => _build();

  _$CreditSpecificationRequest _build() {
    final _$result = _$v ??
        new _$CreditSpecificationRequest._(
            cpuCredits: BuiltValueNullFieldError.checkNotNull(
                cpuCredits, r'CreditSpecificationRequest', 'cpuCredits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
