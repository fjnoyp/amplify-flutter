// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_coip_pool_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_coip_pool_request.g.dart';

abstract class DeleteCoipPoolRequest
    with
        _i1.HttpInput<DeleteCoipPoolRequest>,
        _i2.AWSEquatable<DeleteCoipPoolRequest>
    implements Built<DeleteCoipPoolRequest, DeleteCoipPoolRequestBuilder> {
  factory DeleteCoipPoolRequest({
    required String coipPoolId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteCoipPoolRequest._(
      coipPoolId: coipPoolId,
      dryRun: dryRun,
    );
  }

  factory DeleteCoipPoolRequest.build(
          [void Function(DeleteCoipPoolRequestBuilder) updates]) =
      _$DeleteCoipPoolRequest;

  const DeleteCoipPoolRequest._();

  factory DeleteCoipPoolRequest.fromRequest(
    DeleteCoipPoolRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteCoipPoolRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteCoipPoolRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the CoIP pool that you want to delete.
  String get coipPoolId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteCoipPoolRequest getPayload() => this;
  @override
  List<Object?> get props => [
        coipPoolId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteCoipPoolRequest');
    helper.add(
      'coipPoolId',
      coipPoolId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DeleteCoipPoolRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteCoipPoolRequest> {
  const DeleteCoipPoolRequestEc2QuerySerializer()
      : super('DeleteCoipPoolRequest');

  @override
  Iterable<Type> get types => const [
        DeleteCoipPoolRequest,
        _$DeleteCoipPoolRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteCoipPoolRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteCoipPoolRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'CoipPoolId':
          result.coipPoolId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
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
    final payload = (object as DeleteCoipPoolRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteCoipPoolRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('CoipPoolId'))
      ..add(serializers.serialize(
        payload.coipPoolId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
