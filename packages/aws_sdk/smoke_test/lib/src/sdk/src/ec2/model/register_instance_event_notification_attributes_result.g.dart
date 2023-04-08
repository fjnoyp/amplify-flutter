// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.register_instance_event_notification_attributes_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegisterInstanceEventNotificationAttributesResult
    extends RegisterInstanceEventNotificationAttributesResult {
  @override
  final _i2.InstanceTagNotificationAttribute? instanceTagAttribute;

  factory _$RegisterInstanceEventNotificationAttributesResult(
          [void Function(
                  RegisterInstanceEventNotificationAttributesResultBuilder)?
              updates]) =>
      (new RegisterInstanceEventNotificationAttributesResultBuilder()
            ..update(updates))
          ._build();

  _$RegisterInstanceEventNotificationAttributesResult._(
      {this.instanceTagAttribute})
      : super._();

  @override
  RegisterInstanceEventNotificationAttributesResult rebuild(
          void Function(
                  RegisterInstanceEventNotificationAttributesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterInstanceEventNotificationAttributesResultBuilder toBuilder() =>
      new RegisterInstanceEventNotificationAttributesResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterInstanceEventNotificationAttributesResult &&
        instanceTagAttribute == other.instanceTagAttribute;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceTagAttribute.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RegisterInstanceEventNotificationAttributesResultBuilder
    implements
        Builder<RegisterInstanceEventNotificationAttributesResult,
            RegisterInstanceEventNotificationAttributesResultBuilder> {
  _$RegisterInstanceEventNotificationAttributesResult? _$v;

  _i2.InstanceTagNotificationAttributeBuilder? _instanceTagAttribute;
  _i2.InstanceTagNotificationAttributeBuilder get instanceTagAttribute =>
      _$this._instanceTagAttribute ??=
          new _i2.InstanceTagNotificationAttributeBuilder();
  set instanceTagAttribute(
          _i2.InstanceTagNotificationAttributeBuilder? instanceTagAttribute) =>
      _$this._instanceTagAttribute = instanceTagAttribute;

  RegisterInstanceEventNotificationAttributesResultBuilder() {
    RegisterInstanceEventNotificationAttributesResult._init(this);
  }

  RegisterInstanceEventNotificationAttributesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceTagAttribute = $v.instanceTagAttribute?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterInstanceEventNotificationAttributesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegisterInstanceEventNotificationAttributesResult;
  }

  @override
  void update(
      void Function(RegisterInstanceEventNotificationAttributesResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterInstanceEventNotificationAttributesResult build() => _build();

  _$RegisterInstanceEventNotificationAttributesResult _build() {
    _$RegisterInstanceEventNotificationAttributesResult _$result;
    try {
      _$result = _$v ??
          new _$RegisterInstanceEventNotificationAttributesResult._(
              instanceTagAttribute: _instanceTagAttribute?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceTagAttribute';
        _instanceTagAttribute?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RegisterInstanceEventNotificationAttributesResult',
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
