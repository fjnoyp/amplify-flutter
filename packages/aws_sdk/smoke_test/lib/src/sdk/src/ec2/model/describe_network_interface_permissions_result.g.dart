// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_network_interface_permissions_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeNetworkInterfacePermissionsResult
    extends DescribeNetworkInterfacePermissionsResult {
  @override
  final _i3.BuiltList<_i2.NetworkInterfacePermission>?
      networkInterfacePermissions;
  @override
  final String? nextToken;

  factory _$DescribeNetworkInterfacePermissionsResult(
          [void Function(DescribeNetworkInterfacePermissionsResultBuilder)?
              updates]) =>
      (new DescribeNetworkInterfacePermissionsResultBuilder()..update(updates))
          ._build();

  _$DescribeNetworkInterfacePermissionsResult._(
      {this.networkInterfacePermissions, this.nextToken})
      : super._();

  @override
  DescribeNetworkInterfacePermissionsResult rebuild(
          void Function(DescribeNetworkInterfacePermissionsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeNetworkInterfacePermissionsResultBuilder toBuilder() =>
      new DescribeNetworkInterfacePermissionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeNetworkInterfacePermissionsResult &&
        networkInterfacePermissions == other.networkInterfacePermissions &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInterfacePermissions.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeNetworkInterfacePermissionsResultBuilder
    implements
        Builder<DescribeNetworkInterfacePermissionsResult,
            DescribeNetworkInterfacePermissionsResultBuilder> {
  _$DescribeNetworkInterfacePermissionsResult? _$v;

  _i3.ListBuilder<_i2.NetworkInterfacePermission>? _networkInterfacePermissions;
  _i3.ListBuilder<_i2.NetworkInterfacePermission>
      get networkInterfacePermissions => _$this._networkInterfacePermissions ??=
          new _i3.ListBuilder<_i2.NetworkInterfacePermission>();
  set networkInterfacePermissions(
          _i3.ListBuilder<_i2.NetworkInterfacePermission>?
              networkInterfacePermissions) =>
      _$this._networkInterfacePermissions = networkInterfacePermissions;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeNetworkInterfacePermissionsResultBuilder() {
    DescribeNetworkInterfacePermissionsResult._init(this);
  }

  DescribeNetworkInterfacePermissionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInterfacePermissions =
          $v.networkInterfacePermissions?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeNetworkInterfacePermissionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeNetworkInterfacePermissionsResult;
  }

  @override
  void update(
      void Function(DescribeNetworkInterfacePermissionsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeNetworkInterfacePermissionsResult build() => _build();

  _$DescribeNetworkInterfacePermissionsResult _build() {
    _$DescribeNetworkInterfacePermissionsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeNetworkInterfacePermissionsResult._(
              networkInterfacePermissions:
                  _networkInterfacePermissions?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkInterfacePermissions';
        _networkInterfacePermissions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeNetworkInterfacePermissionsResult',
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
