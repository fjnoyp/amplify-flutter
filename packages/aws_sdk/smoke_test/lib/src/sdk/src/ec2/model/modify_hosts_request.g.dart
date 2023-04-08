// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.modify_hosts_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyHostsRequest extends ModifyHostsRequest {
  @override
  final _i3.AutoPlacement? autoPlacement;
  @override
  final _i5.BuiltList<String> hostIds;
  @override
  final _i4.HostRecovery? hostRecovery;
  @override
  final String? instanceType;
  @override
  final String? instanceFamily;

  factory _$ModifyHostsRequest(
          [void Function(ModifyHostsRequestBuilder)? updates]) =>
      (new ModifyHostsRequestBuilder()..update(updates))._build();

  _$ModifyHostsRequest._(
      {this.autoPlacement,
      required this.hostIds,
      this.hostRecovery,
      this.instanceType,
      this.instanceFamily})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        hostIds, r'ModifyHostsRequest', 'hostIds');
  }

  @override
  ModifyHostsRequest rebuild(
          void Function(ModifyHostsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyHostsRequestBuilder toBuilder() =>
      new ModifyHostsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyHostsRequest &&
        autoPlacement == other.autoPlacement &&
        hostIds == other.hostIds &&
        hostRecovery == other.hostRecovery &&
        instanceType == other.instanceType &&
        instanceFamily == other.instanceFamily;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, autoPlacement.hashCode);
    _$hash = $jc(_$hash, hostIds.hashCode);
    _$hash = $jc(_$hash, hostRecovery.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, instanceFamily.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyHostsRequestBuilder
    implements Builder<ModifyHostsRequest, ModifyHostsRequestBuilder> {
  _$ModifyHostsRequest? _$v;

  _i3.AutoPlacement? _autoPlacement;
  _i3.AutoPlacement? get autoPlacement => _$this._autoPlacement;
  set autoPlacement(_i3.AutoPlacement? autoPlacement) =>
      _$this._autoPlacement = autoPlacement;

  _i5.ListBuilder<String>? _hostIds;
  _i5.ListBuilder<String> get hostIds =>
      _$this._hostIds ??= new _i5.ListBuilder<String>();
  set hostIds(_i5.ListBuilder<String>? hostIds) => _$this._hostIds = hostIds;

  _i4.HostRecovery? _hostRecovery;
  _i4.HostRecovery? get hostRecovery => _$this._hostRecovery;
  set hostRecovery(_i4.HostRecovery? hostRecovery) =>
      _$this._hostRecovery = hostRecovery;

  String? _instanceType;
  String? get instanceType => _$this._instanceType;
  set instanceType(String? instanceType) => _$this._instanceType = instanceType;

  String? _instanceFamily;
  String? get instanceFamily => _$this._instanceFamily;
  set instanceFamily(String? instanceFamily) =>
      _$this._instanceFamily = instanceFamily;

  ModifyHostsRequestBuilder() {
    ModifyHostsRequest._init(this);
  }

  ModifyHostsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _autoPlacement = $v.autoPlacement;
      _hostIds = $v.hostIds.toBuilder();
      _hostRecovery = $v.hostRecovery;
      _instanceType = $v.instanceType;
      _instanceFamily = $v.instanceFamily;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyHostsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyHostsRequest;
  }

  @override
  void update(void Function(ModifyHostsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyHostsRequest build() => _build();

  _$ModifyHostsRequest _build() {
    _$ModifyHostsRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyHostsRequest._(
              autoPlacement: autoPlacement,
              hostIds: hostIds.build(),
              hostRecovery: hostRecovery,
              instanceType: instanceType,
              instanceFamily: instanceFamily);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hostIds';
        hostIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyHostsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
