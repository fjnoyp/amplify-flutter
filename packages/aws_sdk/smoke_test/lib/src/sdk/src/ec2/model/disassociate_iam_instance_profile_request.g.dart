// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.disassociate_iam_instance_profile_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateIamInstanceProfileRequest
    extends DisassociateIamInstanceProfileRequest {
  @override
  final String associationId;

  factory _$DisassociateIamInstanceProfileRequest(
          [void Function(DisassociateIamInstanceProfileRequestBuilder)?
              updates]) =>
      (new DisassociateIamInstanceProfileRequestBuilder()..update(updates))
          ._build();

  _$DisassociateIamInstanceProfileRequest._({required this.associationId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(associationId,
        r'DisassociateIamInstanceProfileRequest', 'associationId');
  }

  @override
  DisassociateIamInstanceProfileRequest rebuild(
          void Function(DisassociateIamInstanceProfileRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateIamInstanceProfileRequestBuilder toBuilder() =>
      new DisassociateIamInstanceProfileRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateIamInstanceProfileRequest &&
        associationId == other.associationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisassociateIamInstanceProfileRequestBuilder
    implements
        Builder<DisassociateIamInstanceProfileRequest,
            DisassociateIamInstanceProfileRequestBuilder> {
  _$DisassociateIamInstanceProfileRequest? _$v;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  DisassociateIamInstanceProfileRequestBuilder() {
    DisassociateIamInstanceProfileRequest._init(this);
  }

  DisassociateIamInstanceProfileRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associationId = $v.associationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateIamInstanceProfileRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateIamInstanceProfileRequest;
  }

  @override
  void update(
      void Function(DisassociateIamInstanceProfileRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateIamInstanceProfileRequest build() => _build();

  _$DisassociateIamInstanceProfileRequest _build() {
    final _$result = _$v ??
        new _$DisassociateIamInstanceProfileRequest._(
            associationId: BuiltValueNullFieldError.checkNotNull(associationId,
                r'DisassociateIamInstanceProfileRequest', 'associationId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
