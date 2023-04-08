// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.disassociate_instance_event_window_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateInstanceEventWindowRequest
    extends DisassociateInstanceEventWindowRequest {
  @override
  final bool dryRun;
  @override
  final String instanceEventWindowId;
  @override
  final _i3.InstanceEventWindowDisassociationRequest associationTarget;

  factory _$DisassociateInstanceEventWindowRequest(
          [void Function(DisassociateInstanceEventWindowRequestBuilder)?
              updates]) =>
      (new DisassociateInstanceEventWindowRequestBuilder()..update(updates))
          ._build();

  _$DisassociateInstanceEventWindowRequest._(
      {required this.dryRun,
      required this.instanceEventWindowId,
      required this.associationTarget})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisassociateInstanceEventWindowRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(instanceEventWindowId,
        r'DisassociateInstanceEventWindowRequest', 'instanceEventWindowId');
    BuiltValueNullFieldError.checkNotNull(associationTarget,
        r'DisassociateInstanceEventWindowRequest', 'associationTarget');
  }

  @override
  DisassociateInstanceEventWindowRequest rebuild(
          void Function(DisassociateInstanceEventWindowRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateInstanceEventWindowRequestBuilder toBuilder() =>
      new DisassociateInstanceEventWindowRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateInstanceEventWindowRequest &&
        dryRun == other.dryRun &&
        instanceEventWindowId == other.instanceEventWindowId &&
        associationTarget == other.associationTarget;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceEventWindowId.hashCode);
    _$hash = $jc(_$hash, associationTarget.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisassociateInstanceEventWindowRequestBuilder
    implements
        Builder<DisassociateInstanceEventWindowRequest,
            DisassociateInstanceEventWindowRequestBuilder> {
  _$DisassociateInstanceEventWindowRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _instanceEventWindowId;
  String? get instanceEventWindowId => _$this._instanceEventWindowId;
  set instanceEventWindowId(String? instanceEventWindowId) =>
      _$this._instanceEventWindowId = instanceEventWindowId;

  _i3.InstanceEventWindowDisassociationRequestBuilder? _associationTarget;
  _i3.InstanceEventWindowDisassociationRequestBuilder get associationTarget =>
      _$this._associationTarget ??=
          new _i3.InstanceEventWindowDisassociationRequestBuilder();
  set associationTarget(
          _i3.InstanceEventWindowDisassociationRequestBuilder?
              associationTarget) =>
      _$this._associationTarget = associationTarget;

  DisassociateInstanceEventWindowRequestBuilder() {
    DisassociateInstanceEventWindowRequest._init(this);
  }

  DisassociateInstanceEventWindowRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _instanceEventWindowId = $v.instanceEventWindowId;
      _associationTarget = $v.associationTarget.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateInstanceEventWindowRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateInstanceEventWindowRequest;
  }

  @override
  void update(
      void Function(DisassociateInstanceEventWindowRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateInstanceEventWindowRequest build() => _build();

  _$DisassociateInstanceEventWindowRequest _build() {
    _$DisassociateInstanceEventWindowRequest _$result;
    try {
      _$result = _$v ??
          new _$DisassociateInstanceEventWindowRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DisassociateInstanceEventWindowRequest', 'dryRun'),
              instanceEventWindowId: BuiltValueNullFieldError.checkNotNull(
                  instanceEventWindowId,
                  r'DisassociateInstanceEventWindowRequest',
                  'instanceEventWindowId'),
              associationTarget: associationTarget.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'associationTarget';
        associationTarget.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DisassociateInstanceEventWindowRequest',
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
