// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_transit_gateway_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayRequest extends CreateTransitGatewayRequest {
  @override
  final String? description;
  @override
  final _i3.TransitGatewayRequestOptions? options;
  @override
  final _i5.BuiltList<_i4.TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$CreateTransitGatewayRequest(
          [void Function(CreateTransitGatewayRequestBuilder)? updates]) =>
      (new CreateTransitGatewayRequestBuilder()..update(updates))._build();

  _$CreateTransitGatewayRequest._(
      {this.description,
      this.options,
      this.tagSpecifications,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateTransitGatewayRequest', 'dryRun');
  }

  @override
  CreateTransitGatewayRequest rebuild(
          void Function(CreateTransitGatewayRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayRequestBuilder toBuilder() =>
      new CreateTransitGatewayRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayRequest &&
        description == other.description &&
        options == other.options &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTransitGatewayRequestBuilder
    implements
        Builder<CreateTransitGatewayRequest,
            CreateTransitGatewayRequestBuilder> {
  _$CreateTransitGatewayRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i3.TransitGatewayRequestOptionsBuilder? _options;
  _i3.TransitGatewayRequestOptionsBuilder get options =>
      _$this._options ??= new _i3.TransitGatewayRequestOptionsBuilder();
  set options(_i3.TransitGatewayRequestOptionsBuilder? options) =>
      _$this._options = options;

  _i5.ListBuilder<_i4.TagSpecification>? _tagSpecifications;
  _i5.ListBuilder<_i4.TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i5.ListBuilder<_i4.TagSpecification>();
  set tagSpecifications(
          _i5.ListBuilder<_i4.TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateTransitGatewayRequestBuilder() {
    CreateTransitGatewayRequest._init(this);
  }

  CreateTransitGatewayRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _options = $v.options?.toBuilder();
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayRequest;
  }

  @override
  void update(void Function(CreateTransitGatewayRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayRequest build() => _build();

  _$CreateTransitGatewayRequest _build() {
    _$CreateTransitGatewayRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateTransitGatewayRequest._(
              description: description,
              options: _options?.build(),
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateTransitGatewayRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransitGatewayRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
