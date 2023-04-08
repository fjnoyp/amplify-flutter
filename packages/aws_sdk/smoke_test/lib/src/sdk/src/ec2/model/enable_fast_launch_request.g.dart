// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.enable_fast_launch_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableFastLaunchRequest extends EnableFastLaunchRequest {
  @override
  final String imageId;
  @override
  final String? resourceType;
  @override
  final _i3.FastLaunchSnapshotConfigurationRequest? snapshotConfiguration;
  @override
  final _i4.FastLaunchLaunchTemplateSpecificationRequest? launchTemplate;
  @override
  final int maxParallelLaunches;
  @override
  final bool dryRun;

  factory _$EnableFastLaunchRequest(
          [void Function(EnableFastLaunchRequestBuilder)? updates]) =>
      (new EnableFastLaunchRequestBuilder()..update(updates))._build();

  _$EnableFastLaunchRequest._(
      {required this.imageId,
      this.resourceType,
      this.snapshotConfiguration,
      this.launchTemplate,
      required this.maxParallelLaunches,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        imageId, r'EnableFastLaunchRequest', 'imageId');
    BuiltValueNullFieldError.checkNotNull(
        maxParallelLaunches, r'EnableFastLaunchRequest', 'maxParallelLaunches');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'EnableFastLaunchRequest', 'dryRun');
  }

  @override
  EnableFastLaunchRequest rebuild(
          void Function(EnableFastLaunchRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableFastLaunchRequestBuilder toBuilder() =>
      new EnableFastLaunchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableFastLaunchRequest &&
        imageId == other.imageId &&
        resourceType == other.resourceType &&
        snapshotConfiguration == other.snapshotConfiguration &&
        launchTemplate == other.launchTemplate &&
        maxParallelLaunches == other.maxParallelLaunches &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, snapshotConfiguration.hashCode);
    _$hash = $jc(_$hash, launchTemplate.hashCode);
    _$hash = $jc(_$hash, maxParallelLaunches.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnableFastLaunchRequestBuilder
    implements
        Builder<EnableFastLaunchRequest, EnableFastLaunchRequestBuilder> {
  _$EnableFastLaunchRequest? _$v;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  _i3.FastLaunchSnapshotConfigurationRequestBuilder? _snapshotConfiguration;
  _i3.FastLaunchSnapshotConfigurationRequestBuilder get snapshotConfiguration =>
      _$this._snapshotConfiguration ??=
          new _i3.FastLaunchSnapshotConfigurationRequestBuilder();
  set snapshotConfiguration(
          _i3.FastLaunchSnapshotConfigurationRequestBuilder?
              snapshotConfiguration) =>
      _$this._snapshotConfiguration = snapshotConfiguration;

  _i4.FastLaunchLaunchTemplateSpecificationRequestBuilder? _launchTemplate;
  _i4.FastLaunchLaunchTemplateSpecificationRequestBuilder get launchTemplate =>
      _$this._launchTemplate ??=
          new _i4.FastLaunchLaunchTemplateSpecificationRequestBuilder();
  set launchTemplate(
          _i4.FastLaunchLaunchTemplateSpecificationRequestBuilder?
              launchTemplate) =>
      _$this._launchTemplate = launchTemplate;

  int? _maxParallelLaunches;
  int? get maxParallelLaunches => _$this._maxParallelLaunches;
  set maxParallelLaunches(int? maxParallelLaunches) =>
      _$this._maxParallelLaunches = maxParallelLaunches;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  EnableFastLaunchRequestBuilder() {
    EnableFastLaunchRequest._init(this);
  }

  EnableFastLaunchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageId = $v.imageId;
      _resourceType = $v.resourceType;
      _snapshotConfiguration = $v.snapshotConfiguration?.toBuilder();
      _launchTemplate = $v.launchTemplate?.toBuilder();
      _maxParallelLaunches = $v.maxParallelLaunches;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableFastLaunchRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableFastLaunchRequest;
  }

  @override
  void update(void Function(EnableFastLaunchRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableFastLaunchRequest build() => _build();

  _$EnableFastLaunchRequest _build() {
    _$EnableFastLaunchRequest _$result;
    try {
      _$result = _$v ??
          new _$EnableFastLaunchRequest._(
              imageId: BuiltValueNullFieldError.checkNotNull(
                  imageId, r'EnableFastLaunchRequest', 'imageId'),
              resourceType: resourceType,
              snapshotConfiguration: _snapshotConfiguration?.build(),
              launchTemplate: _launchTemplate?.build(),
              maxParallelLaunches: BuiltValueNullFieldError.checkNotNull(
                  maxParallelLaunches,
                  r'EnableFastLaunchRequest',
                  'maxParallelLaunches'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'EnableFastLaunchRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'snapshotConfiguration';
        _snapshotConfiguration?.build();
        _$failedField = 'launchTemplate';
        _launchTemplate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EnableFastLaunchRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
