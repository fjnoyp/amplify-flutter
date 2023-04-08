// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_traffic_mirror_filter_rule_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTrafficMirrorFilterRuleRequest
    extends CreateTrafficMirrorFilterRuleRequest {
  @override
  final String trafficMirrorFilterId;
  @override
  final _i3.TrafficDirection trafficDirection;
  @override
  final int ruleNumber;
  @override
  final _i4.TrafficMirrorRuleAction ruleAction;
  @override
  final _i5.TrafficMirrorPortRangeRequest? destinationPortRange;
  @override
  final _i5.TrafficMirrorPortRangeRequest? sourcePortRange;
  @override
  final int protocol;
  @override
  final String destinationCidrBlock;
  @override
  final String sourceCidrBlock;
  @override
  final String? description;
  @override
  final bool dryRun;
  @override
  final String? clientToken;

  factory _$CreateTrafficMirrorFilterRuleRequest(
          [void Function(CreateTrafficMirrorFilterRuleRequestBuilder)?
              updates]) =>
      (new CreateTrafficMirrorFilterRuleRequestBuilder()..update(updates))
          ._build();

  _$CreateTrafficMirrorFilterRuleRequest._(
      {required this.trafficMirrorFilterId,
      required this.trafficDirection,
      required this.ruleNumber,
      required this.ruleAction,
      this.destinationPortRange,
      this.sourcePortRange,
      required this.protocol,
      required this.destinationCidrBlock,
      required this.sourceCidrBlock,
      this.description,
      required this.dryRun,
      this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(trafficMirrorFilterId,
        r'CreateTrafficMirrorFilterRuleRequest', 'trafficMirrorFilterId');
    BuiltValueNullFieldError.checkNotNull(trafficDirection,
        r'CreateTrafficMirrorFilterRuleRequest', 'trafficDirection');
    BuiltValueNullFieldError.checkNotNull(
        ruleNumber, r'CreateTrafficMirrorFilterRuleRequest', 'ruleNumber');
    BuiltValueNullFieldError.checkNotNull(
        ruleAction, r'CreateTrafficMirrorFilterRuleRequest', 'ruleAction');
    BuiltValueNullFieldError.checkNotNull(
        protocol, r'CreateTrafficMirrorFilterRuleRequest', 'protocol');
    BuiltValueNullFieldError.checkNotNull(destinationCidrBlock,
        r'CreateTrafficMirrorFilterRuleRequest', 'destinationCidrBlock');
    BuiltValueNullFieldError.checkNotNull(sourceCidrBlock,
        r'CreateTrafficMirrorFilterRuleRequest', 'sourceCidrBlock');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateTrafficMirrorFilterRuleRequest', 'dryRun');
  }

  @override
  CreateTrafficMirrorFilterRuleRequest rebuild(
          void Function(CreateTrafficMirrorFilterRuleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTrafficMirrorFilterRuleRequestBuilder toBuilder() =>
      new CreateTrafficMirrorFilterRuleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTrafficMirrorFilterRuleRequest &&
        trafficMirrorFilterId == other.trafficMirrorFilterId &&
        trafficDirection == other.trafficDirection &&
        ruleNumber == other.ruleNumber &&
        ruleAction == other.ruleAction &&
        destinationPortRange == other.destinationPortRange &&
        sourcePortRange == other.sourcePortRange &&
        protocol == other.protocol &&
        destinationCidrBlock == other.destinationCidrBlock &&
        sourceCidrBlock == other.sourceCidrBlock &&
        description == other.description &&
        dryRun == other.dryRun &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorFilterId.hashCode);
    _$hash = $jc(_$hash, trafficDirection.hashCode);
    _$hash = $jc(_$hash, ruleNumber.hashCode);
    _$hash = $jc(_$hash, ruleAction.hashCode);
    _$hash = $jc(_$hash, destinationPortRange.hashCode);
    _$hash = $jc(_$hash, sourcePortRange.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, destinationCidrBlock.hashCode);
    _$hash = $jc(_$hash, sourceCidrBlock.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTrafficMirrorFilterRuleRequestBuilder
    implements
        Builder<CreateTrafficMirrorFilterRuleRequest,
            CreateTrafficMirrorFilterRuleRequestBuilder> {
  _$CreateTrafficMirrorFilterRuleRequest? _$v;

  String? _trafficMirrorFilterId;
  String? get trafficMirrorFilterId => _$this._trafficMirrorFilterId;
  set trafficMirrorFilterId(String? trafficMirrorFilterId) =>
      _$this._trafficMirrorFilterId = trafficMirrorFilterId;

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

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  CreateTrafficMirrorFilterRuleRequestBuilder() {
    CreateTrafficMirrorFilterRuleRequest._init(this);
  }

  CreateTrafficMirrorFilterRuleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorFilterId = $v.trafficMirrorFilterId;
      _trafficDirection = $v.trafficDirection;
      _ruleNumber = $v.ruleNumber;
      _ruleAction = $v.ruleAction;
      _destinationPortRange = $v.destinationPortRange?.toBuilder();
      _sourcePortRange = $v.sourcePortRange?.toBuilder();
      _protocol = $v.protocol;
      _destinationCidrBlock = $v.destinationCidrBlock;
      _sourceCidrBlock = $v.sourceCidrBlock;
      _description = $v.description;
      _dryRun = $v.dryRun;
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTrafficMirrorFilterRuleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTrafficMirrorFilterRuleRequest;
  }

  @override
  void update(
      void Function(CreateTrafficMirrorFilterRuleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTrafficMirrorFilterRuleRequest build() => _build();

  _$CreateTrafficMirrorFilterRuleRequest _build() {
    _$CreateTrafficMirrorFilterRuleRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateTrafficMirrorFilterRuleRequest._(
              trafficMirrorFilterId: BuiltValueNullFieldError.checkNotNull(
                  trafficMirrorFilterId,
                  r'CreateTrafficMirrorFilterRuleRequest',
                  'trafficMirrorFilterId'),
              trafficDirection: BuiltValueNullFieldError.checkNotNull(
                  trafficDirection, r'CreateTrafficMirrorFilterRuleRequest', 'trafficDirection'),
              ruleNumber: BuiltValueNullFieldError.checkNotNull(
                  ruleNumber, r'CreateTrafficMirrorFilterRuleRequest', 'ruleNumber'),
              ruleAction: BuiltValueNullFieldError.checkNotNull(
                  ruleAction, r'CreateTrafficMirrorFilterRuleRequest', 'ruleAction'),
              destinationPortRange: _destinationPortRange?.build(),
              sourcePortRange: _sourcePortRange?.build(),
              protocol: BuiltValueNullFieldError.checkNotNull(
                  protocol, r'CreateTrafficMirrorFilterRuleRequest', 'protocol'),
              destinationCidrBlock: BuiltValueNullFieldError.checkNotNull(
                  destinationCidrBlock,
                  r'CreateTrafficMirrorFilterRuleRequest',
                  'destinationCidrBlock'),
              sourceCidrBlock: BuiltValueNullFieldError.checkNotNull(sourceCidrBlock, r'CreateTrafficMirrorFilterRuleRequest', 'sourceCidrBlock'),
              description: description,
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun, r'CreateTrafficMirrorFilterRuleRequest', 'dryRun'),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'destinationPortRange';
        _destinationPortRange?.build();
        _$failedField = 'sourcePortRange';
        _sourcePortRange?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTrafficMirrorFilterRuleRequest',
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
