// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.export_task;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportTask extends ExportTask {
  @override
  final String? description;
  @override
  final String? exportTaskId;
  @override
  final _i2.ExportToS3Task? exportToS3Task;
  @override
  final _i3.InstanceExportDetails? instanceExportDetails;
  @override
  final _i4.ExportTaskState? state;
  @override
  final String? statusMessage;
  @override
  final _i6.BuiltList<_i5.Tag>? tags;

  factory _$ExportTask([void Function(ExportTaskBuilder)? updates]) =>
      (new ExportTaskBuilder()..update(updates))._build();

  _$ExportTask._(
      {this.description,
      this.exportTaskId,
      this.exportToS3Task,
      this.instanceExportDetails,
      this.state,
      this.statusMessage,
      this.tags})
      : super._();

  @override
  ExportTask rebuild(void Function(ExportTaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportTaskBuilder toBuilder() => new ExportTaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportTask &&
        description == other.description &&
        exportTaskId == other.exportTaskId &&
        exportToS3Task == other.exportToS3Task &&
        instanceExportDetails == other.instanceExportDetails &&
        state == other.state &&
        statusMessage == other.statusMessage &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, exportTaskId.hashCode);
    _$hash = $jc(_$hash, exportToS3Task.hashCode);
    _$hash = $jc(_$hash, instanceExportDetails.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, statusMessage.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExportTaskBuilder implements Builder<ExportTask, ExportTaskBuilder> {
  _$ExportTask? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _exportTaskId;
  String? get exportTaskId => _$this._exportTaskId;
  set exportTaskId(String? exportTaskId) => _$this._exportTaskId = exportTaskId;

  _i2.ExportToS3TaskBuilder? _exportToS3Task;
  _i2.ExportToS3TaskBuilder get exportToS3Task =>
      _$this._exportToS3Task ??= new _i2.ExportToS3TaskBuilder();
  set exportToS3Task(_i2.ExportToS3TaskBuilder? exportToS3Task) =>
      _$this._exportToS3Task = exportToS3Task;

  _i3.InstanceExportDetailsBuilder? _instanceExportDetails;
  _i3.InstanceExportDetailsBuilder get instanceExportDetails =>
      _$this._instanceExportDetails ??= new _i3.InstanceExportDetailsBuilder();
  set instanceExportDetails(
          _i3.InstanceExportDetailsBuilder? instanceExportDetails) =>
      _$this._instanceExportDetails = instanceExportDetails;

  _i4.ExportTaskState? _state;
  _i4.ExportTaskState? get state => _$this._state;
  set state(_i4.ExportTaskState? state) => _$this._state = state;

  String? _statusMessage;
  String? get statusMessage => _$this._statusMessage;
  set statusMessage(String? statusMessage) =>
      _$this._statusMessage = statusMessage;

  _i6.ListBuilder<_i5.Tag>? _tags;
  _i6.ListBuilder<_i5.Tag> get tags =>
      _$this._tags ??= new _i6.ListBuilder<_i5.Tag>();
  set tags(_i6.ListBuilder<_i5.Tag>? tags) => _$this._tags = tags;

  ExportTaskBuilder() {
    ExportTask._init(this);
  }

  ExportTaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _exportTaskId = $v.exportTaskId;
      _exportToS3Task = $v.exportToS3Task?.toBuilder();
      _instanceExportDetails = $v.instanceExportDetails?.toBuilder();
      _state = $v.state;
      _statusMessage = $v.statusMessage;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportTask other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportTask;
  }

  @override
  void update(void Function(ExportTaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportTask build() => _build();

  _$ExportTask _build() {
    _$ExportTask _$result;
    try {
      _$result = _$v ??
          new _$ExportTask._(
              description: description,
              exportTaskId: exportTaskId,
              exportToS3Task: _exportToS3Task?.build(),
              instanceExportDetails: _instanceExportDetails?.build(),
              state: state,
              statusMessage: statusMessage,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exportToS3Task';
        _exportToS3Task?.build();
        _$failedField = 'instanceExportDetails';
        _instanceExportDetails?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExportTask', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
