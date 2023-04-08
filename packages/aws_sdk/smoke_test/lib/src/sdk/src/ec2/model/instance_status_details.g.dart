// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.instance_status_details;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceStatusDetails extends InstanceStatusDetails {
  @override
  final DateTime? impairedSince;
  @override
  final _i2.StatusName? name;
  @override
  final _i3.StatusType? status;

  factory _$InstanceStatusDetails(
          [void Function(InstanceStatusDetailsBuilder)? updates]) =>
      (new InstanceStatusDetailsBuilder()..update(updates))._build();

  _$InstanceStatusDetails._({this.impairedSince, this.name, this.status})
      : super._();

  @override
  InstanceStatusDetails rebuild(
          void Function(InstanceStatusDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceStatusDetailsBuilder toBuilder() =>
      new InstanceStatusDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceStatusDetails &&
        impairedSince == other.impairedSince &&
        name == other.name &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, impairedSince.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceStatusDetailsBuilder
    implements Builder<InstanceStatusDetails, InstanceStatusDetailsBuilder> {
  _$InstanceStatusDetails? _$v;

  DateTime? _impairedSince;
  DateTime? get impairedSince => _$this._impairedSince;
  set impairedSince(DateTime? impairedSince) =>
      _$this._impairedSince = impairedSince;

  _i2.StatusName? _name;
  _i2.StatusName? get name => _$this._name;
  set name(_i2.StatusName? name) => _$this._name = name;

  _i3.StatusType? _status;
  _i3.StatusType? get status => _$this._status;
  set status(_i3.StatusType? status) => _$this._status = status;

  InstanceStatusDetailsBuilder() {
    InstanceStatusDetails._init(this);
  }

  InstanceStatusDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _impairedSince = $v.impairedSince;
      _name = $v.name;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceStatusDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceStatusDetails;
  }

  @override
  void update(void Function(InstanceStatusDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceStatusDetails build() => _build();

  _$InstanceStatusDetails _build() {
    final _$result = _$v ??
        new _$InstanceStatusDetails._(
            impairedSince: impairedSince, name: name, status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
