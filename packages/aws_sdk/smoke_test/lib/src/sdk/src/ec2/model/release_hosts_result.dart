// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.release_hosts_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_item.dart' as _i2;

part 'release_hosts_result.g.dart';

abstract class ReleaseHostsResult
    with _i1.AWSEquatable<ReleaseHostsResult>
    implements Built<ReleaseHostsResult, ReleaseHostsResultBuilder> {
  factory ReleaseHostsResult({
    List<String>? successful,
    List<_i2.UnsuccessfulItem>? unsuccessful,
  }) {
    return _$ReleaseHostsResult._(
      successful: successful == null ? null : _i3.BuiltList(successful),
      unsuccessful: unsuccessful == null ? null : _i3.BuiltList(unsuccessful),
    );
  }

  factory ReleaseHostsResult.build(
          [void Function(ReleaseHostsResultBuilder) updates]) =
      _$ReleaseHostsResult;

  const ReleaseHostsResult._();

  /// Constructs a [ReleaseHostsResult] from a [payload] and [response].
  factory ReleaseHostsResult.fromResponse(
    ReleaseHostsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ReleaseHostsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReleaseHostsResultBuilder b) {}

  /// The IDs of the Dedicated Hosts that were successfully released.
  _i3.BuiltList<String>? get successful;

  /// The IDs of the Dedicated Hosts that could not be released, including an error message.
  _i3.BuiltList<_i2.UnsuccessfulItem>? get unsuccessful;
  @override
  List<Object?> get props => [
        successful,
        unsuccessful,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReleaseHostsResult');
    helper.add(
      'successful',
      successful,
    );
    helper.add(
      'unsuccessful',
      unsuccessful,
    );
    return helper.toString();
  }
}

class ReleaseHostsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<ReleaseHostsResult> {
  const ReleaseHostsResultEc2QuerySerializer() : super('ReleaseHostsResult');

  @override
  Iterable<Type> get types => const [
        ReleaseHostsResult,
        _$ReleaseHostsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReleaseHostsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReleaseHostsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'successful':
          if (value != null) {
            result.successful.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
          }
          break;
        case 'unsuccessful':
          if (value != null) {
            result.unsuccessful.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.UnsuccessfulItem)],
              ),
            ) as _i3.BuiltList<_i2.UnsuccessfulItem>));
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
    final payload = (object as ReleaseHostsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ReleaseHostsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.successful != null) {
      result
        ..add(const _i4.XmlElementName('Successful'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.successful!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.unsuccessful != null) {
      result
        ..add(const _i4.XmlElementName('Unsuccessful'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.unsuccessful!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.UnsuccessfulItem)],
          ),
        ));
    }
    return result;
  }
}
