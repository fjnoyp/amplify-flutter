// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_public_ipv4_pool_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_public_ipv4_pool_request.g.dart';

abstract class DeletePublicIpv4PoolRequest
    with
        _i1.HttpInput<DeletePublicIpv4PoolRequest>,
        _i2.AWSEquatable<DeletePublicIpv4PoolRequest>
    implements
        Built<DeletePublicIpv4PoolRequest, DeletePublicIpv4PoolRequestBuilder> {
  factory DeletePublicIpv4PoolRequest({
    bool? dryRun,
    required String poolId,
  }) {
    dryRun ??= false;
    return _$DeletePublicIpv4PoolRequest._(
      dryRun: dryRun,
      poolId: poolId,
    );
  }

  factory DeletePublicIpv4PoolRequest.build(
          [void Function(DeletePublicIpv4PoolRequestBuilder) updates]) =
      _$DeletePublicIpv4PoolRequest;

  const DeletePublicIpv4PoolRequest._();

  factory DeletePublicIpv4PoolRequest.fromRequest(
    DeletePublicIpv4PoolRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeletePublicIpv4PoolRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeletePublicIpv4PoolRequestBuilder b) {
    b.dryRun = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the public IPv4 pool you want to delete.
  String get poolId;
  @override
  DeletePublicIpv4PoolRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        poolId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeletePublicIpv4PoolRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'poolId',
      poolId,
    );
    return helper.toString();
  }
}

class DeletePublicIpv4PoolRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeletePublicIpv4PoolRequest> {
  const DeletePublicIpv4PoolRequestEc2QuerySerializer()
      : super('DeletePublicIpv4PoolRequest');

  @override
  Iterable<Type> get types => const [
        DeletePublicIpv4PoolRequest,
        _$DeletePublicIpv4PoolRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeletePublicIpv4PoolRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeletePublicIpv4PoolRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'PoolId':
          result.poolId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as DeletePublicIpv4PoolRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeletePublicIpv4PoolRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('PoolId'))
      ..add(serializers.serialize(
        payload.poolId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
