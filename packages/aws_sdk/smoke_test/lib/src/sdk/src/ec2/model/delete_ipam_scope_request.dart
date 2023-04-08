// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_ipam_scope_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_ipam_scope_request.g.dart';

abstract class DeleteIpamScopeRequest
    with
        _i1.HttpInput<DeleteIpamScopeRequest>,
        _i2.AWSEquatable<DeleteIpamScopeRequest>
    implements Built<DeleteIpamScopeRequest, DeleteIpamScopeRequestBuilder> {
  factory DeleteIpamScopeRequest({
    bool? dryRun,
    required String ipamScopeId,
  }) {
    dryRun ??= false;
    return _$DeleteIpamScopeRequest._(
      dryRun: dryRun,
      ipamScopeId: ipamScopeId,
    );
  }

  factory DeleteIpamScopeRequest.build(
          [void Function(DeleteIpamScopeRequestBuilder) updates]) =
      _$DeleteIpamScopeRequest;

  const DeleteIpamScopeRequest._();

  factory DeleteIpamScopeRequest.fromRequest(
    DeleteIpamScopeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteIpamScopeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteIpamScopeRequestBuilder b) {
    b.dryRun = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the scope to delete.
  String get ipamScopeId;
  @override
  DeleteIpamScopeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamScopeId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteIpamScopeRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'ipamScopeId',
      ipamScopeId,
    );
    return helper.toString();
  }
}

class DeleteIpamScopeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteIpamScopeRequest> {
  const DeleteIpamScopeRequestEc2QuerySerializer()
      : super('DeleteIpamScopeRequest');

  @override
  Iterable<Type> get types => const [
        DeleteIpamScopeRequest,
        _$DeleteIpamScopeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteIpamScopeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteIpamScopeRequestBuilder();
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
        case 'IpamScopeId':
          result.ipamScopeId = (serializers.deserialize(
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
    final payload = (object as DeleteIpamScopeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteIpamScopeRequestResponse',
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
      ..add(const _i1.XmlElementName('IpamScopeId'))
      ..add(serializers.serialize(
        payload.ipamScopeId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
