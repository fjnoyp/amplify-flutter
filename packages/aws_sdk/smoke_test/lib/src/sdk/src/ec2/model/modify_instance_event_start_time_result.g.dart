// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.modify_instance_event_start_time_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyInstanceEventStartTimeResult
    extends ModifyInstanceEventStartTimeResult {
  @override
  final _i2.InstanceStatusEvent? event;

  factory _$ModifyInstanceEventStartTimeResult(
          [void Function(ModifyInstanceEventStartTimeResultBuilder)?
              updates]) =>
      (new ModifyInstanceEventStartTimeResultBuilder()..update(updates))
          ._build();

  _$ModifyInstanceEventStartTimeResult._({this.event}) : super._();

  @override
  ModifyInstanceEventStartTimeResult rebuild(
          void Function(ModifyInstanceEventStartTimeResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyInstanceEventStartTimeResultBuilder toBuilder() =>
      new ModifyInstanceEventStartTimeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyInstanceEventStartTimeResult && event == other.event;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyInstanceEventStartTimeResultBuilder
    implements
        Builder<ModifyInstanceEventStartTimeResult,
            ModifyInstanceEventStartTimeResultBuilder> {
  _$ModifyInstanceEventStartTimeResult? _$v;

  _i2.InstanceStatusEventBuilder? _event;
  _i2.InstanceStatusEventBuilder get event =>
      _$this._event ??= new _i2.InstanceStatusEventBuilder();
  set event(_i2.InstanceStatusEventBuilder? event) => _$this._event = event;

  ModifyInstanceEventStartTimeResultBuilder() {
    ModifyInstanceEventStartTimeResult._init(this);
  }

  ModifyInstanceEventStartTimeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyInstanceEventStartTimeResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyInstanceEventStartTimeResult;
  }

  @override
  void update(
      void Function(ModifyInstanceEventStartTimeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyInstanceEventStartTimeResult build() => _build();

  _$ModifyInstanceEventStartTimeResult _build() {
    _$ModifyInstanceEventStartTimeResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyInstanceEventStartTimeResult._(event: _event?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'event';
        _event?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyInstanceEventStartTimeResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
