// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.export_image_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportImageRequest extends ExportImageRequest {
  @override
  final String? clientToken;
  @override
  final String? description;
  @override
  final _i3.DiskImageFormat diskImageFormat;
  @override
  final bool dryRun;
  @override
  final String imageId;
  @override
  final _i4.ExportTaskS3LocationRequest s3ExportLocation;
  @override
  final String? roleName;
  @override
  final _i6.BuiltList<_i5.TagSpecification>? tagSpecifications;

  factory _$ExportImageRequest(
          [void Function(ExportImageRequestBuilder)? updates]) =>
      (new ExportImageRequestBuilder()..update(updates))._build();

  _$ExportImageRequest._(
      {this.clientToken,
      this.description,
      required this.diskImageFormat,
      required this.dryRun,
      required this.imageId,
      required this.s3ExportLocation,
      this.roleName,
      this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        diskImageFormat, r'ExportImageRequest', 'diskImageFormat');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ExportImageRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        imageId, r'ExportImageRequest', 'imageId');
    BuiltValueNullFieldError.checkNotNull(
        s3ExportLocation, r'ExportImageRequest', 's3ExportLocation');
  }

  @override
  ExportImageRequest rebuild(
          void Function(ExportImageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportImageRequestBuilder toBuilder() =>
      new ExportImageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportImageRequest &&
        clientToken == other.clientToken &&
        description == other.description &&
        diskImageFormat == other.diskImageFormat &&
        dryRun == other.dryRun &&
        imageId == other.imageId &&
        s3ExportLocation == other.s3ExportLocation &&
        roleName == other.roleName &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, diskImageFormat.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, s3ExportLocation.hashCode);
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExportImageRequestBuilder
    implements Builder<ExportImageRequest, ExportImageRequestBuilder> {
  _$ExportImageRequest? _$v;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i3.DiskImageFormat? _diskImageFormat;
  _i3.DiskImageFormat? get diskImageFormat => _$this._diskImageFormat;
  set diskImageFormat(_i3.DiskImageFormat? diskImageFormat) =>
      _$this._diskImageFormat = diskImageFormat;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  _i4.ExportTaskS3LocationRequestBuilder? _s3ExportLocation;
  _i4.ExportTaskS3LocationRequestBuilder get s3ExportLocation =>
      _$this._s3ExportLocation ??= new _i4.ExportTaskS3LocationRequestBuilder();
  set s3ExportLocation(
          _i4.ExportTaskS3LocationRequestBuilder? s3ExportLocation) =>
      _$this._s3ExportLocation = s3ExportLocation;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  _i6.ListBuilder<_i5.TagSpecification>? _tagSpecifications;
  _i6.ListBuilder<_i5.TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i6.ListBuilder<_i5.TagSpecification>();
  set tagSpecifications(
          _i6.ListBuilder<_i5.TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  ExportImageRequestBuilder() {
    ExportImageRequest._init(this);
  }

  ExportImageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientToken = $v.clientToken;
      _description = $v.description;
      _diskImageFormat = $v.diskImageFormat;
      _dryRun = $v.dryRun;
      _imageId = $v.imageId;
      _s3ExportLocation = $v.s3ExportLocation.toBuilder();
      _roleName = $v.roleName;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportImageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportImageRequest;
  }

  @override
  void update(void Function(ExportImageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportImageRequest build() => _build();

  _$ExportImageRequest _build() {
    _$ExportImageRequest _$result;
    try {
      _$result = _$v ??
          new _$ExportImageRequest._(
              clientToken: clientToken,
              description: description,
              diskImageFormat: BuiltValueNullFieldError.checkNotNull(
                  diskImageFormat, r'ExportImageRequest', 'diskImageFormat'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ExportImageRequest', 'dryRun'),
              imageId: BuiltValueNullFieldError.checkNotNull(
                  imageId, r'ExportImageRequest', 'imageId'),
              s3ExportLocation: s3ExportLocation.build(),
              roleName: roleName,
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 's3ExportLocation';
        s3ExportLocation.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExportImageRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
