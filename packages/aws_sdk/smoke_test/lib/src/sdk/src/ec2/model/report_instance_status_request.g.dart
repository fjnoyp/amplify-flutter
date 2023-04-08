// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.report_instance_status_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportInstanceStatusRequest extends ReportInstanceStatusRequest {
  @override
  final String? description;
  @override
  final bool dryRun;
  @override
  final DateTime? endTime;
  @override
  final _i5.BuiltList<String> instances;
  @override
  final _i5.BuiltList<_i3.ReportInstanceReasonCodes> reasonCodes;
  @override
  final DateTime? startTime;
  @override
  final _i4.ReportStatusType status;

  factory _$ReportInstanceStatusRequest(
          [void Function(ReportInstanceStatusRequestBuilder)? updates]) =>
      (new ReportInstanceStatusRequestBuilder()..update(updates))._build();

  _$ReportInstanceStatusRequest._(
      {this.description,
      required this.dryRun,
      this.endTime,
      required this.instances,
      required this.reasonCodes,
      this.startTime,
      required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ReportInstanceStatusRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        instances, r'ReportInstanceStatusRequest', 'instances');
    BuiltValueNullFieldError.checkNotNull(
        reasonCodes, r'ReportInstanceStatusRequest', 'reasonCodes');
    BuiltValueNullFieldError.checkNotNull(
        status, r'ReportInstanceStatusRequest', 'status');
  }

  @override
  ReportInstanceStatusRequest rebuild(
          void Function(ReportInstanceStatusRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportInstanceStatusRequestBuilder toBuilder() =>
      new ReportInstanceStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportInstanceStatusRequest &&
        description == other.description &&
        dryRun == other.dryRun &&
        endTime == other.endTime &&
        instances == other.instances &&
        reasonCodes == other.reasonCodes &&
        startTime == other.startTime &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, instances.hashCode);
    _$hash = $jc(_$hash, reasonCodes.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReportInstanceStatusRequestBuilder
    implements
        Builder<ReportInstanceStatusRequest,
            ReportInstanceStatusRequestBuilder> {
  _$ReportInstanceStatusRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  _i5.ListBuilder<String>? _instances;
  _i5.ListBuilder<String> get instances =>
      _$this._instances ??= new _i5.ListBuilder<String>();
  set instances(_i5.ListBuilder<String>? instances) =>
      _$this._instances = instances;

  _i5.ListBuilder<_i3.ReportInstanceReasonCodes>? _reasonCodes;
  _i5.ListBuilder<_i3.ReportInstanceReasonCodes> get reasonCodes =>
      _$this._reasonCodes ??=
          new _i5.ListBuilder<_i3.ReportInstanceReasonCodes>();
  set reasonCodes(
          _i5.ListBuilder<_i3.ReportInstanceReasonCodes>? reasonCodes) =>
      _$this._reasonCodes = reasonCodes;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  _i4.ReportStatusType? _status;
  _i4.ReportStatusType? get status => _$this._status;
  set status(_i4.ReportStatusType? status) => _$this._status = status;

  ReportInstanceStatusRequestBuilder() {
    ReportInstanceStatusRequest._init(this);
  }

  ReportInstanceStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _dryRun = $v.dryRun;
      _endTime = $v.endTime;
      _instances = $v.instances.toBuilder();
      _reasonCodes = $v.reasonCodes.toBuilder();
      _startTime = $v.startTime;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportInstanceStatusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportInstanceStatusRequest;
  }

  @override
  void update(void Function(ReportInstanceStatusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportInstanceStatusRequest build() => _build();

  _$ReportInstanceStatusRequest _build() {
    _$ReportInstanceStatusRequest _$result;
    try {
      _$result = _$v ??
          new _$ReportInstanceStatusRequest._(
              description: description,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ReportInstanceStatusRequest', 'dryRun'),
              endTime: endTime,
              instances: instances.build(),
              reasonCodes: reasonCodes.build(),
              startTime: startTime,
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'ReportInstanceStatusRequest', 'status'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instances';
        instances.build();
        _$failedField = 'reasonCodes';
        reasonCodes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReportInstanceStatusRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
