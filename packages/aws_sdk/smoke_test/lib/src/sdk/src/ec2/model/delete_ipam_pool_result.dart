// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_ipam_pool_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool.dart' as _i2;

part 'delete_ipam_pool_result.g.dart';

abstract class DeleteIpamPoolResult
    with _i1.AWSEquatable<DeleteIpamPoolResult>
    implements Built<DeleteIpamPoolResult, DeleteIpamPoolResultBuilder> {
  factory DeleteIpamPoolResult({_i2.IpamPool? ipamPool}) {
    return _$DeleteIpamPoolResult._(ipamPool: ipamPool);
  }

  factory DeleteIpamPoolResult.build(
          [void Function(DeleteIpamPoolResultBuilder) updates]) =
      _$DeleteIpamPoolResult;

  const DeleteIpamPoolResult._();

  /// Constructs a [DeleteIpamPoolResult] from a [payload] and [response].
  factory DeleteIpamPoolResult.fromResponse(
    DeleteIpamPoolResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeleteIpamPoolResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteIpamPoolResultBuilder b) {}

  /// Information about the results of the deletion.
  _i2.IpamPool? get ipamPool;
  @override
  List<Object?> get props => [ipamPool];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteIpamPoolResult');
    helper.add(
      'ipamPool',
      ipamPool,
    );
    return helper.toString();
  }
}

class DeleteIpamPoolResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DeleteIpamPoolResult> {
  const DeleteIpamPoolResultEc2QuerySerializer()
      : super('DeleteIpamPoolResult');

  @override
  Iterable<Type> get types => const [
        DeleteIpamPoolResult,
        _$DeleteIpamPoolResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteIpamPoolResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteIpamPoolResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ipamPool':
          if (value != null) {
            result.ipamPool.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.IpamPool),
            ) as _i2.IpamPool));
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
    final payload = (object as DeleteIpamPoolResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteIpamPoolResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ipamPool != null) {
      result
        ..add(const _i3.XmlElementName('IpamPool'))
        ..add(serializers.serialize(
          payload.ipamPool!,
          specifiedType: const FullType(_i2.IpamPool),
        ));
    }
    return result;
  }
}
