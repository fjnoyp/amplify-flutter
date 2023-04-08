// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_fleets_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_fleets_request.g.dart';

abstract class DeleteFleetsRequest
    with
        _i1.HttpInput<DeleteFleetsRequest>,
        _i2.AWSEquatable<DeleteFleetsRequest>
    implements Built<DeleteFleetsRequest, DeleteFleetsRequestBuilder> {
  factory DeleteFleetsRequest({
    bool? dryRun,
    required List<String> fleetIds,
    bool? terminateInstances,
  }) {
    dryRun ??= false;
    terminateInstances ??= false;
    return _$DeleteFleetsRequest._(
      dryRun: dryRun,
      fleetIds: _i3.BuiltList(fleetIds),
      terminateInstances: terminateInstances,
    );
  }

  factory DeleteFleetsRequest.build(
          [void Function(DeleteFleetsRequestBuilder) updates]) =
      _$DeleteFleetsRequest;

  const DeleteFleetsRequest._();

  factory DeleteFleetsRequest.fromRequest(
    DeleteFleetsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteFleetsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteFleetsRequestBuilder b) {
    b.dryRun = false;
    b.terminateInstances = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of the EC2 Fleets.
  _i3.BuiltList<String> get fleetIds;

  /// Indicates whether to terminate the instances when the EC2 Fleet is deleted. The default is to terminate the instances.
  ///
  /// To let the instances continue to run after the EC2 Fleet is deleted, specify `NoTerminateInstances`. Supported only for fleets of type `maintain` and `request`.
  ///
  /// For `instant` fleets, you cannot specify `NoTerminateInstances`. A deleted `instant` fleet with running instances is not supported.
  bool get terminateInstances;
  @override
  DeleteFleetsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        fleetIds,
        terminateInstances,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteFleetsRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'fleetIds',
      fleetIds,
    );
    helper.add(
      'terminateInstances',
      terminateInstances,
    );
    return helper.toString();
  }
}

class DeleteFleetsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteFleetsRequest> {
  const DeleteFleetsRequestEc2QuerySerializer() : super('DeleteFleetsRequest');

  @override
  Iterable<Type> get types => const [
        DeleteFleetsRequest,
        _$DeleteFleetsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteFleetsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteFleetsRequestBuilder();
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
        case 'FleetId':
          result.fleetIds.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
          break;
        case 'TerminateInstances':
          result.terminateInstances = (serializers.deserialize(
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
    final payload = (object as DeleteFleetsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteFleetsRequestResponse',
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
      ..add(const _i1.XmlElementName('FleetId'))
      ..add(
          const _i1.XmlBuiltListSerializer(indexer: _i1.XmlIndexer.ec2QueryList)
              .serialize(
        serializers,
        payload.fleetIds,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ));
    result
      ..add(const _i1.XmlElementName('TerminateInstances'))
      ..add(serializers.serialize(
        payload.terminateInstances,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
