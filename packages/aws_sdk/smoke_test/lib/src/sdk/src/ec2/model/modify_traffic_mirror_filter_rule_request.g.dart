// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.modify_traffic_mirror_filter_rule_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyTrafficMirrorFilterRuleRequest
    extends ModifyTrafficMirrorFilterRuleRequest {
  @override
  final String trafficMirrorFilterRuleId;
  @override
  final _i3.TrafficDirection? trafficDirection;
  @override
  final int ruleNumber;
  @override
  final _i4.TrafficMirrorRuleAction? ruleAction;
  @override
  final _i5.TrafficMirrorPortRangeRequest? destinationPortRange;
  @override
  final _i5.TrafficMirrorPortRangeRequest? sourcePortRange;
  @override
  final int protocol;
  @override
  final String? destinationCidrBlock;
  @override
  final String? sourceCidrBlock;
  @override
  final String? description;
  @override
  final _i7.BuiltList<_i6.TrafficMirrorFilterRuleField>? removeFields;
  @override
  final bool dryRun;

  factory _$ModifyTrafficMirrorFilterRuleRequest(
          [void Function(ModifyTrafficMirrorFilterRuleRequestBuilder)?
              updates]) =>
      (new ModifyTrafficMirrorFilterRuleRequestBuilder()..update(updates))
          ._build();

  _$ModifyTrafficMirrorFilterRuleRequest._(
      {required this.trafficMirrorFilterRuleId,
      this.trafficDirection,
      required this.ruleNumber,
      this.ruleAction,
      this.destinationPortRange,
      this.sourcePortRange,
      required this.protocol,
      this.destinationCidrBlock,
      this.sourceCidrBlock,
      this.description,
      this.removeFields,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(trafficMirrorFilterRuleId,
        r'ModifyTrafficMirrorFilterRuleRequest', 'trafficMirrorFilterRuleId');
    BuiltValueNullFieldError.checkNotNull(
        ruleNumber, r'ModifyTrafficMirrorFilterRuleRequest', 'ruleNumber');
    BuiltValueNullFieldError.checkNotNull(
        protocol, r'ModifyTrafficMirrorFilterRuleRequest', 'protocol');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyTrafficMirrorFilterRuleRequest', 'dryRun');
  }

  @override
  ModifyTrafficMirrorFilterRuleRequest rebuild(
          void Function(ModifyTrafficMirrorFilterRuleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyTrafficMirrorFilterRuleRequestBuilder toBuilder() =>
      new ModifyTrafficMirrorFilterRuleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyTrafficMirrorFilterRuleRequest &&
        trafficMirrorFilterRuleId == other.trafficMirrorFilterRuleId &&
        trafficDirection == other.trafficDirection &&
        ruleNumber == other.ruleNumber &&
        ruleAction == other.ruleAction &&
        destinationPortRange == other.destinationPortRange &&
        sourcePortRange == other.sourcePortRange &&
        protocol == other.protocol &&
        destinationCidrBlock == other.destinationCidrBlock &&
        sourceCidrBlock == other.sourceCidrBlock &&
        description == other.description &&
        removeFields == other.removeFields &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorFilterRuleId.hashCode);
    _$hash = $jc(_$hash, trafficDirection.hashCode);
    _$hash = $jc(_$hash, ruleNumber.hashCode);
    _$hash = $jc(_$hash, ruleAction.hashCode);
    _$hash = $jc(_$hash, destinationPortRange.hashCode);
    _$hash = $jc(_$hash, sourcePortRange.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, destinationCidrBlock.hashCode);
    _$hash = $jc(_$hash, sourceCidrBlock.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, removeFields.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyTrafficMirrorFilterRuleRequestBuilder
    implements
        Builder<ModifyTrafficMirrorFilterRuleRequest,
            ModifyTrafficMirrorFilterRuleRequestBuilder> {
  _$ModifyTrafficMirrorFilterRuleRequest? _$v;

  String? _trafficMirrorFilterRuleId;
  String? get trafficMirrorFilterRuleId => _$this._trafficMirrorFilterRuleId;
  set trafficMirrorFilterRuleId(String? trafficMirrorFilterRuleId) =>
      _$this._trafficMirrorFilterRuleId = trafficMirrorFilterRuleId;

  _i3.TrafficDirection? _trafficDirection;
  _i3.TrafficDirection? get trafficDirection => _$this._trafficDirection;
  set trafficDirection(_i3.TrafficDirection? trafficDirection) =>
      _$this._trafficDirection = trafficDirection;

  int? _ruleNumber;
  int? get ruleNumber => _$this._ruleNumber;
  set ruleNumber(int? ruleNumber) => _$this._ruleNumber = ruleNumber;

  _i4.TrafficMirrorRuleAction? _ruleAction;
  _i4.TrafficMirrorRuleAction? get ruleAction => _$this._ruleAction;
  set ruleAction(_i4.TrafficMirrorRuleAction? ruleAction) =>
      _$this._ruleAction = ruleAction;

  _i5.TrafficMirrorPortRangeRequestBuilder? _destinationPortRange;
  _i5.TrafficMirrorPortRangeRequestBuilder get destinationPortRange =>
      _$this._destinationPortRange ??=
          new _i5.TrafficMirrorPortRangeRequestBuilder();
  set destinationPortRange(
          _i5.TrafficMirrorPortRangeRequestBuilder? destinationPortRange) =>
      _$this._destinationPortRange = destinationPortRange;

  _i5.TrafficMirrorPortRangeRequestBuilder? _sourcePortRange;
  _i5.TrafficMirrorPortRangeRequestBuilder get sourcePortRange =>
      _$this._sourcePortRange ??=
          new _i5.TrafficMirrorPortRangeRequestBuilder();
  set sourcePortRange(
          _i5.TrafficMirrorPortRangeRequestBuilder? sourcePortRange) =>
      _$this._sourcePortRange = sourcePortRange;

  int? _protocol;
  int? get protocol => _$this._protocol;
  set protocol(int? protocol) => _$this._protocol = protocol;

  String? _destinationCidrBlock;
  String? get destinationCidrBlock => _$this._destinationCidrBlock;
  set destinationCidrBlock(String? destinationCidrBlock) =>
      _$this._destinationCidrBlock = destinationCidrBlock;

  String? _sourceCidrBlock;
  String? get sourceCidrBlock => _$this._sourceCidrBlock;
  set sourceCidrBlock(String? sourceCidrBlock) =>
      _$this._sourceCidrBlock = sourceCidrBlock;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i7.ListBuilder<_i6.TrafficMirrorFilterRuleField>? _removeFields;
  _i7.ListBuilder<_i6.TrafficMirrorFilterRuleField> get removeFields =>
      _$this._removeFields ??=
          new _i7.ListBuilder<_i6.TrafficMirrorFilterRuleField>();
  set removeFields(
          _i7.ListBuilder<_i6.TrafficMirrorFilterRuleField>? removeFields) =>
      _$this._removeFields = removeFields;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifyTrafficMirrorFilterRuleRequestBuilder() {
    ModifyTrafficMirrorFilterRuleRequest._init(this);
  }

  ModifyTrafficMirrorFilterRuleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorFilterRuleId = $v.trafficMirrorFilterRuleId;
      _trafficDirection = $v.trafficDirection;
      _ruleNumber = $v.ruleNumber;
      _ruleAction = $v.ruleAction;
      _destinationPortRange = $v.destinationPortRange?.toBuilder();
      _sourcePortRange = $v.sourcePortRange?.toBuilder();
      _protocol = $v.protocol;
      _destinationCidrBlock = $v.destinationCidrBlock;
      _sourceCidrBlock = $v.sourceCidrBlock;
      _description = $v.description;
      _removeFields = $v.removeFields?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyTrafficMirrorFilterRuleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyTrafficMirrorFilterRuleRequest;
  }

  @override
  void update(
      void Function(ModifyTrafficMirrorFilterRuleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyTrafficMirrorFilterRuleRequest build() => _build();

  _$ModifyTrafficMirrorFilterRuleRequest _build() {
    _$ModifyTrafficMirrorFilterRuleRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyTrafficMirrorFilterRuleRequest._(
              trafficMirrorFilterRuleId: BuiltValueNullFieldError.checkNotNull(
                  trafficMirrorFilterRuleId,
                  r'ModifyTrafficMirrorFilterRuleRequest',
                  'trafficMirrorFilterRuleId'),
              trafficDirection: trafficDirection,
              ruleNumber: BuiltValueNullFieldError.checkNotNull(ruleNumber,
                  r'ModifyTrafficMirrorFilterRuleRequest', 'ruleNumber'),
              ruleAction: ruleAction,
              destinationPortRange: _destinationPortRange?.build(),
              sourcePortRange: _sourcePortRange?.build(),
              protocol: BuiltValueNullFieldError.checkNotNull(protocol,
                  r'ModifyTrafficMirrorFilterRuleRequest', 'protocol'),
              destinationCidrBlock: destinationCidrBlock,
              sourceCidrBlock: sourceCidrBlock,
              description: description,
              removeFields: _removeFields?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyTrafficMirrorFilterRuleRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'destinationPortRange';
        _destinationPortRange?.build();
        _$failedField = 'sourcePortRange';
        _sourcePortRange?.build();

        _$failedField = 'removeFields';
        _removeFields?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyTrafficMirrorFilterRuleRequest',
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
