// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.modify_network_interface_attribute_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyNetworkInterfaceAttributeRequest
    extends ModifyNetworkInterfaceAttributeRequest {
  @override
  final _i3.NetworkInterfaceAttachmentChanges? attachment;
  @override
  final _i4.AttributeValue? description;
  @override
  final bool dryRun;
  @override
  final _i6.BuiltList<String>? groups;
  @override
  final String networkInterfaceId;
  @override
  final _i5.AttributeBooleanValue? sourceDestCheck;

  factory _$ModifyNetworkInterfaceAttributeRequest(
          [void Function(ModifyNetworkInterfaceAttributeRequestBuilder)?
              updates]) =>
      (new ModifyNetworkInterfaceAttributeRequestBuilder()..update(updates))
          ._build();

  _$ModifyNetworkInterfaceAttributeRequest._(
      {this.attachment,
      this.description,
      required this.dryRun,
      this.groups,
      required this.networkInterfaceId,
      this.sourceDestCheck})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyNetworkInterfaceAttributeRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(networkInterfaceId,
        r'ModifyNetworkInterfaceAttributeRequest', 'networkInterfaceId');
  }

  @override
  ModifyNetworkInterfaceAttributeRequest rebuild(
          void Function(ModifyNetworkInterfaceAttributeRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyNetworkInterfaceAttributeRequestBuilder toBuilder() =>
      new ModifyNetworkInterfaceAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyNetworkInterfaceAttributeRequest &&
        attachment == other.attachment &&
        description == other.description &&
        dryRun == other.dryRun &&
        groups == other.groups &&
        networkInterfaceId == other.networkInterfaceId &&
        sourceDestCheck == other.sourceDestCheck;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attachment.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, sourceDestCheck.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyNetworkInterfaceAttributeRequestBuilder
    implements
        Builder<ModifyNetworkInterfaceAttributeRequest,
            ModifyNetworkInterfaceAttributeRequestBuilder> {
  _$ModifyNetworkInterfaceAttributeRequest? _$v;

  _i3.NetworkInterfaceAttachmentChangesBuilder? _attachment;
  _i3.NetworkInterfaceAttachmentChangesBuilder get attachment =>
      _$this._attachment ??= new _i3.NetworkInterfaceAttachmentChangesBuilder();
  set attachment(_i3.NetworkInterfaceAttachmentChangesBuilder? attachment) =>
      _$this._attachment = attachment;

  _i4.AttributeValueBuilder? _description;
  _i4.AttributeValueBuilder get description =>
      _$this._description ??= new _i4.AttributeValueBuilder();
  set description(_i4.AttributeValueBuilder? description) =>
      _$this._description = description;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i6.ListBuilder<String>? _groups;
  _i6.ListBuilder<String> get groups =>
      _$this._groups ??= new _i6.ListBuilder<String>();
  set groups(_i6.ListBuilder<String>? groups) => _$this._groups = groups;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  _i5.AttributeBooleanValueBuilder? _sourceDestCheck;
  _i5.AttributeBooleanValueBuilder get sourceDestCheck =>
      _$this._sourceDestCheck ??= new _i5.AttributeBooleanValueBuilder();
  set sourceDestCheck(_i5.AttributeBooleanValueBuilder? sourceDestCheck) =>
      _$this._sourceDestCheck = sourceDestCheck;

  ModifyNetworkInterfaceAttributeRequestBuilder() {
    ModifyNetworkInterfaceAttributeRequest._init(this);
  }

  ModifyNetworkInterfaceAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attachment = $v.attachment?.toBuilder();
      _description = $v.description?.toBuilder();
      _dryRun = $v.dryRun;
      _groups = $v.groups?.toBuilder();
      _networkInterfaceId = $v.networkInterfaceId;
      _sourceDestCheck = $v.sourceDestCheck?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyNetworkInterfaceAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyNetworkInterfaceAttributeRequest;
  }

  @override
  void update(
      void Function(ModifyNetworkInterfaceAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyNetworkInterfaceAttributeRequest build() => _build();

  _$ModifyNetworkInterfaceAttributeRequest _build() {
    _$ModifyNetworkInterfaceAttributeRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyNetworkInterfaceAttributeRequest._(
              attachment: _attachment?.build(),
              description: _description?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyNetworkInterfaceAttributeRequest', 'dryRun'),
              groups: _groups?.build(),
              networkInterfaceId: BuiltValueNullFieldError.checkNotNull(
                  networkInterfaceId,
                  r'ModifyNetworkInterfaceAttributeRequest',
                  'networkInterfaceId'),
              sourceDestCheck: _sourceDestCheck?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attachment';
        _attachment?.build();
        _$failedField = 'description';
        _description?.build();

        _$failedField = 'groups';
        _groups?.build();

        _$failedField = 'sourceDestCheck';
        _sourceDestCheck?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyNetworkInterfaceAttributeRequest',
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
