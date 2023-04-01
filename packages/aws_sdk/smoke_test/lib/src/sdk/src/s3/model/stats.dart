// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.stats; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'stats.g.dart';

/// Container for the stats details.
abstract class Stats
    with _i1.AWSEquatable<Stats>
    implements Built<Stats, StatsBuilder> {
  /// Container for the stats details.
  factory Stats({
    _i2.Int64? bytesScanned,
    _i2.Int64? bytesProcessed,
    _i2.Int64? bytesReturned,
  }) {
    bytesScanned ??= _i2.Int64.ZERO;
    bytesProcessed ??= _i2.Int64.ZERO;
    bytesReturned ??= _i2.Int64.ZERO;
    return _$Stats._(
      bytesScanned: bytesScanned,
      bytesProcessed: bytesProcessed,
      bytesReturned: bytesReturned,
    );
  }

  /// Container for the stats details.
  factory Stats.build([void Function(StatsBuilder) updates]) = _$Stats;

  const Stats._();

  static const List<_i3.SmithySerializer> serializers = [
    StatsRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StatsBuilder b) {
    b.bytesScanned = _i2.Int64.ZERO;
    b.bytesProcessed = _i2.Int64.ZERO;
    b.bytesReturned = _i2.Int64.ZERO;
  }

  /// The total number of object bytes scanned.
  _i2.Int64 get bytesScanned;

  /// The total number of uncompressed object bytes processed.
  _i2.Int64 get bytesProcessed;

  /// The total number of bytes of records payload data returned.
  _i2.Int64 get bytesReturned;
  @override
  List<Object?> get props => [
        bytesScanned,
        bytesProcessed,
        bytesReturned,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Stats');
    helper.add(
      'bytesScanned',
      bytesScanned,
    );
    helper.add(
      'bytesProcessed',
      bytesProcessed,
    );
    helper.add(
      'bytesReturned',
      bytesReturned,
    );
    return helper.toString();
  }
}

class StatsRestXmlSerializer extends _i3.StructuredSmithySerializer<Stats> {
  const StatsRestXmlSerializer() : super('Stats');

  @override
  Iterable<Type> get types => const [
        Stats,
        _$Stats,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  Stats deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'BytesProcessed':
          result.bytesProcessed = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
          break;
        case 'BytesReturned':
          result.bytesReturned = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
          break;
        case 'BytesScanned':
          result.bytesScanned = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as Stats);
    final result = <Object?>[
      const _i3.XmlElementName(
        'Stats',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('BytesProcessed'))
      ..add(serializers.serialize(
        payload.bytesProcessed,
        specifiedType: const FullType(_i2.Int64),
      ));
    result
      ..add(const _i3.XmlElementName('BytesReturned'))
      ..add(serializers.serialize(
        payload.bytesReturned,
        specifiedType: const FullType(_i2.Int64),
      ));
    result
      ..add(const _i3.XmlElementName('BytesScanned'))
      ..add(serializers.serialize(
        payload.bytesScanned,
        specifiedType: const FullType(_i2.Int64),
      ));
    return result;
  }
}
