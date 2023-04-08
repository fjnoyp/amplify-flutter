// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_scheduled_instance_availability_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeScheduledInstanceAvailabilityResult
    extends DescribeScheduledInstanceAvailabilityResult {
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<_i2.ScheduledInstanceAvailability>?
      scheduledInstanceAvailabilitySet;

  factory _$DescribeScheduledInstanceAvailabilityResult(
          [void Function(DescribeScheduledInstanceAvailabilityResultBuilder)?
              updates]) =>
      (new DescribeScheduledInstanceAvailabilityResultBuilder()
            ..update(updates))
          ._build();

  _$DescribeScheduledInstanceAvailabilityResult._(
      {this.nextToken, this.scheduledInstanceAvailabilitySet})
      : super._();

  @override
  DescribeScheduledInstanceAvailabilityResult rebuild(
          void Function(DescribeScheduledInstanceAvailabilityResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeScheduledInstanceAvailabilityResultBuilder toBuilder() =>
      new DescribeScheduledInstanceAvailabilityResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeScheduledInstanceAvailabilityResult &&
        nextToken == other.nextToken &&
        scheduledInstanceAvailabilitySet ==
            other.scheduledInstanceAvailabilitySet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, scheduledInstanceAvailabilitySet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeScheduledInstanceAvailabilityResultBuilder
    implements
        Builder<DescribeScheduledInstanceAvailabilityResult,
            DescribeScheduledInstanceAvailabilityResultBuilder> {
  _$DescribeScheduledInstanceAvailabilityResult? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<_i2.ScheduledInstanceAvailability>?
      _scheduledInstanceAvailabilitySet;
  _i3.ListBuilder<_i2.ScheduledInstanceAvailability>
      get scheduledInstanceAvailabilitySet =>
          _$this._scheduledInstanceAvailabilitySet ??=
              new _i3.ListBuilder<_i2.ScheduledInstanceAvailability>();
  set scheduledInstanceAvailabilitySet(
          _i3.ListBuilder<_i2.ScheduledInstanceAvailability>?
              scheduledInstanceAvailabilitySet) =>
      _$this._scheduledInstanceAvailabilitySet =
          scheduledInstanceAvailabilitySet;

  DescribeScheduledInstanceAvailabilityResultBuilder() {
    DescribeScheduledInstanceAvailabilityResult._init(this);
  }

  DescribeScheduledInstanceAvailabilityResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _scheduledInstanceAvailabilitySet =
          $v.scheduledInstanceAvailabilitySet?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeScheduledInstanceAvailabilityResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeScheduledInstanceAvailabilityResult;
  }

  @override
  void update(
      void Function(DescribeScheduledInstanceAvailabilityResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeScheduledInstanceAvailabilityResult build() => _build();

  _$DescribeScheduledInstanceAvailabilityResult _build() {
    _$DescribeScheduledInstanceAvailabilityResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeScheduledInstanceAvailabilityResult._(
              nextToken: nextToken,
              scheduledInstanceAvailabilitySet:
                  _scheduledInstanceAvailabilitySet?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'scheduledInstanceAvailabilitySet';
        _scheduledInstanceAvailabilitySet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeScheduledInstanceAvailabilityResult',
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
