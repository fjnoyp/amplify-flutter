// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.associate_instance_event_window_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_association_request.dart'
    as _i3;

part 'associate_instance_event_window_request.g.dart';

abstract class AssociateInstanceEventWindowRequest
    with
        _i1.HttpInput<AssociateInstanceEventWindowRequest>,
        _i2.AWSEquatable<AssociateInstanceEventWindowRequest>
    implements
        Built<AssociateInstanceEventWindowRequest,
            AssociateInstanceEventWindowRequestBuilder> {
  factory AssociateInstanceEventWindowRequest({
    bool? dryRun,
    required String instanceEventWindowId,
    required _i3.InstanceEventWindowAssociationRequest associationTarget,
  }) {
    dryRun ??= false;
    return _$AssociateInstanceEventWindowRequest._(
      dryRun: dryRun,
      instanceEventWindowId: instanceEventWindowId,
      associationTarget: associationTarget,
    );
  }

  factory AssociateInstanceEventWindowRequest.build(
          [void Function(AssociateInstanceEventWindowRequestBuilder) updates]) =
      _$AssociateInstanceEventWindowRequest;

  const AssociateInstanceEventWindowRequest._();

  factory AssociateInstanceEventWindowRequest.fromRequest(
    AssociateInstanceEventWindowRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    AssociateInstanceEventWindowRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateInstanceEventWindowRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the event window.
  String get instanceEventWindowId;

  /// One or more targets associated with the specified event window.
  _i3.InstanceEventWindowAssociationRequest get associationTarget;
  @override
  AssociateInstanceEventWindowRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        instanceEventWindowId,
        associationTarget,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssociateInstanceEventWindowRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'instanceEventWindowId',
      instanceEventWindowId,
    );
    helper.add(
      'associationTarget',
      associationTarget,
    );
    return helper.toString();
  }
}

class AssociateInstanceEventWindowRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<AssociateInstanceEventWindowRequest> {
  const AssociateInstanceEventWindowRequestEc2QuerySerializer()
      : super('AssociateInstanceEventWindowRequest');

  @override
  Iterable<Type> get types => const [
        AssociateInstanceEventWindowRequest,
        _$AssociateInstanceEventWindowRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateInstanceEventWindowRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateInstanceEventWindowRequestBuilder();
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
        case 'InstanceEventWindowId':
          result.instanceEventWindowId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'AssociationTarget':
          result.associationTarget.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i3.InstanceEventWindowAssociationRequest),
          ) as _i3.InstanceEventWindowAssociationRequest));
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
    final payload = (object as AssociateInstanceEventWindowRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'AssociateInstanceEventWindowRequestResponse',
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
      ..add(const _i1.XmlElementName('InstanceEventWindowId'))
      ..add(serializers.serialize(
        payload.instanceEventWindowId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('AssociationTarget'))
      ..add(serializers.serialize(
        payload.associationTarget,
        specifiedType:
            const FullType(_i3.InstanceEventWindowAssociationRequest),
      ));
    return result;
  }
}
