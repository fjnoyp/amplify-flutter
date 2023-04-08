// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.instance_block_device_mapping;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceBlockDeviceMapping extends InstanceBlockDeviceMapping {
  @override
  final String? deviceName;
  @override
  final _i2.EbsInstanceBlockDevice? ebs;

  factory _$InstanceBlockDeviceMapping(
          [void Function(InstanceBlockDeviceMappingBuilder)? updates]) =>
      (new InstanceBlockDeviceMappingBuilder()..update(updates))._build();

  _$InstanceBlockDeviceMapping._({this.deviceName, this.ebs}) : super._();

  @override
  InstanceBlockDeviceMapping rebuild(
          void Function(InstanceBlockDeviceMappingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceBlockDeviceMappingBuilder toBuilder() =>
      new InstanceBlockDeviceMappingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceBlockDeviceMapping &&
        deviceName == other.deviceName &&
        ebs == other.ebs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceName.hashCode);
    _$hash = $jc(_$hash, ebs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceBlockDeviceMappingBuilder
    implements
        Builder<InstanceBlockDeviceMapping, InstanceBlockDeviceMappingBuilder> {
  _$InstanceBlockDeviceMapping? _$v;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  _i2.EbsInstanceBlockDeviceBuilder? _ebs;
  _i2.EbsInstanceBlockDeviceBuilder get ebs =>
      _$this._ebs ??= new _i2.EbsInstanceBlockDeviceBuilder();
  set ebs(_i2.EbsInstanceBlockDeviceBuilder? ebs) => _$this._ebs = ebs;

  InstanceBlockDeviceMappingBuilder() {
    InstanceBlockDeviceMapping._init(this);
  }

  InstanceBlockDeviceMappingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceName = $v.deviceName;
      _ebs = $v.ebs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceBlockDeviceMapping other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceBlockDeviceMapping;
  }

  @override
  void update(void Function(InstanceBlockDeviceMappingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceBlockDeviceMapping build() => _build();

  _$InstanceBlockDeviceMapping _build() {
    _$InstanceBlockDeviceMapping _$result;
    try {
      _$result = _$v ??
          new _$InstanceBlockDeviceMapping._(
              deviceName: deviceName, ebs: _ebs?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ebs';
        _ebs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceBlockDeviceMapping', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
