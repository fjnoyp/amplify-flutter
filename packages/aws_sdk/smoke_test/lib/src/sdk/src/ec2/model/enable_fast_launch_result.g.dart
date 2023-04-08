// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.enable_fast_launch_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableFastLaunchResult extends EnableFastLaunchResult {
  @override
  final String? imageId;
  @override
  final _i2.FastLaunchResourceType? resourceType;
  @override
  final _i3.FastLaunchSnapshotConfigurationResponse? snapshotConfiguration;
  @override
  final _i4.FastLaunchLaunchTemplateSpecificationResponse? launchTemplate;
  @override
  final int maxParallelLaunches;
  @override
  final String? ownerId;
  @override
  final _i5.FastLaunchStateCode? state;
  @override
  final String? stateTransitionReason;
  @override
  final DateTime? stateTransitionTime;

  factory _$EnableFastLaunchResult(
          [void Function(EnableFastLaunchResultBuilder)? updates]) =>
      (new EnableFastLaunchResultBuilder()..update(updates))._build();

  _$EnableFastLaunchResult._(
      {this.imageId,
      this.resourceType,
      this.snapshotConfiguration,
      this.launchTemplate,
      required this.maxParallelLaunches,
      this.ownerId,
      this.state,
      this.stateTransitionReason,
      this.stateTransitionTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxParallelLaunches, r'EnableFastLaunchResult', 'maxParallelLaunches');
  }

  @override
  EnableFastLaunchResult rebuild(
          void Function(EnableFastLaunchResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableFastLaunchResultBuilder toBuilder() =>
      new EnableFastLaunchResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableFastLaunchResult &&
        imageId == other.imageId &&
        resourceType == other.resourceType &&
        snapshotConfiguration == other.snapshotConfiguration &&
        launchTemplate == other.launchTemplate &&
        maxParallelLaunches == other.maxParallelLaunches &&
        ownerId == other.ownerId &&
        state == other.state &&
        stateTransitionReason == other.stateTransitionReason &&
        stateTransitionTime == other.stateTransitionTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, snapshotConfiguration.hashCode);
    _$hash = $jc(_$hash, launchTemplate.hashCode);
    _$hash = $jc(_$hash, maxParallelLaunches.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, stateTransitionReason.hashCode);
    _$hash = $jc(_$hash, stateTransitionTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnableFastLaunchResultBuilder
    implements Builder<EnableFastLaunchResult, EnableFastLaunchResultBuilder> {
  _$EnableFastLaunchResult? _$v;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  _i2.FastLaunchResourceType? _resourceType;
  _i2.FastLaunchResourceType? get resourceType => _$this._resourceType;
  set resourceType(_i2.FastLaunchResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  _i3.FastLaunchSnapshotConfigurationResponseBuilder? _snapshotConfiguration;
  _i3.FastLaunchSnapshotConfigurationResponseBuilder
      get snapshotConfiguration => _$this._snapshotConfiguration ??=
          new _i3.FastLaunchSnapshotConfigurationResponseBuilder();
  set snapshotConfiguration(
          _i3.FastLaunchSnapshotConfigurationResponseBuilder?
              snapshotConfiguration) =>
      _$this._snapshotConfiguration = snapshotConfiguration;

  _i4.FastLaunchLaunchTemplateSpecificationResponseBuilder? _launchTemplate;
  _i4.FastLaunchLaunchTemplateSpecificationResponseBuilder get launchTemplate =>
      _$this._launchTemplate ??=
          new _i4.FastLaunchLaunchTemplateSpecificationResponseBuilder();
  set launchTemplate(
          _i4.FastLaunchLaunchTemplateSpecificationResponseBuilder?
              launchTemplate) =>
      _$this._launchTemplate = launchTemplate;

  int? _maxParallelLaunches;
  int? get maxParallelLaunches => _$this._maxParallelLaunches;
  set maxParallelLaunches(int? maxParallelLaunches) =>
      _$this._maxParallelLaunches = maxParallelLaunches;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  _i5.FastLaunchStateCode? _state;
  _i5.FastLaunchStateCode? get state => _$this._state;
  set state(_i5.FastLaunchStateCode? state) => _$this._state = state;

  String? _stateTransitionReason;
  String? get stateTransitionReason => _$this._stateTransitionReason;
  set stateTransitionReason(String? stateTransitionReason) =>
      _$this._stateTransitionReason = stateTransitionReason;

  DateTime? _stateTransitionTime;
  DateTime? get stateTransitionTime => _$this._stateTransitionTime;
  set stateTransitionTime(DateTime? stateTransitionTime) =>
      _$this._stateTransitionTime = stateTransitionTime;

  EnableFastLaunchResultBuilder() {
    EnableFastLaunchResult._init(this);
  }

  EnableFastLaunchResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageId = $v.imageId;
      _resourceType = $v.resourceType;
      _snapshotConfiguration = $v.snapshotConfiguration?.toBuilder();
      _launchTemplate = $v.launchTemplate?.toBuilder();
      _maxParallelLaunches = $v.maxParallelLaunches;
      _ownerId = $v.ownerId;
      _state = $v.state;
      _stateTransitionReason = $v.stateTransitionReason;
      _stateTransitionTime = $v.stateTransitionTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableFastLaunchResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableFastLaunchResult;
  }

  @override
  void update(void Function(EnableFastLaunchResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableFastLaunchResult build() => _build();

  _$EnableFastLaunchResult _build() {
    _$EnableFastLaunchResult _$result;
    try {
      _$result = _$v ??
          new _$EnableFastLaunchResult._(
              imageId: imageId,
              resourceType: resourceType,
              snapshotConfiguration: _snapshotConfiguration?.build(),
              launchTemplate: _launchTemplate?.build(),
              maxParallelLaunches: BuiltValueNullFieldError.checkNotNull(
                  maxParallelLaunches,
                  r'EnableFastLaunchResult',
                  'maxParallelLaunches'),
              ownerId: ownerId,
              state: state,
              stateTransitionReason: stateTransitionReason,
              stateTransitionTime: stateTransitionTime);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'snapshotConfiguration';
        _snapshotConfiguration?.build();
        _$failedField = 'launchTemplate';
        _launchTemplate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EnableFastLaunchResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
