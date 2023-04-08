// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.modify_instance_credit_specification_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyInstanceCreditSpecificationRequest
    extends ModifyInstanceCreditSpecificationRequest {
  @override
  final bool dryRun;
  @override
  final String? clientToken;
  @override
  final _i4.BuiltList<_i3.InstanceCreditSpecificationRequest>
      instanceCreditSpecifications;

  factory _$ModifyInstanceCreditSpecificationRequest(
          [void Function(ModifyInstanceCreditSpecificationRequestBuilder)?
              updates]) =>
      (new ModifyInstanceCreditSpecificationRequestBuilder()..update(updates))
          ._build();

  _$ModifyInstanceCreditSpecificationRequest._(
      {required this.dryRun,
      this.clientToken,
      required this.instanceCreditSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyInstanceCreditSpecificationRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        instanceCreditSpecifications,
        r'ModifyInstanceCreditSpecificationRequest',
        'instanceCreditSpecifications');
  }

  @override
  ModifyInstanceCreditSpecificationRequest rebuild(
          void Function(ModifyInstanceCreditSpecificationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyInstanceCreditSpecificationRequestBuilder toBuilder() =>
      new ModifyInstanceCreditSpecificationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyInstanceCreditSpecificationRequest &&
        dryRun == other.dryRun &&
        clientToken == other.clientToken &&
        instanceCreditSpecifications == other.instanceCreditSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, instanceCreditSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyInstanceCreditSpecificationRequestBuilder
    implements
        Builder<ModifyInstanceCreditSpecificationRequest,
            ModifyInstanceCreditSpecificationRequestBuilder> {
  _$ModifyInstanceCreditSpecificationRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  _i4.ListBuilder<_i3.InstanceCreditSpecificationRequest>?
      _instanceCreditSpecifications;
  _i4.ListBuilder<_i3.InstanceCreditSpecificationRequest>
      get instanceCreditSpecifications =>
          _$this._instanceCreditSpecifications ??=
              new _i4.ListBuilder<_i3.InstanceCreditSpecificationRequest>();
  set instanceCreditSpecifications(
          _i4.ListBuilder<_i3.InstanceCreditSpecificationRequest>?
              instanceCreditSpecifications) =>
      _$this._instanceCreditSpecifications = instanceCreditSpecifications;

  ModifyInstanceCreditSpecificationRequestBuilder() {
    ModifyInstanceCreditSpecificationRequest._init(this);
  }

  ModifyInstanceCreditSpecificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _clientToken = $v.clientToken;
      _instanceCreditSpecifications =
          $v.instanceCreditSpecifications.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyInstanceCreditSpecificationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyInstanceCreditSpecificationRequest;
  }

  @override
  void update(
      void Function(ModifyInstanceCreditSpecificationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyInstanceCreditSpecificationRequest build() => _build();

  _$ModifyInstanceCreditSpecificationRequest _build() {
    _$ModifyInstanceCreditSpecificationRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyInstanceCreditSpecificationRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'ModifyInstanceCreditSpecificationRequest', 'dryRun'),
              clientToken: clientToken,
              instanceCreditSpecifications:
                  instanceCreditSpecifications.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceCreditSpecifications';
        instanceCreditSpecifications.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyInstanceCreditSpecificationRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
