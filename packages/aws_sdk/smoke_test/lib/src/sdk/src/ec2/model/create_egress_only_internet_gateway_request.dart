// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_egress_only_internet_gateway_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i3;

part 'create_egress_only_internet_gateway_request.g.dart';

abstract class CreateEgressOnlyInternetGatewayRequest
    with
        _i1.HttpInput<CreateEgressOnlyInternetGatewayRequest>,
        _i2.AWSEquatable<CreateEgressOnlyInternetGatewayRequest>
    implements
        Built<CreateEgressOnlyInternetGatewayRequest,
            CreateEgressOnlyInternetGatewayRequestBuilder> {
  factory CreateEgressOnlyInternetGatewayRequest({
    String? clientToken,
    bool? dryRun,
    required String vpcId,
    List<_i3.TagSpecification>? tagSpecifications,
  }) {
    dryRun ??= false;
    return _$CreateEgressOnlyInternetGatewayRequest._(
      clientToken: clientToken,
      dryRun: dryRun,
      vpcId: vpcId,
      tagSpecifications:
          tagSpecifications == null ? null : _i4.BuiltList(tagSpecifications),
    );
  }

  factory CreateEgressOnlyInternetGatewayRequest.build(
      [void Function(CreateEgressOnlyInternetGatewayRequestBuilder)
          updates]) = _$CreateEgressOnlyInternetGatewayRequest;

  const CreateEgressOnlyInternetGatewayRequest._();

  factory CreateEgressOnlyInternetGatewayRequest.fromRequest(
    CreateEgressOnlyInternetGatewayRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateEgressOnlyInternetGatewayRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateEgressOnlyInternetGatewayRequestBuilder b) {
    b.dryRun = false;
  }

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the VPC for which to create the egress-only internet gateway.
  String get vpcId;

  /// The tags to assign to the egress-only internet gateway.
  _i4.BuiltList<_i3.TagSpecification>? get tagSpecifications;
  @override
  CreateEgressOnlyInternetGatewayRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientToken,
        dryRun,
        vpcId,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateEgressOnlyInternetGatewayRequest');
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    return helper.toString();
  }
}

class CreateEgressOnlyInternetGatewayRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CreateEgressOnlyInternetGatewayRequest> {
  const CreateEgressOnlyInternetGatewayRequestEc2QuerySerializer()
      : super('CreateEgressOnlyInternetGatewayRequest');

  @override
  Iterable<Type> get types => const [
        CreateEgressOnlyInternetGatewayRequest,
        _$CreateEgressOnlyInternetGatewayRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateEgressOnlyInternetGatewayRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateEgressOnlyInternetGatewayRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
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
        case 'VpcId':
          result.vpcId = (serializers.deserialize(
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
                _i4.BuiltList,
                [FullType(_i3.TagSpecification)],
              ),
            ) as _i4.BuiltList<_i3.TagSpecification>));
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
    final payload = (object as CreateEgressOnlyInternetGatewayRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateEgressOnlyInternetGatewayRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
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
      ..add(const _i1.XmlElementName('VpcId'))
      ..add(serializers.serialize(
        payload.vpcId,
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
            _i4.BuiltList,
            [FullType(_i3.TagSpecification)],
          ),
        ));
    }
    return result;
  }
}
