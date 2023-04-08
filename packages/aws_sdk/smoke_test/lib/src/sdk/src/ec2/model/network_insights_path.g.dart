// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.network_insights_path;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkInsightsPath extends NetworkInsightsPath {
  @override
  final String? networkInsightsPathId;
  @override
  final String? networkInsightsPathArn;
  @override
  final DateTime? createdDate;
  @override
  final String? source;
  @override
  final String? destination;
  @override
  final String? sourceIp;
  @override
  final String? destinationIp;
  @override
  final _i2.Protocol? protocol;
  @override
  final int destinationPort;
  @override
  final _i4.BuiltList<_i3.Tag>? tags;

  factory _$NetworkInsightsPath(
          [void Function(NetworkInsightsPathBuilder)? updates]) =>
      (new NetworkInsightsPathBuilder()..update(updates))._build();

  _$NetworkInsightsPath._(
      {this.networkInsightsPathId,
      this.networkInsightsPathArn,
      this.createdDate,
      this.source,
      this.destination,
      this.sourceIp,
      this.destinationIp,
      this.protocol,
      required this.destinationPort,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        destinationPort, r'NetworkInsightsPath', 'destinationPort');
  }

  @override
  NetworkInsightsPath rebuild(
          void Function(NetworkInsightsPathBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkInsightsPathBuilder toBuilder() =>
      new NetworkInsightsPathBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkInsightsPath &&
        networkInsightsPathId == other.networkInsightsPathId &&
        networkInsightsPathArn == other.networkInsightsPathArn &&
        createdDate == other.createdDate &&
        source == other.source &&
        destination == other.destination &&
        sourceIp == other.sourceIp &&
        destinationIp == other.destinationIp &&
        protocol == other.protocol &&
        destinationPort == other.destinationPort &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsPathId.hashCode);
    _$hash = $jc(_$hash, networkInsightsPathArn.hashCode);
    _$hash = $jc(_$hash, createdDate.hashCode);
    _$hash = $jc(_$hash, source.hashCode);
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jc(_$hash, sourceIp.hashCode);
    _$hash = $jc(_$hash, destinationIp.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, destinationPort.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkInsightsPathBuilder
    implements Builder<NetworkInsightsPath, NetworkInsightsPathBuilder> {
  _$NetworkInsightsPath? _$v;

  String? _networkInsightsPathId;
  String? get networkInsightsPathId => _$this._networkInsightsPathId;
  set networkInsightsPathId(String? networkInsightsPathId) =>
      _$this._networkInsightsPathId = networkInsightsPathId;

  String? _networkInsightsPathArn;
  String? get networkInsightsPathArn => _$this._networkInsightsPathArn;
  set networkInsightsPathArn(String? networkInsightsPathArn) =>
      _$this._networkInsightsPathArn = networkInsightsPathArn;

  DateTime? _createdDate;
  DateTime? get createdDate => _$this._createdDate;
  set createdDate(DateTime? createdDate) => _$this._createdDate = createdDate;

  String? _source;
  String? get source => _$this._source;
  set source(String? source) => _$this._source = source;

  String? _destination;
  String? get destination => _$this._destination;
  set destination(String? destination) => _$this._destination = destination;

  String? _sourceIp;
  String? get sourceIp => _$this._sourceIp;
  set sourceIp(String? sourceIp) => _$this._sourceIp = sourceIp;

  String? _destinationIp;
  String? get destinationIp => _$this._destinationIp;
  set destinationIp(String? destinationIp) =>
      _$this._destinationIp = destinationIp;

  _i2.Protocol? _protocol;
  _i2.Protocol? get protocol => _$this._protocol;
  set protocol(_i2.Protocol? protocol) => _$this._protocol = protocol;

  int? _destinationPort;
  int? get destinationPort => _$this._destinationPort;
  set destinationPort(int? destinationPort) =>
      _$this._destinationPort = destinationPort;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  NetworkInsightsPathBuilder() {
    NetworkInsightsPath._init(this);
  }

  NetworkInsightsPathBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsPathId = $v.networkInsightsPathId;
      _networkInsightsPathArn = $v.networkInsightsPathArn;
      _createdDate = $v.createdDate;
      _source = $v.source;
      _destination = $v.destination;
      _sourceIp = $v.sourceIp;
      _destinationIp = $v.destinationIp;
      _protocol = $v.protocol;
      _destinationPort = $v.destinationPort;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkInsightsPath other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkInsightsPath;
  }

  @override
  void update(void Function(NetworkInsightsPathBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkInsightsPath build() => _build();

  _$NetworkInsightsPath _build() {
    _$NetworkInsightsPath _$result;
    try {
      _$result = _$v ??
          new _$NetworkInsightsPath._(
              networkInsightsPathId: networkInsightsPathId,
              networkInsightsPathArn: networkInsightsPathArn,
              createdDate: createdDate,
              source: source,
              destination: destination,
              sourceIp: sourceIp,
              destinationIp: destinationIp,
              protocol: protocol,
              destinationPort: BuiltValueNullFieldError.checkNotNull(
                  destinationPort, r'NetworkInsightsPath', 'destinationPort'),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NetworkInsightsPath', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
