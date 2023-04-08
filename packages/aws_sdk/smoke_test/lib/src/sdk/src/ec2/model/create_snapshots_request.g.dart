// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_snapshots_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateSnapshotsRequest extends CreateSnapshotsRequest {
  @override
  final String? description;
  @override
  final _i3.InstanceSpecification instanceSpecification;
  @override
  final String? outpostArn;
  @override
  final _i6.BuiltList<_i4.TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;
  @override
  final _i5.CopyTagsFromSource? copyTagsFromSource;

  factory _$CreateSnapshotsRequest(
          [void Function(CreateSnapshotsRequestBuilder)? updates]) =>
      (new CreateSnapshotsRequestBuilder()..update(updates))._build();

  _$CreateSnapshotsRequest._(
      {this.description,
      required this.instanceSpecification,
      this.outpostArn,
      this.tagSpecifications,
      required this.dryRun,
      this.copyTagsFromSource})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(instanceSpecification,
        r'CreateSnapshotsRequest', 'instanceSpecification');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateSnapshotsRequest', 'dryRun');
  }

  @override
  CreateSnapshotsRequest rebuild(
          void Function(CreateSnapshotsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateSnapshotsRequestBuilder toBuilder() =>
      new CreateSnapshotsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSnapshotsRequest &&
        description == other.description &&
        instanceSpecification == other.instanceSpecification &&
        outpostArn == other.outpostArn &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun &&
        copyTagsFromSource == other.copyTagsFromSource;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, instanceSpecification.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, copyTagsFromSource.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateSnapshotsRequestBuilder
    implements Builder<CreateSnapshotsRequest, CreateSnapshotsRequestBuilder> {
  _$CreateSnapshotsRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i3.InstanceSpecificationBuilder? _instanceSpecification;
  _i3.InstanceSpecificationBuilder get instanceSpecification =>
      _$this._instanceSpecification ??= new _i3.InstanceSpecificationBuilder();
  set instanceSpecification(
          _i3.InstanceSpecificationBuilder? instanceSpecification) =>
      _$this._instanceSpecification = instanceSpecification;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  _i6.ListBuilder<_i4.TagSpecification>? _tagSpecifications;
  _i6.ListBuilder<_i4.TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i6.ListBuilder<_i4.TagSpecification>();
  set tagSpecifications(
          _i6.ListBuilder<_i4.TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i5.CopyTagsFromSource? _copyTagsFromSource;
  _i5.CopyTagsFromSource? get copyTagsFromSource => _$this._copyTagsFromSource;
  set copyTagsFromSource(_i5.CopyTagsFromSource? copyTagsFromSource) =>
      _$this._copyTagsFromSource = copyTagsFromSource;

  CreateSnapshotsRequestBuilder() {
    CreateSnapshotsRequest._init(this);
  }

  CreateSnapshotsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _instanceSpecification = $v.instanceSpecification.toBuilder();
      _outpostArn = $v.outpostArn;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _copyTagsFromSource = $v.copyTagsFromSource;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSnapshotsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateSnapshotsRequest;
  }

  @override
  void update(void Function(CreateSnapshotsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateSnapshotsRequest build() => _build();

  _$CreateSnapshotsRequest _build() {
    _$CreateSnapshotsRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateSnapshotsRequest._(
              description: description,
              instanceSpecification: instanceSpecification.build(),
              outpostArn: outpostArn,
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateSnapshotsRequest', 'dryRun'),
              copyTagsFromSource: copyTagsFromSource);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceSpecification';
        instanceSpecification.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateSnapshotsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
