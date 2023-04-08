// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_transit_gateway_vpc_attachment_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_vpc_attachment_request_options.dart'
    as _i3;

part 'modify_transit_gateway_vpc_attachment_request.g.dart';

abstract class ModifyTransitGatewayVpcAttachmentRequest
    with
        _i1.HttpInput<ModifyTransitGatewayVpcAttachmentRequest>,
        _i2.AWSEquatable<ModifyTransitGatewayVpcAttachmentRequest>
    implements
        Built<ModifyTransitGatewayVpcAttachmentRequest,
            ModifyTransitGatewayVpcAttachmentRequestBuilder> {
  factory ModifyTransitGatewayVpcAttachmentRequest({
    required String transitGatewayAttachmentId,
    List<String>? addSubnetIds,
    List<String>? removeSubnetIds,
    _i3.ModifyTransitGatewayVpcAttachmentRequestOptions? options,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifyTransitGatewayVpcAttachmentRequest._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      addSubnetIds: addSubnetIds == null ? null : _i4.BuiltList(addSubnetIds),
      removeSubnetIds:
          removeSubnetIds == null ? null : _i4.BuiltList(removeSubnetIds),
      options: options,
      dryRun: dryRun,
    );
  }

  factory ModifyTransitGatewayVpcAttachmentRequest.build(
      [void Function(ModifyTransitGatewayVpcAttachmentRequestBuilder)
          updates]) = _$ModifyTransitGatewayVpcAttachmentRequest;

  const ModifyTransitGatewayVpcAttachmentRequest._();

  factory ModifyTransitGatewayVpcAttachmentRequest.fromRequest(
    ModifyTransitGatewayVpcAttachmentRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyTransitGatewayVpcAttachmentRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyTransitGatewayVpcAttachmentRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the attachment.
  String get transitGatewayAttachmentId;

  /// The IDs of one or more subnets to add. You can specify at most one subnet per Availability Zone.
  _i4.BuiltList<String>? get addSubnetIds;

  /// The IDs of one or more subnets to remove.
  _i4.BuiltList<String>? get removeSubnetIds;

  /// The new VPC attachment options.
  _i3.ModifyTransitGatewayVpcAttachmentRequestOptions? get options;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyTransitGatewayVpcAttachmentRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        addSubnetIds,
        removeSubnetIds,
        options,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyTransitGatewayVpcAttachmentRequest');
    helper.add(
      'transitGatewayAttachmentId',
      transitGatewayAttachmentId,
    );
    helper.add(
      'addSubnetIds',
      addSubnetIds,
    );
    helper.add(
      'removeSubnetIds',
      removeSubnetIds,
    );
    helper.add(
      'options',
      options,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class ModifyTransitGatewayVpcAttachmentRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyTransitGatewayVpcAttachmentRequest> {
  const ModifyTransitGatewayVpcAttachmentRequestEc2QuerySerializer()
      : super('ModifyTransitGatewayVpcAttachmentRequest');

  @override
  Iterable<Type> get types => const [
        ModifyTransitGatewayVpcAttachmentRequest,
        _$ModifyTransitGatewayVpcAttachmentRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyTransitGatewayVpcAttachmentRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyTransitGatewayVpcAttachmentRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TransitGatewayAttachmentId':
          result.transitGatewayAttachmentId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'AddSubnetIds':
          if (value != null) {
            result.addSubnetIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'RemoveSubnetIds':
          if (value != null) {
            result.removeSubnetIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'Options':
          if (value != null) {
            result.options.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i3.ModifyTransitGatewayVpcAttachmentRequestOptions),
            ) as _i3.ModifyTransitGatewayVpcAttachmentRequestOptions));
          }
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
    final payload = (object as ModifyTransitGatewayVpcAttachmentRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyTransitGatewayVpcAttachmentRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('TransitGatewayAttachmentId'))
      ..add(serializers.serialize(
        payload.transitGatewayAttachmentId,
        specifiedType: const FullType(String),
      ));
    if (payload.addSubnetIds != null) {
      result
        ..add(const _i1.XmlElementName('AddSubnetIds'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.addSubnetIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.removeSubnetIds != null) {
      result
        ..add(const _i1.XmlElementName('RemoveSubnetIds'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.removeSubnetIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.options != null) {
      result
        ..add(const _i1.XmlElementName('Options'))
        ..add(serializers.serialize(
          payload.options!,
          specifiedType: const FullType(
              _i3.ModifyTransitGatewayVpcAttachmentRequestOptions),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
