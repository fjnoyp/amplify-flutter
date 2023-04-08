// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.network_interface_permission_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkInterfacePermissionState
    extends NetworkInterfacePermissionState {
  @override
  final _i2.NetworkInterfacePermissionStateCode? state;
  @override
  final String? statusMessage;

  factory _$NetworkInterfacePermissionState(
          [void Function(NetworkInterfacePermissionStateBuilder)? updates]) =>
      (new NetworkInterfacePermissionStateBuilder()..update(updates))._build();

  _$NetworkInterfacePermissionState._({this.state, this.statusMessage})
      : super._();

  @override
  NetworkInterfacePermissionState rebuild(
          void Function(NetworkInterfacePermissionStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkInterfacePermissionStateBuilder toBuilder() =>
      new NetworkInterfacePermissionStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkInterfacePermissionState &&
        state == other.state &&
        statusMessage == other.statusMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, statusMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkInterfacePermissionStateBuilder
    implements
        Builder<NetworkInterfacePermissionState,
            NetworkInterfacePermissionStateBuilder> {
  _$NetworkInterfacePermissionState? _$v;

  _i2.NetworkInterfacePermissionStateCode? _state;
  _i2.NetworkInterfacePermissionStateCode? get state => _$this._state;
  set state(_i2.NetworkInterfacePermissionStateCode? state) =>
      _$this._state = state;

  String? _statusMessage;
  String? get statusMessage => _$this._statusMessage;
  set statusMessage(String? statusMessage) =>
      _$this._statusMessage = statusMessage;

  NetworkInterfacePermissionStateBuilder() {
    NetworkInterfacePermissionState._init(this);
  }

  NetworkInterfacePermissionStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _statusMessage = $v.statusMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkInterfacePermissionState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkInterfacePermissionState;
  }

  @override
  void update(void Function(NetworkInterfacePermissionStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkInterfacePermissionState build() => _build();

  _$NetworkInterfacePermissionState _build() {
    final _$result = _$v ??
        new _$NetworkInterfacePermissionState._(
            state: state, statusMessage: statusMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
