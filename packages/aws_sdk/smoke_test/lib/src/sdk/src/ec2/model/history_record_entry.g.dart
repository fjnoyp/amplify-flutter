// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.history_record_entry;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HistoryRecordEntry extends HistoryRecordEntry {
  @override
  final _i2.EventInformation? eventInformation;
  @override
  final _i3.FleetEventType? eventType;
  @override
  final DateTime? timestamp;

  factory _$HistoryRecordEntry(
          [void Function(HistoryRecordEntryBuilder)? updates]) =>
      (new HistoryRecordEntryBuilder()..update(updates))._build();

  _$HistoryRecordEntry._(
      {this.eventInformation, this.eventType, this.timestamp})
      : super._();

  @override
  HistoryRecordEntry rebuild(
          void Function(HistoryRecordEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryRecordEntryBuilder toBuilder() =>
      new HistoryRecordEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoryRecordEntry &&
        eventInformation == other.eventInformation &&
        eventType == other.eventType &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eventInformation.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HistoryRecordEntryBuilder
    implements Builder<HistoryRecordEntry, HistoryRecordEntryBuilder> {
  _$HistoryRecordEntry? _$v;

  _i2.EventInformationBuilder? _eventInformation;
  _i2.EventInformationBuilder get eventInformation =>
      _$this._eventInformation ??= new _i2.EventInformationBuilder();
  set eventInformation(_i2.EventInformationBuilder? eventInformation) =>
      _$this._eventInformation = eventInformation;

  _i3.FleetEventType? _eventType;
  _i3.FleetEventType? get eventType => _$this._eventType;
  set eventType(_i3.FleetEventType? eventType) => _$this._eventType = eventType;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  HistoryRecordEntryBuilder() {
    HistoryRecordEntry._init(this);
  }

  HistoryRecordEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventInformation = $v.eventInformation?.toBuilder();
      _eventType = $v.eventType;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoryRecordEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HistoryRecordEntry;
  }

  @override
  void update(void Function(HistoryRecordEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HistoryRecordEntry build() => _build();

  _$HistoryRecordEntry _build() {
    _$HistoryRecordEntry _$result;
    try {
      _$result = _$v ??
          new _$HistoryRecordEntry._(
              eventInformation: _eventInformation?.build(),
              eventType: eventType,
              timestamp: timestamp);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'eventInformation';
        _eventInformation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HistoryRecordEntry', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
