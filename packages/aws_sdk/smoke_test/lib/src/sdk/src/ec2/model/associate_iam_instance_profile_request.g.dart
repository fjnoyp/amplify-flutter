// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.associate_iam_instance_profile_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateIamInstanceProfileRequest
    extends AssociateIamInstanceProfileRequest {
  @override
  final _i3.IamInstanceProfileSpecification iamInstanceProfile;
  @override
  final String instanceId;

  factory _$AssociateIamInstanceProfileRequest(
          [void Function(AssociateIamInstanceProfileRequestBuilder)?
              updates]) =>
      (new AssociateIamInstanceProfileRequestBuilder()..update(updates))
          ._build();

  _$AssociateIamInstanceProfileRequest._(
      {required this.iamInstanceProfile, required this.instanceId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(iamInstanceProfile,
        r'AssociateIamInstanceProfileRequest', 'iamInstanceProfile');
    BuiltValueNullFieldError.checkNotNull(
        instanceId, r'AssociateIamInstanceProfileRequest', 'instanceId');
  }

  @override
  AssociateIamInstanceProfileRequest rebuild(
          void Function(AssociateIamInstanceProfileRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateIamInstanceProfileRequestBuilder toBuilder() =>
      new AssociateIamInstanceProfileRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateIamInstanceProfileRequest &&
        iamInstanceProfile == other.iamInstanceProfile &&
        instanceId == other.instanceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, iamInstanceProfile.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociateIamInstanceProfileRequestBuilder
    implements
        Builder<AssociateIamInstanceProfileRequest,
            AssociateIamInstanceProfileRequestBuilder> {
  _$AssociateIamInstanceProfileRequest? _$v;

  _i3.IamInstanceProfileSpecificationBuilder? _iamInstanceProfile;
  _i3.IamInstanceProfileSpecificationBuilder get iamInstanceProfile =>
      _$this._iamInstanceProfile ??=
          new _i3.IamInstanceProfileSpecificationBuilder();
  set iamInstanceProfile(
          _i3.IamInstanceProfileSpecificationBuilder? iamInstanceProfile) =>
      _$this._iamInstanceProfile = iamInstanceProfile;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  AssociateIamInstanceProfileRequestBuilder() {
    AssociateIamInstanceProfileRequest._init(this);
  }

  AssociateIamInstanceProfileRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _iamInstanceProfile = $v.iamInstanceProfile.toBuilder();
      _instanceId = $v.instanceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateIamInstanceProfileRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateIamInstanceProfileRequest;
  }

  @override
  void update(
      void Function(AssociateIamInstanceProfileRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateIamInstanceProfileRequest build() => _build();

  _$AssociateIamInstanceProfileRequest _build() {
    _$AssociateIamInstanceProfileRequest _$result;
    try {
      _$result = _$v ??
          new _$AssociateIamInstanceProfileRequest._(
              iamInstanceProfile: iamInstanceProfile.build(),
              instanceId: BuiltValueNullFieldError.checkNotNull(instanceId,
                  r'AssociateIamInstanceProfileRequest', 'instanceId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'iamInstanceProfile';
        iamInstanceProfile.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssociateIamInstanceProfileRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
