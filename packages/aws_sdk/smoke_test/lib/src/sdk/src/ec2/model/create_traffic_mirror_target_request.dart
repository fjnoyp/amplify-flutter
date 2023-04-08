// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_traffic_mirror_target_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i3;

part 'create_traffic_mirror_target_request.g.dart';

abstract class CreateTrafficMirrorTargetRequest
    with
        _i1.HttpInput<CreateTrafficMirrorTargetRequest>,
        _i2.AWSEquatable<CreateTrafficMirrorTargetRequest>
    implements
        Built<CreateTrafficMirrorTargetRequest,
            CreateTrafficMirrorTargetRequestBuilder> {
  factory CreateTrafficMirrorTargetRequest({
    String? networkInterfaceId,
    String? networkLoadBalancerArn,
    String? description,
    List<_i3.TagSpecification>? tagSpecifications,
    bool? dryRun,
    String? clientToken,
    String? gatewayLoadBalancerEndpointId,
  }) {
    dryRun ??= false;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientToken ??= _i2.uuid(secure: true);
    }
    return _$CreateTrafficMirrorTargetRequest._(
      networkInterfaceId: networkInterfaceId,
      networkLoadBalancerArn: networkLoadBalancerArn,
      description: description,
      tagSpecifications:
          tagSpecifications == null ? null : _i4.BuiltList(tagSpecifications),
      dryRun: dryRun,
      clientToken: clientToken,
      gatewayLoadBalancerEndpointId: gatewayLoadBalancerEndpointId,
    );
  }

  factory CreateTrafficMirrorTargetRequest.build(
          [void Function(CreateTrafficMirrorTargetRequestBuilder) updates]) =
      _$CreateTrafficMirrorTargetRequest;

  const CreateTrafficMirrorTargetRequest._();

  factory CreateTrafficMirrorTargetRequest.fromRequest(
    CreateTrafficMirrorTargetRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateTrafficMirrorTargetRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTrafficMirrorTargetRequestBuilder b) {
    b.dryRun = false;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientToken = _i2.uuid(secure: true);
    }
  }

  /// The network interface ID that is associated with the target.
  String? get networkInterfaceId;

  /// The Amazon Resource Name (ARN) of the Network Load Balancer that is associated with the target.
  String? get networkLoadBalancerArn;

  /// The description of the Traffic Mirror target.
  String? get description;

  /// The tags to assign to the Traffic Mirror target.
  _i4.BuiltList<_i3.TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// The ID of the Gateway Load Balancer endpoint.
  String? get gatewayLoadBalancerEndpointId;
  @override
  CreateTrafficMirrorTargetRequest getPayload() => this;
  @override
  List<Object?> get props => [
        networkInterfaceId,
        networkLoadBalancerArn,
        description,
        tagSpecifications,
        dryRun,
        clientToken,
        gatewayLoadBalancerEndpointId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTrafficMirrorTargetRequest');
    helper.add(
      'networkInterfaceId',
      networkInterfaceId,
    );
    helper.add(
      'networkLoadBalancerArn',
      networkLoadBalancerArn,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'gatewayLoadBalancerEndpointId',
      gatewayLoadBalancerEndpointId,
    );
    return helper.toString();
  }
}

class CreateTrafficMirrorTargetRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateTrafficMirrorTargetRequest> {
  const CreateTrafficMirrorTargetRequestEc2QuerySerializer()
      : super('CreateTrafficMirrorTargetRequest');

  @override
  Iterable<Type> get types => const [
        CreateTrafficMirrorTargetRequest,
        _$CreateTrafficMirrorTargetRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTrafficMirrorTargetRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTrafficMirrorTargetRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'NetworkInterfaceId':
          if (value != null) {
            result.networkInterfaceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'NetworkLoadBalancerArn':
          if (value != null) {
            result.networkLoadBalancerArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TagSpecification':
          if (value != null) {
            result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.TagSpecification)],
              ),
            ) as _i4.BuiltList<_i3.TagSpecification>));
          }
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'GatewayLoadBalancerEndpointId':
          if (value != null) {
            result.gatewayLoadBalancerEndpointId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as CreateTrafficMirrorTargetRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateTrafficMirrorTargetRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInterfaceId != null) {
      result
        ..add(const _i1.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          payload.networkInterfaceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.networkLoadBalancerArn != null) {
      result
        ..add(const _i1.XmlElementName('NetworkLoadBalancerArn'))
        ..add(serializers.serialize(
          payload.networkLoadBalancerArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.TagSpecification)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.gatewayLoadBalancerEndpointId != null) {
      result
        ..add(const _i1.XmlElementName('GatewayLoadBalancerEndpointId'))
        ..add(serializers.serialize(
          payload.gatewayLoadBalancerEndpointId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
