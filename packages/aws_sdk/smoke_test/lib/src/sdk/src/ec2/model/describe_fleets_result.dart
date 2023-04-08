// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_fleets_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_data.dart' as _i2;

part 'describe_fleets_result.g.dart';

abstract class DescribeFleetsResult
    with _i1.AWSEquatable<DescribeFleetsResult>
    implements Built<DescribeFleetsResult, DescribeFleetsResultBuilder> {
  factory DescribeFleetsResult({
    String? nextToken,
    List<_i2.FleetData>? fleets,
  }) {
    return _$DescribeFleetsResult._(
      nextToken: nextToken,
      fleets: fleets == null ? null : _i3.BuiltList(fleets),
    );
  }

  factory DescribeFleetsResult.build(
          [void Function(DescribeFleetsResultBuilder) updates]) =
      _$DescribeFleetsResult;

  const DescribeFleetsResult._();

  /// Constructs a [DescribeFleetsResult] from a [payload] and [response].
  factory DescribeFleetsResult.fromResponse(
    DescribeFleetsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeFleetsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeFleetsResultBuilder b) {}

  /// The token for the next set of results.
  String? get nextToken;

  /// Information about the EC2 Fleets.
  _i3.BuiltList<_i2.FleetData>? get fleets;
  @override
  List<Object?> get props => [
        nextToken,
        fleets,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeFleetsResult');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'fleets',
      fleets,
    );
    return helper.toString();
  }
}

class DescribeFleetsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeFleetsResult> {
  const DescribeFleetsResultEc2QuerySerializer()
      : super('DescribeFleetsResult');

  @override
  Iterable<Type> get types => const [
        DescribeFleetsResult,
        _$DescribeFleetsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFleetsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFleetsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'fleetSet':
          if (value != null) {
            result.fleets.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.FleetData)],
              ),
            ) as _i3.BuiltList<_i2.FleetData>));
          }
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
    final payload = (object as DescribeFleetsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeFleetsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.fleets != null) {
      result
        ..add(const _i4.XmlElementName('FleetSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.fleets!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.FleetData)],
          ),
        ));
    }
    return result;
  }
}
