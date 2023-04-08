// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_vpc_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVpcResult extends CreateVpcResult {
  @override
  final _i2.Vpc? vpc;

  factory _$CreateVpcResult([void Function(CreateVpcResultBuilder)? updates]) =>
      (new CreateVpcResultBuilder()..update(updates))._build();

  _$CreateVpcResult._({this.vpc}) : super._();

  @override
  CreateVpcResult rebuild(void Function(CreateVpcResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVpcResultBuilder toBuilder() =>
      new CreateVpcResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVpcResult && vpc == other.vpc;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpc.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVpcResultBuilder
    implements Builder<CreateVpcResult, CreateVpcResultBuilder> {
  _$CreateVpcResult? _$v;

  _i2.VpcBuilder? _vpc;
  _i2.VpcBuilder get vpc => _$this._vpc ??= new _i2.VpcBuilder();
  set vpc(_i2.VpcBuilder? vpc) => _$this._vpc = vpc;

  CreateVpcResultBuilder() {
    CreateVpcResult._init(this);
  }

  CreateVpcResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpc = $v.vpc?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVpcResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVpcResult;
  }

  @override
  void update(void Function(CreateVpcResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVpcResult build() => _build();

  _$CreateVpcResult _build() {
    _$CreateVpcResult _$result;
    try {
      _$result = _$v ?? new _$CreateVpcResult._(vpc: _vpc?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpc';
        _vpc?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVpcResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
