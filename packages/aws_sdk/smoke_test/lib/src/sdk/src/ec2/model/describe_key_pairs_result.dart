// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_key_pairs_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/key_pair_info.dart' as _i2;

part 'describe_key_pairs_result.g.dart';

abstract class DescribeKeyPairsResult
    with _i1.AWSEquatable<DescribeKeyPairsResult>
    implements Built<DescribeKeyPairsResult, DescribeKeyPairsResultBuilder> {
  factory DescribeKeyPairsResult({List<_i2.KeyPairInfo>? keyPairs}) {
    return _$DescribeKeyPairsResult._(
        keyPairs: keyPairs == null ? null : _i3.BuiltList(keyPairs));
  }

  factory DescribeKeyPairsResult.build(
          [void Function(DescribeKeyPairsResultBuilder) updates]) =
      _$DescribeKeyPairsResult;

  const DescribeKeyPairsResult._();

  /// Constructs a [DescribeKeyPairsResult] from a [payload] and [response].
  factory DescribeKeyPairsResult.fromResponse(
    DescribeKeyPairsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeKeyPairsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeKeyPairsResultBuilder b) {}

  /// Information about the key pairs.
  _i3.BuiltList<_i2.KeyPairInfo>? get keyPairs;
  @override
  List<Object?> get props => [keyPairs];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeKeyPairsResult');
    helper.add(
      'keyPairs',
      keyPairs,
    );
    return helper.toString();
  }
}

class DescribeKeyPairsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeKeyPairsResult> {
  const DescribeKeyPairsResultEc2QuerySerializer()
      : super('DescribeKeyPairsResult');

  @override
  Iterable<Type> get types => const [
        DescribeKeyPairsResult,
        _$DescribeKeyPairsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeKeyPairsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeKeyPairsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'keySet':
          if (value != null) {
            result.keyPairs.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.KeyPairInfo)],
              ),
            ) as _i3.BuiltList<_i2.KeyPairInfo>));
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
    final payload = (object as DescribeKeyPairsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeKeyPairsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.keyPairs != null) {
      result
        ..add(const _i4.XmlElementName('KeySet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.keyPairs!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.KeyPairInfo)],
          ),
        ));
    }
    return result;
  }
}
