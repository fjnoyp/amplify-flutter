// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.accept_vpc_endpoint_connections_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcceptVpcEndpointConnectionsResult
    extends AcceptVpcEndpointConnectionsResult {
  @override
  final _i3.BuiltList<_i2.UnsuccessfulItem>? unsuccessful;

  factory _$AcceptVpcEndpointConnectionsResult(
          [void Function(AcceptVpcEndpointConnectionsResultBuilder)?
              updates]) =>
      (new AcceptVpcEndpointConnectionsResultBuilder()..update(updates))
          ._build();

  _$AcceptVpcEndpointConnectionsResult._({this.unsuccessful}) : super._();

  @override
  AcceptVpcEndpointConnectionsResult rebuild(
          void Function(AcceptVpcEndpointConnectionsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcceptVpcEndpointConnectionsResultBuilder toBuilder() =>
      new AcceptVpcEndpointConnectionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcceptVpcEndpointConnectionsResult &&
        unsuccessful == other.unsuccessful;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, unsuccessful.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AcceptVpcEndpointConnectionsResultBuilder
    implements
        Builder<AcceptVpcEndpointConnectionsResult,
            AcceptVpcEndpointConnectionsResultBuilder> {
  _$AcceptVpcEndpointConnectionsResult? _$v;

  _i3.ListBuilder<_i2.UnsuccessfulItem>? _unsuccessful;
  _i3.ListBuilder<_i2.UnsuccessfulItem> get unsuccessful =>
      _$this._unsuccessful ??= new _i3.ListBuilder<_i2.UnsuccessfulItem>();
  set unsuccessful(_i3.ListBuilder<_i2.UnsuccessfulItem>? unsuccessful) =>
      _$this._unsuccessful = unsuccessful;

  AcceptVpcEndpointConnectionsResultBuilder() {
    AcceptVpcEndpointConnectionsResult._init(this);
  }

  AcceptVpcEndpointConnectionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unsuccessful = $v.unsuccessful?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcceptVpcEndpointConnectionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcceptVpcEndpointConnectionsResult;
  }

  @override
  void update(
      void Function(AcceptVpcEndpointConnectionsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AcceptVpcEndpointConnectionsResult build() => _build();

  _$AcceptVpcEndpointConnectionsResult _build() {
    _$AcceptVpcEndpointConnectionsResult _$result;
    try {
      _$result = _$v ??
          new _$AcceptVpcEndpointConnectionsResult._(
              unsuccessful: _unsuccessful?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'unsuccessful';
        _unsuccessful?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AcceptVpcEndpointConnectionsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
