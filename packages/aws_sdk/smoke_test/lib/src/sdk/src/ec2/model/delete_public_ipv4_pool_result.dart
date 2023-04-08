// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_public_ipv4_pool_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_public_ipv4_pool_result.g.dart';

abstract class DeletePublicIpv4PoolResult
    with _i1.AWSEquatable<DeletePublicIpv4PoolResult>
    implements
        Built<DeletePublicIpv4PoolResult, DeletePublicIpv4PoolResultBuilder> {
  factory DeletePublicIpv4PoolResult({bool? returnValue}) {
    returnValue ??= false;
    return _$DeletePublicIpv4PoolResult._(returnValue: returnValue);
  }

  factory DeletePublicIpv4PoolResult.build(
          [void Function(DeletePublicIpv4PoolResultBuilder) updates]) =
      _$DeletePublicIpv4PoolResult;

  const DeletePublicIpv4PoolResult._();

  /// Constructs a [DeletePublicIpv4PoolResult] from a [payload] and [response].
  factory DeletePublicIpv4PoolResult.fromResponse(
    DeletePublicIpv4PoolResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    DeletePublicIpv4PoolResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeletePublicIpv4PoolResultBuilder b) {
    b.returnValue = false;
  }

  /// Information about the result of deleting the public IPv4 pool.
  bool get returnValue;
  @override
  List<Object?> get props => [returnValue];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeletePublicIpv4PoolResult');
    helper.add(
      'returnValue',
      returnValue,
    );
    return helper.toString();
  }
}

class DeletePublicIpv4PoolResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeletePublicIpv4PoolResult> {
  const DeletePublicIpv4PoolResultEc2QuerySerializer()
      : super('DeletePublicIpv4PoolResult');

  @override
  Iterable<Type> get types => const [
        DeletePublicIpv4PoolResult,
        _$DeletePublicIpv4PoolResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeletePublicIpv4PoolResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeletePublicIpv4PoolResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'returnValue':
          result.returnValue = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as DeletePublicIpv4PoolResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'DeletePublicIpv4PoolResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('ReturnValue'))
      ..add(serializers.serialize(
        payload.returnValue,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
