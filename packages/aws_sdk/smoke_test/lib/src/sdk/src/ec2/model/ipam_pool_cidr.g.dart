// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.ipam_pool_cidr;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IpamPoolCidr extends IpamPoolCidr {
  @override
  final String? cidr;
  @override
  final _i2.IpamPoolCidrState? state;
  @override
  final _i3.IpamPoolCidrFailureReason? failureReason;

  factory _$IpamPoolCidr([void Function(IpamPoolCidrBuilder)? updates]) =>
      (new IpamPoolCidrBuilder()..update(updates))._build();

  _$IpamPoolCidr._({this.cidr, this.state, this.failureReason}) : super._();

  @override
  IpamPoolCidr rebuild(void Function(IpamPoolCidrBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpamPoolCidrBuilder toBuilder() => new IpamPoolCidrBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpamPoolCidr &&
        cidr == other.cidr &&
        state == other.state &&
        failureReason == other.failureReason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, failureReason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IpamPoolCidrBuilder
    implements Builder<IpamPoolCidr, IpamPoolCidrBuilder> {
  _$IpamPoolCidr? _$v;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  _i2.IpamPoolCidrState? _state;
  _i2.IpamPoolCidrState? get state => _$this._state;
  set state(_i2.IpamPoolCidrState? state) => _$this._state = state;

  _i3.IpamPoolCidrFailureReasonBuilder? _failureReason;
  _i3.IpamPoolCidrFailureReasonBuilder get failureReason =>
      _$this._failureReason ??= new _i3.IpamPoolCidrFailureReasonBuilder();
  set failureReason(_i3.IpamPoolCidrFailureReasonBuilder? failureReason) =>
      _$this._failureReason = failureReason;

  IpamPoolCidrBuilder() {
    IpamPoolCidr._init(this);
  }

  IpamPoolCidrBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidr = $v.cidr;
      _state = $v.state;
      _failureReason = $v.failureReason?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpamPoolCidr other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpamPoolCidr;
  }

  @override
  void update(void Function(IpamPoolCidrBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IpamPoolCidr build() => _build();

  _$IpamPoolCidr _build() {
    _$IpamPoolCidr _$result;
    try {
      _$result = _$v ??
          new _$IpamPoolCidr._(
              cidr: cidr, state: state, failureReason: _failureReason?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'failureReason';
        _failureReason?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IpamPoolCidr', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
