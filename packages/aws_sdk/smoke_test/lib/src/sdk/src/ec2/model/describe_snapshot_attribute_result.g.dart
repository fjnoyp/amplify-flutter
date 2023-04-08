// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_snapshot_attribute_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSnapshotAttributeResult
    extends DescribeSnapshotAttributeResult {
  @override
  final _i4.BuiltList<_i2.CreateVolumePermission>? createVolumePermissions;
  @override
  final _i4.BuiltList<_i3.ProductCode>? productCodes;
  @override
  final String? snapshotId;

  factory _$DescribeSnapshotAttributeResult(
          [void Function(DescribeSnapshotAttributeResultBuilder)? updates]) =>
      (new DescribeSnapshotAttributeResultBuilder()..update(updates))._build();

  _$DescribeSnapshotAttributeResult._(
      {this.createVolumePermissions, this.productCodes, this.snapshotId})
      : super._();

  @override
  DescribeSnapshotAttributeResult rebuild(
          void Function(DescribeSnapshotAttributeResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSnapshotAttributeResultBuilder toBuilder() =>
      new DescribeSnapshotAttributeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSnapshotAttributeResult &&
        createVolumePermissions == other.createVolumePermissions &&
        productCodes == other.productCodes &&
        snapshotId == other.snapshotId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createVolumePermissions.hashCode);
    _$hash = $jc(_$hash, productCodes.hashCode);
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSnapshotAttributeResultBuilder
    implements
        Builder<DescribeSnapshotAttributeResult,
            DescribeSnapshotAttributeResultBuilder> {
  _$DescribeSnapshotAttributeResult? _$v;

  _i4.ListBuilder<_i2.CreateVolumePermission>? _createVolumePermissions;
  _i4.ListBuilder<_i2.CreateVolumePermission> get createVolumePermissions =>
      _$this._createVolumePermissions ??=
          new _i4.ListBuilder<_i2.CreateVolumePermission>();
  set createVolumePermissions(
          _i4.ListBuilder<_i2.CreateVolumePermission>?
              createVolumePermissions) =>
      _$this._createVolumePermissions = createVolumePermissions;

  _i4.ListBuilder<_i3.ProductCode>? _productCodes;
  _i4.ListBuilder<_i3.ProductCode> get productCodes =>
      _$this._productCodes ??= new _i4.ListBuilder<_i3.ProductCode>();
  set productCodes(_i4.ListBuilder<_i3.ProductCode>? productCodes) =>
      _$this._productCodes = productCodes;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  DescribeSnapshotAttributeResultBuilder() {
    DescribeSnapshotAttributeResult._init(this);
  }

  DescribeSnapshotAttributeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createVolumePermissions = $v.createVolumePermissions?.toBuilder();
      _productCodes = $v.productCodes?.toBuilder();
      _snapshotId = $v.snapshotId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSnapshotAttributeResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSnapshotAttributeResult;
  }

  @override
  void update(void Function(DescribeSnapshotAttributeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSnapshotAttributeResult build() => _build();

  _$DescribeSnapshotAttributeResult _build() {
    _$DescribeSnapshotAttributeResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeSnapshotAttributeResult._(
              createVolumePermissions: _createVolumePermissions?.build(),
              productCodes: _productCodes?.build(),
              snapshotId: snapshotId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createVolumePermissions';
        _createVolumePermissions?.build();
        _$failedField = 'productCodes';
        _productCodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSnapshotAttributeResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
