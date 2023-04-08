// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_instance_event_window_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_instance_event_window_request.g.dart';

abstract class DeleteInstanceEventWindowRequest
    with
        _i1.HttpInput<DeleteInstanceEventWindowRequest>,
        _i2.AWSEquatable<DeleteInstanceEventWindowRequest>
    implements
        Built<DeleteInstanceEventWindowRequest,
            DeleteInstanceEventWindowRequestBuilder> {
  factory DeleteInstanceEventWindowRequest({
    bool? dryRun,
    bool? forceDelete,
    required String instanceEventWindowId,
  }) {
    dryRun ??= false;
    forceDelete ??= false;
    return _$DeleteInstanceEventWindowRequest._(
      dryRun: dryRun,
      forceDelete: forceDelete,
      instanceEventWindowId: instanceEventWindowId,
    );
  }

  factory DeleteInstanceEventWindowRequest.build(
          [void Function(DeleteInstanceEventWindowRequestBuilder) updates]) =
      _$DeleteInstanceEventWindowRequest;

  const DeleteInstanceEventWindowRequest._();

  factory DeleteInstanceEventWindowRequest.fromRequest(
    DeleteInstanceEventWindowRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteInstanceEventWindowRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteInstanceEventWindowRequestBuilder b) {
    b.dryRun = false;
    b.forceDelete = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Specify `true` to force delete the event window. Use the force delete parameter if the event window is currently associated with targets.
  bool get forceDelete;

  /// The ID of the event window.
  String get instanceEventWindowId;
  @override
  DeleteInstanceEventWindowRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        forceDelete,
        instanceEventWindowId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteInstanceEventWindowRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'forceDelete',
      forceDelete,
    );
    helper.add(
      'instanceEventWindowId',
      instanceEventWindowId,
    );
    return helper.toString();
  }
}

class DeleteInstanceEventWindowRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteInstanceEventWindowRequest> {
  const DeleteInstanceEventWindowRequestEc2QuerySerializer()
      : super('DeleteInstanceEventWindowRequest');

  @override
  Iterable<Type> get types => const [
        DeleteInstanceEventWindowRequest,
        _$DeleteInstanceEventWindowRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteInstanceEventWindowRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteInstanceEventWindowRequestBuilder();
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
        case 'ForceDelete':
          result.forceDelete = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'InstanceEventWindowId':
          result.instanceEventWindowId = (serializers.deserialize(
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
    final payload = (object as DeleteInstanceEventWindowRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteInstanceEventWindowRequestResponse',
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
      ..add(const _i1.XmlElementName('ForceDelete'))
      ..add(serializers.serialize(
        payload.forceDelete,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('InstanceEventWindowId'))
      ..add(serializers.serialize(
        payload.instanceEventWindowId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
