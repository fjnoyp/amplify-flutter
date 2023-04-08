// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.instance_event_window;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceEventWindow extends InstanceEventWindow {
  @override
  final String? instanceEventWindowId;
  @override
  final _i6.BuiltList<_i2.InstanceEventWindowTimeRange>? timeRanges;
  @override
  final String? name;
  @override
  final String? cronExpression;
  @override
  final _i3.InstanceEventWindowAssociationTarget? associationTarget;
  @override
  final _i4.InstanceEventWindowState? state;
  @override
  final _i6.BuiltList<_i5.Tag>? tags;

  factory _$InstanceEventWindow(
          [void Function(InstanceEventWindowBuilder)? updates]) =>
      (new InstanceEventWindowBuilder()..update(updates))._build();

  _$InstanceEventWindow._(
      {this.instanceEventWindowId,
      this.timeRanges,
      this.name,
      this.cronExpression,
      this.associationTarget,
      this.state,
      this.tags})
      : super._();

  @override
  InstanceEventWindow rebuild(
          void Function(InstanceEventWindowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceEventWindowBuilder toBuilder() =>
      new InstanceEventWindowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceEventWindow &&
        instanceEventWindowId == other.instanceEventWindowId &&
        timeRanges == other.timeRanges &&
        name == other.name &&
        cronExpression == other.cronExpression &&
        associationTarget == other.associationTarget &&
        state == other.state &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceEventWindowId.hashCode);
    _$hash = $jc(_$hash, timeRanges.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, cronExpression.hashCode);
    _$hash = $jc(_$hash, associationTarget.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceEventWindowBuilder
    implements Builder<InstanceEventWindow, InstanceEventWindowBuilder> {
  _$InstanceEventWindow? _$v;

  String? _instanceEventWindowId;
  String? get instanceEventWindowId => _$this._instanceEventWindowId;
  set instanceEventWindowId(String? instanceEventWindowId) =>
      _$this._instanceEventWindowId = instanceEventWindowId;

  _i6.ListBuilder<_i2.InstanceEventWindowTimeRange>? _timeRanges;
  _i6.ListBuilder<_i2.InstanceEventWindowTimeRange> get timeRanges =>
      _$this._timeRanges ??=
          new _i6.ListBuilder<_i2.InstanceEventWindowTimeRange>();
  set timeRanges(
          _i6.ListBuilder<_i2.InstanceEventWindowTimeRange>? timeRanges) =>
      _$this._timeRanges = timeRanges;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _cronExpression;
  String? get cronExpression => _$this._cronExpression;
  set cronExpression(String? cronExpression) =>
      _$this._cronExpression = cronExpression;

  _i3.InstanceEventWindowAssociationTargetBuilder? _associationTarget;
  _i3.InstanceEventWindowAssociationTargetBuilder get associationTarget =>
      _$this._associationTarget ??=
          new _i3.InstanceEventWindowAssociationTargetBuilder();
  set associationTarget(
          _i3.InstanceEventWindowAssociationTargetBuilder? associationTarget) =>
      _$this._associationTarget = associationTarget;

  _i4.InstanceEventWindowState? _state;
  _i4.InstanceEventWindowState? get state => _$this._state;
  set state(_i4.InstanceEventWindowState? state) => _$this._state = state;

  _i6.ListBuilder<_i5.Tag>? _tags;
  _i6.ListBuilder<_i5.Tag> get tags =>
      _$this._tags ??= new _i6.ListBuilder<_i5.Tag>();
  set tags(_i6.ListBuilder<_i5.Tag>? tags) => _$this._tags = tags;

  InstanceEventWindowBuilder() {
    InstanceEventWindow._init(this);
  }

  InstanceEventWindowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceEventWindowId = $v.instanceEventWindowId;
      _timeRanges = $v.timeRanges?.toBuilder();
      _name = $v.name;
      _cronExpression = $v.cronExpression;
      _associationTarget = $v.associationTarget?.toBuilder();
      _state = $v.state;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceEventWindow other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceEventWindow;
  }

  @override
  void update(void Function(InstanceEventWindowBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceEventWindow build() => _build();

  _$InstanceEventWindow _build() {
    _$InstanceEventWindow _$result;
    try {
      _$result = _$v ??
          new _$InstanceEventWindow._(
              instanceEventWindowId: instanceEventWindowId,
              timeRanges: _timeRanges?.build(),
              name: name,
              cronExpression: cronExpression,
              associationTarget: _associationTarget?.build(),
              state: state,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeRanges';
        _timeRanges?.build();

        _$failedField = 'associationTarget';
        _associationTarget?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceEventWindow', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
