// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.modify_image_attribute_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyImageAttributeRequest extends ModifyImageAttributeRequest {
  @override
  final String? attribute;
  @override
  final _i3.AttributeValue? description;
  @override
  final String imageId;
  @override
  final _i4.LaunchPermissionModifications? launchPermission;
  @override
  final _i5.OperationType? operationType;
  @override
  final _i6.BuiltList<String>? productCodes;
  @override
  final _i6.BuiltList<String>? userGroups;
  @override
  final _i6.BuiltList<String>? userIds;
  @override
  final String? value;
  @override
  final bool dryRun;
  @override
  final _i6.BuiltList<String>? organizationArns;
  @override
  final _i6.BuiltList<String>? organizationalUnitArns;

  factory _$ModifyImageAttributeRequest(
          [void Function(ModifyImageAttributeRequestBuilder)? updates]) =>
      (new ModifyImageAttributeRequestBuilder()..update(updates))._build();

  _$ModifyImageAttributeRequest._(
      {this.attribute,
      this.description,
      required this.imageId,
      this.launchPermission,
      this.operationType,
      this.productCodes,
      this.userGroups,
      this.userIds,
      this.value,
      required this.dryRun,
      this.organizationArns,
      this.organizationalUnitArns})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        imageId, r'ModifyImageAttributeRequest', 'imageId');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyImageAttributeRequest', 'dryRun');
  }

  @override
  ModifyImageAttributeRequest rebuild(
          void Function(ModifyImageAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyImageAttributeRequestBuilder toBuilder() =>
      new ModifyImageAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyImageAttributeRequest &&
        attribute == other.attribute &&
        description == other.description &&
        imageId == other.imageId &&
        launchPermission == other.launchPermission &&
        operationType == other.operationType &&
        productCodes == other.productCodes &&
        userGroups == other.userGroups &&
        userIds == other.userIds &&
        value == other.value &&
        dryRun == other.dryRun &&
        organizationArns == other.organizationArns &&
        organizationalUnitArns == other.organizationalUnitArns;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attribute.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, launchPermission.hashCode);
    _$hash = $jc(_$hash, operationType.hashCode);
    _$hash = $jc(_$hash, productCodes.hashCode);
    _$hash = $jc(_$hash, userGroups.hashCode);
    _$hash = $jc(_$hash, userIds.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, organizationArns.hashCode);
    _$hash = $jc(_$hash, organizationalUnitArns.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyImageAttributeRequestBuilder
    implements
        Builder<ModifyImageAttributeRequest,
            ModifyImageAttributeRequestBuilder> {
  _$ModifyImageAttributeRequest? _$v;

  String? _attribute;
  String? get attribute => _$this._attribute;
  set attribute(String? attribute) => _$this._attribute = attribute;

  _i3.AttributeValueBuilder? _description;
  _i3.AttributeValueBuilder get description =>
      _$this._description ??= new _i3.AttributeValueBuilder();
  set description(_i3.AttributeValueBuilder? description) =>
      _$this._description = description;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  _i4.LaunchPermissionModificationsBuilder? _launchPermission;
  _i4.LaunchPermissionModificationsBuilder get launchPermission =>
      _$this._launchPermission ??=
          new _i4.LaunchPermissionModificationsBuilder();
  set launchPermission(
          _i4.LaunchPermissionModificationsBuilder? launchPermission) =>
      _$this._launchPermission = launchPermission;

  _i5.OperationType? _operationType;
  _i5.OperationType? get operationType => _$this._operationType;
  set operationType(_i5.OperationType? operationType) =>
      _$this._operationType = operationType;

  _i6.ListBuilder<String>? _productCodes;
  _i6.ListBuilder<String> get productCodes =>
      _$this._productCodes ??= new _i6.ListBuilder<String>();
  set productCodes(_i6.ListBuilder<String>? productCodes) =>
      _$this._productCodes = productCodes;

  _i6.ListBuilder<String>? _userGroups;
  _i6.ListBuilder<String> get userGroups =>
      _$this._userGroups ??= new _i6.ListBuilder<String>();
  set userGroups(_i6.ListBuilder<String>? userGroups) =>
      _$this._userGroups = userGroups;

  _i6.ListBuilder<String>? _userIds;
  _i6.ListBuilder<String> get userIds =>
      _$this._userIds ??= new _i6.ListBuilder<String>();
  set userIds(_i6.ListBuilder<String>? userIds) => _$this._userIds = userIds;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i6.ListBuilder<String>? _organizationArns;
  _i6.ListBuilder<String> get organizationArns =>
      _$this._organizationArns ??= new _i6.ListBuilder<String>();
  set organizationArns(_i6.ListBuilder<String>? organizationArns) =>
      _$this._organizationArns = organizationArns;

  _i6.ListBuilder<String>? _organizationalUnitArns;
  _i6.ListBuilder<String> get organizationalUnitArns =>
      _$this._organizationalUnitArns ??= new _i6.ListBuilder<String>();
  set organizationalUnitArns(_i6.ListBuilder<String>? organizationalUnitArns) =>
      _$this._organizationalUnitArns = organizationalUnitArns;

  ModifyImageAttributeRequestBuilder() {
    ModifyImageAttributeRequest._init(this);
  }

  ModifyImageAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attribute = $v.attribute;
      _description = $v.description?.toBuilder();
      _imageId = $v.imageId;
      _launchPermission = $v.launchPermission?.toBuilder();
      _operationType = $v.operationType;
      _productCodes = $v.productCodes?.toBuilder();
      _userGroups = $v.userGroups?.toBuilder();
      _userIds = $v.userIds?.toBuilder();
      _value = $v.value;
      _dryRun = $v.dryRun;
      _organizationArns = $v.organizationArns?.toBuilder();
      _organizationalUnitArns = $v.organizationalUnitArns?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyImageAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyImageAttributeRequest;
  }

  @override
  void update(void Function(ModifyImageAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyImageAttributeRequest build() => _build();

  _$ModifyImageAttributeRequest _build() {
    _$ModifyImageAttributeRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyImageAttributeRequest._(
              attribute: attribute,
              description: _description?.build(),
              imageId: BuiltValueNullFieldError.checkNotNull(
                  imageId, r'ModifyImageAttributeRequest', 'imageId'),
              launchPermission: _launchPermission?.build(),
              operationType: operationType,
              productCodes: _productCodes?.build(),
              userGroups: _userGroups?.build(),
              userIds: _userIds?.build(),
              value: value,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyImageAttributeRequest', 'dryRun'),
              organizationArns: _organizationArns?.build(),
              organizationalUnitArns: _organizationalUnitArns?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'description';
        _description?.build();

        _$failedField = 'launchPermission';
        _launchPermission?.build();

        _$failedField = 'productCodes';
        _productCodes?.build();
        _$failedField = 'userGroups';
        _userGroups?.build();
        _$failedField = 'userIds';
        _userIds?.build();

        _$failedField = 'organizationArns';
        _organizationArns?.build();
        _$failedField = 'organizationalUnitArns';
        _organizationalUnitArns?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyImageAttributeRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
