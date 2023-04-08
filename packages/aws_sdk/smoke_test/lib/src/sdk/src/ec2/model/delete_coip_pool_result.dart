// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_coip_pool_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/coip_pool.dart' as _i2;

part 'delete_coip_pool_result.g.dart';

abstract class DeleteCoipPoolResult
    with _i1.AWSEquatable<DeleteCoipPoolResult>
    implements Built<DeleteCoipPoolResult, DeleteCoipPoolResultBuilder> {
  factory DeleteCoipPoolResult({_i2.CoipPool? coipPool}) {
    return _$DeleteCoipPoolResult._(coipPool: coipPool);
  }

  factory DeleteCoipPoolResult.build(
          [void Function(DeleteCoipPoolResultBuilder) updates]) =
      _$DeleteCoipPoolResult;

  const DeleteCoipPoolResult._();

  /// Constructs a [DeleteCoipPoolResult] from a [payload] and [response].
  factory DeleteCoipPoolResult.fromResponse(
    DeleteCoipPoolResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeleteCoipPoolResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteCoipPoolResultBuilder b) {}

  /// Describes a customer-owned address pool.
  _i2.CoipPool? get coipPool;
  @override
  List<Object?> get props => [coipPool];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteCoipPoolResult');
    helper.add(
      'coipPool',
      coipPool,
    );
    return helper.toString();
  }
}

class DeleteCoipPoolResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DeleteCoipPoolResult> {
  const DeleteCoipPoolResultEc2QuerySerializer()
      : super('DeleteCoipPoolResult');

  @override
  Iterable<Type> get types => const [
        DeleteCoipPoolResult,
        _$DeleteCoipPoolResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteCoipPoolResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteCoipPoolResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'coipPool':
          if (value != null) {
            result.coipPool.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CoipPool),
            ) as _i2.CoipPool));
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
    final payload = (object as DeleteCoipPoolResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteCoipPoolResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.coipPool != null) {
      result
        ..add(const _i3.XmlElementName('CoipPool'))
        ..add(serializers.serialize(
          payload.coipPool!,
          specifiedType: const FullType(_i2.CoipPool),
        ));
    }
    return result;
  }
}
