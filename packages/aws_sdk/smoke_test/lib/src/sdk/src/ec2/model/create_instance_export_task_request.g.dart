// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_instance_export_task_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateInstanceExportTaskRequest
    extends CreateInstanceExportTaskRequest {
  @override
  final String? description;
  @override
  final _i3.ExportToS3TaskSpecification exportToS3Task;
  @override
  final String instanceId;
  @override
  final _i4.ExportEnvironment targetEnvironment;
  @override
  final _i6.BuiltList<_i5.TagSpecification>? tagSpecifications;

  factory _$CreateInstanceExportTaskRequest(
          [void Function(CreateInstanceExportTaskRequestBuilder)? updates]) =>
      (new CreateInstanceExportTaskRequestBuilder()..update(updates))._build();

  _$CreateInstanceExportTaskRequest._(
      {this.description,
      required this.exportToS3Task,
      required this.instanceId,
      required this.targetEnvironment,
      this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        exportToS3Task, r'CreateInstanceExportTaskRequest', 'exportToS3Task');
    BuiltValueNullFieldError.checkNotNull(
        instanceId, r'CreateInstanceExportTaskRequest', 'instanceId');
    BuiltValueNullFieldError.checkNotNull(targetEnvironment,
        r'CreateInstanceExportTaskRequest', 'targetEnvironment');
  }

  @override
  CreateInstanceExportTaskRequest rebuild(
          void Function(CreateInstanceExportTaskRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateInstanceExportTaskRequestBuilder toBuilder() =>
      new CreateInstanceExportTaskRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateInstanceExportTaskRequest &&
        description == other.description &&
        exportToS3Task == other.exportToS3Task &&
        instanceId == other.instanceId &&
        targetEnvironment == other.targetEnvironment &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, exportToS3Task.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, targetEnvironment.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateInstanceExportTaskRequestBuilder
    implements
        Builder<CreateInstanceExportTaskRequest,
            CreateInstanceExportTaskRequestBuilder> {
  _$CreateInstanceExportTaskRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i3.ExportToS3TaskSpecificationBuilder? _exportToS3Task;
  _i3.ExportToS3TaskSpecificationBuilder get exportToS3Task =>
      _$this._exportToS3Task ??= new _i3.ExportToS3TaskSpecificationBuilder();
  set exportToS3Task(_i3.ExportToS3TaskSpecificationBuilder? exportToS3Task) =>
      _$this._exportToS3Task = exportToS3Task;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  _i4.ExportEnvironment? _targetEnvironment;
  _i4.ExportEnvironment? get targetEnvironment => _$this._targetEnvironment;
  set targetEnvironment(_i4.ExportEnvironment? targetEnvironment) =>
      _$this._targetEnvironment = targetEnvironment;

  _i6.ListBuilder<_i5.TagSpecification>? _tagSpecifications;
  _i6.ListBuilder<_i5.TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i6.ListBuilder<_i5.TagSpecification>();
  set tagSpecifications(
          _i6.ListBuilder<_i5.TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  CreateInstanceExportTaskRequestBuilder() {
    CreateInstanceExportTaskRequest._init(this);
  }

  CreateInstanceExportTaskRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _exportToS3Task = $v.exportToS3Task.toBuilder();
      _instanceId = $v.instanceId;
      _targetEnvironment = $v.targetEnvironment;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateInstanceExportTaskRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateInstanceExportTaskRequest;
  }

  @override
  void update(void Function(CreateInstanceExportTaskRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateInstanceExportTaskRequest build() => _build();

  _$CreateInstanceExportTaskRequest _build() {
    _$CreateInstanceExportTaskRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateInstanceExportTaskRequest._(
              description: description,
              exportToS3Task: exportToS3Task.build(),
              instanceId: BuiltValueNullFieldError.checkNotNull(
                  instanceId, r'CreateInstanceExportTaskRequest', 'instanceId'),
              targetEnvironment: BuiltValueNullFieldError.checkNotNull(
                  targetEnvironment,
                  r'CreateInstanceExportTaskRequest',
                  'targetEnvironment'),
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exportToS3Task';
        exportToS3Task.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateInstanceExportTaskRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
