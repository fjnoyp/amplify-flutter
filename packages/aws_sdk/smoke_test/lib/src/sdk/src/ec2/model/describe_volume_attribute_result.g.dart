// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_volume_attribute_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVolumeAttributeResult extends DescribeVolumeAttributeResult {
  @override
  final _i2.AttributeBooleanValue? autoEnableIo;
  @override
  final _i4.BuiltList<_i3.ProductCode>? productCodes;
  @override
  final String? volumeId;

  factory _$DescribeVolumeAttributeResult(
          [void Function(DescribeVolumeAttributeResultBuilder)? updates]) =>
      (new DescribeVolumeAttributeResultBuilder()..update(updates))._build();

  _$DescribeVolumeAttributeResult._(
      {this.autoEnableIo, this.productCodes, this.volumeId})
      : super._();

  @override
  DescribeVolumeAttributeResult rebuild(
          void Function(DescribeVolumeAttributeResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVolumeAttributeResultBuilder toBuilder() =>
      new DescribeVolumeAttributeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVolumeAttributeResult &&
        autoEnableIo == other.autoEnableIo &&
        productCodes == other.productCodes &&
        volumeId == other.volumeId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, autoEnableIo.hashCode);
    _$hash = $jc(_$hash, productCodes.hashCode);
    _$hash = $jc(_$hash, volumeId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVolumeAttributeResultBuilder
    implements
        Builder<DescribeVolumeAttributeResult,
            DescribeVolumeAttributeResultBuilder> {
  _$DescribeVolumeAttributeResult? _$v;

  _i2.AttributeBooleanValueBuilder? _autoEnableIo;
  _i2.AttributeBooleanValueBuilder get autoEnableIo =>
      _$this._autoEnableIo ??= new _i2.AttributeBooleanValueBuilder();
  set autoEnableIo(_i2.AttributeBooleanValueBuilder? autoEnableIo) =>
      _$this._autoEnableIo = autoEnableIo;

  _i4.ListBuilder<_i3.ProductCode>? _productCodes;
  _i4.ListBuilder<_i3.ProductCode> get productCodes =>
      _$this._productCodes ??= new _i4.ListBuilder<_i3.ProductCode>();
  set productCodes(_i4.ListBuilder<_i3.ProductCode>? productCodes) =>
      _$this._productCodes = productCodes;

  String? _volumeId;
  String? get volumeId => _$this._volumeId;
  set volumeId(String? volumeId) => _$this._volumeId = volumeId;

  DescribeVolumeAttributeResultBuilder() {
    DescribeVolumeAttributeResult._init(this);
  }

  DescribeVolumeAttributeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _autoEnableIo = $v.autoEnableIo?.toBuilder();
      _productCodes = $v.productCodes?.toBuilder();
      _volumeId = $v.volumeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVolumeAttributeResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVolumeAttributeResult;
  }

  @override
  void update(void Function(DescribeVolumeAttributeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVolumeAttributeResult build() => _build();

  _$DescribeVolumeAttributeResult _build() {
    _$DescribeVolumeAttributeResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeVolumeAttributeResult._(
              autoEnableIo: _autoEnableIo?.build(),
              productCodes: _productCodes?.build(),
              volumeId: volumeId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'autoEnableIo';
        _autoEnableIo?.build();
        _$failedField = 'productCodes';
        _productCodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVolumeAttributeResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
