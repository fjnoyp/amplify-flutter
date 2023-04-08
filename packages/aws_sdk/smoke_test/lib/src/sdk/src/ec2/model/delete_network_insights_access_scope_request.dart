// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_network_insights_access_scope_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_network_insights_access_scope_request.g.dart';

abstract class DeleteNetworkInsightsAccessScopeRequest
    with
        _i1.HttpInput<DeleteNetworkInsightsAccessScopeRequest>,
        _i2.AWSEquatable<DeleteNetworkInsightsAccessScopeRequest>
    implements
        Built<DeleteNetworkInsightsAccessScopeRequest,
            DeleteNetworkInsightsAccessScopeRequestBuilder> {
  factory DeleteNetworkInsightsAccessScopeRequest({
    bool? dryRun,
    required String networkInsightsAccessScopeId,
  }) {
    dryRun ??= false;
    return _$DeleteNetworkInsightsAccessScopeRequest._(
      dryRun: dryRun,
      networkInsightsAccessScopeId: networkInsightsAccessScopeId,
    );
  }

  factory DeleteNetworkInsightsAccessScopeRequest.build(
      [void Function(DeleteNetworkInsightsAccessScopeRequestBuilder)
          updates]) = _$DeleteNetworkInsightsAccessScopeRequest;

  const DeleteNetworkInsightsAccessScopeRequest._();

  factory DeleteNetworkInsightsAccessScopeRequest.fromRequest(
    DeleteNetworkInsightsAccessScopeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteNetworkInsightsAccessScopeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteNetworkInsightsAccessScopeRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the Network Access Scope.
  String get networkInsightsAccessScopeId;
  @override
  DeleteNetworkInsightsAccessScopeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        networkInsightsAccessScopeId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteNetworkInsightsAccessScopeRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'networkInsightsAccessScopeId',
      networkInsightsAccessScopeId,
    );
    return helper.toString();
  }
}

class DeleteNetworkInsightsAccessScopeRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DeleteNetworkInsightsAccessScopeRequest> {
  const DeleteNetworkInsightsAccessScopeRequestEc2QuerySerializer()
      : super('DeleteNetworkInsightsAccessScopeRequest');

  @override
  Iterable<Type> get types => const [
        DeleteNetworkInsightsAccessScopeRequest,
        _$DeleteNetworkInsightsAccessScopeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteNetworkInsightsAccessScopeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteNetworkInsightsAccessScopeRequestBuilder();
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
        case 'NetworkInsightsAccessScopeId':
          result.networkInsightsAccessScopeId = (serializers.deserialize(
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
    final payload = (object as DeleteNetworkInsightsAccessScopeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteNetworkInsightsAccessScopeRequestResponse',
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
      ..add(const _i1.XmlElementName('NetworkInsightsAccessScopeId'))
      ..add(serializers.serialize(
        payload.networkInsightsAccessScopeId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
