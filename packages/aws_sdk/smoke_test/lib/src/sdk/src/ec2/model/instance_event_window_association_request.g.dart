// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.instance_event_window_association_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceEventWindowAssociationRequest
    extends InstanceEventWindowAssociationRequest {
  @override
  final _i3.BuiltList<String>? instanceIds;
  @override
  final _i3.BuiltList<_i2.Tag>? instanceTags;
  @override
  final _i3.BuiltList<String>? dedicatedHostIds;

  factory _$InstanceEventWindowAssociationRequest(
          [void Function(InstanceEventWindowAssociationRequestBuilder)?
              updates]) =>
      (new InstanceEventWindowAssociationRequestBuilder()..update(updates))
          ._build();

  _$InstanceEventWindowAssociationRequest._(
      {this.instanceIds, this.instanceTags, this.dedicatedHostIds})
      : super._();

  @override
  InstanceEventWindowAssociationRequest rebuild(
          void Function(InstanceEventWindowAssociationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceEventWindowAssociationRequestBuilder toBuilder() =>
      new InstanceEventWindowAssociationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceEventWindowAssociationRequest &&
        instanceIds == other.instanceIds &&
        instanceTags == other.instanceTags &&
        dedicatedHostIds == other.dedicatedHostIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceIds.hashCode);
    _$hash = $jc(_$hash, instanceTags.hashCode);
    _$hash = $jc(_$hash, dedicatedHostIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceEventWindowAssociationRequestBuilder
    implements
        Builder<InstanceEventWindowAssociationRequest,
            InstanceEventWindowAssociationRequestBuilder> {
  _$InstanceEventWindowAssociationRequest? _$v;

  _i3.ListBuilder<String>? _instanceIds;
  _i3.ListBuilder<String> get instanceIds =>
      _$this._instanceIds ??= new _i3.ListBuilder<String>();
  set instanceIds(_i3.ListBuilder<String>? instanceIds) =>
      _$this._instanceIds = instanceIds;

  _i3.ListBuilder<_i2.Tag>? _instanceTags;
  _i3.ListBuilder<_i2.Tag> get instanceTags =>
      _$this._instanceTags ??= new _i3.ListBuilder<_i2.Tag>();
  set instanceTags(_i3.ListBuilder<_i2.Tag>? instanceTags) =>
      _$this._instanceTags = instanceTags;

  _i3.ListBuilder<String>? _dedicatedHostIds;
  _i3.ListBuilder<String> get dedicatedHostIds =>
      _$this._dedicatedHostIds ??= new _i3.ListBuilder<String>();
  set dedicatedHostIds(_i3.ListBuilder<String>? dedicatedHostIds) =>
      _$this._dedicatedHostIds = dedicatedHostIds;

  InstanceEventWindowAssociationRequestBuilder() {
    InstanceEventWindowAssociationRequest._init(this);
  }

  InstanceEventWindowAssociationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceIds = $v.instanceIds?.toBuilder();
      _instanceTags = $v.instanceTags?.toBuilder();
      _dedicatedHostIds = $v.dedicatedHostIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceEventWindowAssociationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceEventWindowAssociationRequest;
  }

  @override
  void update(
      void Function(InstanceEventWindowAssociationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceEventWindowAssociationRequest build() => _build();

  _$InstanceEventWindowAssociationRequest _build() {
    _$InstanceEventWindowAssociationRequest _$result;
    try {
      _$result = _$v ??
          new _$InstanceEventWindowAssociationRequest._(
              instanceIds: _instanceIds?.build(),
              instanceTags: _instanceTags?.build(),
              dedicatedHostIds: _dedicatedHostIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceIds';
        _instanceIds?.build();
        _$failedField = 'instanceTags';
        _instanceTags?.build();
        _$failedField = 'dedicatedHostIds';
        _dedicatedHostIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceEventWindowAssociationRequest',
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
