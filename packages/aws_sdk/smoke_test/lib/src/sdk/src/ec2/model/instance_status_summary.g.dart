// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.instance_status_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceStatusSummary extends InstanceStatusSummary {
  @override
  final _i4.BuiltList<_i2.InstanceStatusDetails>? details;
  @override
  final _i3.SummaryStatus? status;

  factory _$InstanceStatusSummary(
          [void Function(InstanceStatusSummaryBuilder)? updates]) =>
      (new InstanceStatusSummaryBuilder()..update(updates))._build();

  _$InstanceStatusSummary._({this.details, this.status}) : super._();

  @override
  InstanceStatusSummary rebuild(
          void Function(InstanceStatusSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceStatusSummaryBuilder toBuilder() =>
      new InstanceStatusSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceStatusSummary &&
        details == other.details &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceStatusSummaryBuilder
    implements Builder<InstanceStatusSummary, InstanceStatusSummaryBuilder> {
  _$InstanceStatusSummary? _$v;

  _i4.ListBuilder<_i2.InstanceStatusDetails>? _details;
  _i4.ListBuilder<_i2.InstanceStatusDetails> get details =>
      _$this._details ??= new _i4.ListBuilder<_i2.InstanceStatusDetails>();
  set details(_i4.ListBuilder<_i2.InstanceStatusDetails>? details) =>
      _$this._details = details;

  _i3.SummaryStatus? _status;
  _i3.SummaryStatus? get status => _$this._status;
  set status(_i3.SummaryStatus? status) => _$this._status = status;

  InstanceStatusSummaryBuilder() {
    InstanceStatusSummary._init(this);
  }

  InstanceStatusSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _details = $v.details?.toBuilder();
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceStatusSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceStatusSummary;
  }

  @override
  void update(void Function(InstanceStatusSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceStatusSummary build() => _build();

  _$InstanceStatusSummary _build() {
    _$InstanceStatusSummary _$result;
    try {
      _$result = _$v ??
          new _$InstanceStatusSummary._(
              details: _details?.build(), status: status);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceStatusSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
