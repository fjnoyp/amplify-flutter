// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_nat_gateway_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/connectivity_type.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i3;

part 'create_nat_gateway_request.g.dart';

abstract class CreateNatGatewayRequest
    with
        _i1.HttpInput<CreateNatGatewayRequest>,
        _i2.AWSEquatable<CreateNatGatewayRequest>
    implements Built<CreateNatGatewayRequest, CreateNatGatewayRequestBuilder> {
  factory CreateNatGatewayRequest({
    String? allocationId,
    String? clientToken,
    bool? dryRun,
    required String subnetId,
    List<_i3.TagSpecification>? tagSpecifications,
    _i4.ConnectivityType? connectivityType,
  }) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientToken ??= _i2.uuid(secure: true);
    }
    dryRun ??= false;
    return _$CreateNatGatewayRequest._(
      allocationId: allocationId,
      clientToken: clientToken,
      dryRun: dryRun,
      subnetId: subnetId,
      tagSpecifications:
          tagSpecifications == null ? null : _i5.BuiltList(tagSpecifications),
      connectivityType: connectivityType,
    );
  }

  factory CreateNatGatewayRequest.build(
          [void Function(CreateNatGatewayRequestBuilder) updates]) =
      _$CreateNatGatewayRequest;

  const CreateNatGatewayRequest._();

  factory CreateNatGatewayRequest.fromRequest(
    CreateNatGatewayRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateNatGatewayRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateNatGatewayRequestBuilder b) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientToken = _i2.uuid(secure: true);
    }
    b.dryRun = false;
  }

  /// \[Public NAT gateways only\] The allocation ID of an Elastic IP address to associate with the NAT gateway. You cannot specify an Elastic IP address with a private NAT gateway. If the Elastic IP address is associated with another resource, you must first disassociate it.
  String? get allocationId;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  ///
  /// Constraint: Maximum 64 ASCII characters.
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The subnet in which to create the NAT gateway.
  String get subnetId;

  /// The tags to assign to the NAT gateway.
  _i5.BuiltList<_i3.TagSpecification>? get tagSpecifications;

  /// Indicates whether the NAT gateway supports public or private connectivity. The default is public connectivity.
  _i4.ConnectivityType? get connectivityType;
  @override
  CreateNatGatewayRequest getPayload() => this;
  @override
  List<Object?> get props => [
        allocationId,
        clientToken,
        dryRun,
        subnetId,
        tagSpecifications,
        connectivityType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateNatGatewayRequest');
    helper.add(
      'allocationId',
      allocationId,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'connectivityType',
      connectivityType,
    );
    return helper.toString();
  }
}

class CreateNatGatewayRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateNatGatewayRequest> {
  const CreateNatGatewayRequestEc2QuerySerializer()
      : super('CreateNatGatewayRequest');

  @override
  Iterable<Type> get types => const [
        CreateNatGatewayRequest,
        _$CreateNatGatewayRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNatGatewayRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNatGatewayRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AllocationId':
          if (value != null) {
            result.allocationId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'SubnetId':
          result.subnetId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
                _i5.BuiltList,
                [FullType(_i3.TagSpecification)],
              ),
            ) as _i5.BuiltList<_i3.TagSpecification>));
          }
          break;
        case 'ConnectivityType':
          if (value != null) {
            result.connectivityType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ConnectivityType),
            ) as _i4.ConnectivityType);
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
    final payload = (object as CreateNatGatewayRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateNatGatewayRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.allocationId != null) {
      result
        ..add(const _i1.XmlElementName('AllocationId'))
        ..add(serializers.serialize(
          payload.allocationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('SubnetId'))
      ..add(serializers.serialize(
        payload.subnetId,
        specifiedType: const FullType(String),
      ));
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
            _i5.BuiltList,
            [FullType(_i3.TagSpecification)],
          ),
        ));
    }
    if (payload.connectivityType != null) {
      result
        ..add(const _i1.XmlElementName('ConnectivityType'))
        ..add(serializers.serialize(
          payload.connectivityType!,
          specifiedType: const FullType.nullable(_i4.ConnectivityType),
        ));
    }
    return result;
  }
}
