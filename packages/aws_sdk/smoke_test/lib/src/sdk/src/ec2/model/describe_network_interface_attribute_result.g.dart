// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_network_interface_attribute_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeNetworkInterfaceAttributeResult
    extends DescribeNetworkInterfaceAttributeResult {
  @override
  final _i2.NetworkInterfaceAttachment? attachment;
  @override
  final _i3.AttributeValue? description;
  @override
  final _i6.BuiltList<_i4.GroupIdentifier>? groups;
  @override
  final String? networkInterfaceId;
  @override
  final _i5.AttributeBooleanValue? sourceDestCheck;

  factory _$DescribeNetworkInterfaceAttributeResult(
          [void Function(DescribeNetworkInterfaceAttributeResultBuilder)?
              updates]) =>
      (new DescribeNetworkInterfaceAttributeResultBuilder()..update(updates))
          ._build();

  _$DescribeNetworkInterfaceAttributeResult._(
      {this.attachment,
      this.description,
      this.groups,
      this.networkInterfaceId,
      this.sourceDestCheck})
      : super._();

  @override
  DescribeNetworkInterfaceAttributeResult rebuild(
          void Function(DescribeNetworkInterfaceAttributeResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeNetworkInterfaceAttributeResultBuilder toBuilder() =>
      new DescribeNetworkInterfaceAttributeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeNetworkInterfaceAttributeResult &&
        attachment == other.attachment &&
        description == other.description &&
        groups == other.groups &&
        networkInterfaceId == other.networkInterfaceId &&
        sourceDestCheck == other.sourceDestCheck;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attachment.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, sourceDestCheck.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeNetworkInterfaceAttributeResultBuilder
    implements
        Builder<DescribeNetworkInterfaceAttributeResult,
            DescribeNetworkInterfaceAttributeResultBuilder> {
  _$DescribeNetworkInterfaceAttributeResult? _$v;

  _i2.NetworkInterfaceAttachmentBuilder? _attachment;
  _i2.NetworkInterfaceAttachmentBuilder get attachment =>
      _$this._attachment ??= new _i2.NetworkInterfaceAttachmentBuilder();
  set attachment(_i2.NetworkInterfaceAttachmentBuilder? attachment) =>
      _$this._attachment = attachment;

  _i3.AttributeValueBuilder? _description;
  _i3.AttributeValueBuilder get description =>
      _$this._description ??= new _i3.AttributeValueBuilder();
  set description(_i3.AttributeValueBuilder? description) =>
      _$this._description = description;

  _i6.ListBuilder<_i4.GroupIdentifier>? _groups;
  _i6.ListBuilder<_i4.GroupIdentifier> get groups =>
      _$this._groups ??= new _i6.ListBuilder<_i4.GroupIdentifier>();
  set groups(_i6.ListBuilder<_i4.GroupIdentifier>? groups) =>
      _$this._groups = groups;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  _i5.AttributeBooleanValueBuilder? _sourceDestCheck;
  _i5.AttributeBooleanValueBuilder get sourceDestCheck =>
      _$this._sourceDestCheck ??= new _i5.AttributeBooleanValueBuilder();
  set sourceDestCheck(_i5.AttributeBooleanValueBuilder? sourceDestCheck) =>
      _$this._sourceDestCheck = sourceDestCheck;

  DescribeNetworkInterfaceAttributeResultBuilder() {
    DescribeNetworkInterfaceAttributeResult._init(this);
  }

  DescribeNetworkInterfaceAttributeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attachment = $v.attachment?.toBuilder();
      _description = $v.description?.toBuilder();
      _groups = $v.groups?.toBuilder();
      _networkInterfaceId = $v.networkInterfaceId;
      _sourceDestCheck = $v.sourceDestCheck?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeNetworkInterfaceAttributeResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeNetworkInterfaceAttributeResult;
  }

  @override
  void update(
      void Function(DescribeNetworkInterfaceAttributeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeNetworkInterfaceAttributeResult build() => _build();

  _$DescribeNetworkInterfaceAttributeResult _build() {
    _$DescribeNetworkInterfaceAttributeResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeNetworkInterfaceAttributeResult._(
              attachment: _attachment?.build(),
              description: _description?.build(),
              groups: _groups?.build(),
              networkInterfaceId: networkInterfaceId,
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
            r'DescribeNetworkInterfaceAttributeResult',
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
