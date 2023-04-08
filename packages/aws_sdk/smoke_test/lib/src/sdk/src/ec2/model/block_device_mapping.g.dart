// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.block_device_mapping;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BlockDeviceMapping extends BlockDeviceMapping {
  @override
  final String? deviceName;
  @override
  final String? virtualName;
  @override
  final _i2.EbsBlockDevice? ebs;
  @override
  final String? noDevice;

  factory _$BlockDeviceMapping(
          [void Function(BlockDeviceMappingBuilder)? updates]) =>
      (new BlockDeviceMappingBuilder()..update(updates))._build();

  _$BlockDeviceMapping._(
      {this.deviceName, this.virtualName, this.ebs, this.noDevice})
      : super._();

  @override
  BlockDeviceMapping rebuild(
          void Function(BlockDeviceMappingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlockDeviceMappingBuilder toBuilder() =>
      new BlockDeviceMappingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlockDeviceMapping &&
        deviceName == other.deviceName &&
        virtualName == other.virtualName &&
        ebs == other.ebs &&
        noDevice == other.noDevice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceName.hashCode);
    _$hash = $jc(_$hash, virtualName.hashCode);
    _$hash = $jc(_$hash, ebs.hashCode);
    _$hash = $jc(_$hash, noDevice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BlockDeviceMappingBuilder
    implements Builder<BlockDeviceMapping, BlockDeviceMappingBuilder> {
  _$BlockDeviceMapping? _$v;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  String? _virtualName;
  String? get virtualName => _$this._virtualName;
  set virtualName(String? virtualName) => _$this._virtualName = virtualName;

  _i2.EbsBlockDeviceBuilder? _ebs;
  _i2.EbsBlockDeviceBuilder get ebs =>
      _$this._ebs ??= new _i2.EbsBlockDeviceBuilder();
  set ebs(_i2.EbsBlockDeviceBuilder? ebs) => _$this._ebs = ebs;

  String? _noDevice;
  String? get noDevice => _$this._noDevice;
  set noDevice(String? noDevice) => _$this._noDevice = noDevice;

  BlockDeviceMappingBuilder() {
    BlockDeviceMapping._init(this);
  }

  BlockDeviceMappingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceName = $v.deviceName;
      _virtualName = $v.virtualName;
      _ebs = $v.ebs?.toBuilder();
      _noDevice = $v.noDevice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlockDeviceMapping other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BlockDeviceMapping;
  }

  @override
  void update(void Function(BlockDeviceMappingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BlockDeviceMapping build() => _build();

  _$BlockDeviceMapping _build() {
    _$BlockDeviceMapping _$result;
    try {
      _$result = _$v ??
          new _$BlockDeviceMapping._(
              deviceName: deviceName,
              virtualName: virtualName,
              ebs: _ebs?.build(),
              noDevice: noDevice);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ebs';
        _ebs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BlockDeviceMapping', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
