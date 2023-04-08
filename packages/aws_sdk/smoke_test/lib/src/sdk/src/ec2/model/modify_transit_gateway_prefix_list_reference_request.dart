// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_transit_gateway_prefix_list_reference_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_transit_gateway_prefix_list_reference_request.g.dart';

abstract class ModifyTransitGatewayPrefixListReferenceRequest
    with
        _i1.HttpInput<ModifyTransitGatewayPrefixListReferenceRequest>,
        _i2.AWSEquatable<ModifyTransitGatewayPrefixListReferenceRequest>
    implements
        Built<ModifyTransitGatewayPrefixListReferenceRequest,
            ModifyTransitGatewayPrefixListReferenceRequestBuilder> {
  factory ModifyTransitGatewayPrefixListReferenceRequest({
    required String transitGatewayRouteTableId,
    required String prefixListId,
    String? transitGatewayAttachmentId,
    bool? blackhole,
    bool? dryRun,
  }) {
    blackhole ??= false;
    dryRun ??= false;
    return _$ModifyTransitGatewayPrefixListReferenceRequest._(
      transitGatewayRouteTableId: transitGatewayRouteTableId,
      prefixListId: prefixListId,
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      blackhole: blackhole,
      dryRun: dryRun,
    );
  }

  factory ModifyTransitGatewayPrefixListReferenceRequest.build(
      [void Function(ModifyTransitGatewayPrefixListReferenceRequestBuilder)
          updates]) = _$ModifyTransitGatewayPrefixListReferenceRequest;

  const ModifyTransitGatewayPrefixListReferenceRequest._();

  factory ModifyTransitGatewayPrefixListReferenceRequest.fromRequest(
    ModifyTransitGatewayPrefixListReferenceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyTransitGatewayPrefixListReferenceRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyTransitGatewayPrefixListReferenceRequestBuilder b) {
    b.blackhole = false;
    b.dryRun = false;
  }

  /// The ID of the transit gateway route table.
  String get transitGatewayRouteTableId;

  /// The ID of the prefix list.
  String get prefixListId;

  /// The ID of the attachment to which traffic is routed.
  String? get transitGatewayAttachmentId;

  /// Indicates whether to drop traffic that matches this route.
  bool get blackhole;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyTransitGatewayPrefixListReferenceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayRouteTableId,
        prefixListId,
        transitGatewayAttachmentId,
        blackhole,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ModifyTransitGatewayPrefixListReferenceRequest');
    helper.add(
      'transitGatewayRouteTableId',
      transitGatewayRouteTableId,
    );
    helper.add(
      'prefixListId',
      prefixListId,
    );
    helper.add(
      'transitGatewayAttachmentId',
      transitGatewayAttachmentId,
    );
    helper.add(
      'blackhole',
      blackhole,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class ModifyTransitGatewayPrefixListReferenceRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        ModifyTransitGatewayPrefixListReferenceRequest> {
  const ModifyTransitGatewayPrefixListReferenceRequestEc2QuerySerializer()
      : super('ModifyTransitGatewayPrefixListReferenceRequest');

  @override
  Iterable<Type> get types => const [
        ModifyTransitGatewayPrefixListReferenceRequest,
        _$ModifyTransitGatewayPrefixListReferenceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyTransitGatewayPrefixListReferenceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyTransitGatewayPrefixListReferenceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TransitGatewayRouteTableId':
          result.transitGatewayRouteTableId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'PrefixListId':
          result.prefixListId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TransitGatewayAttachmentId':
          if (value != null) {
            result.transitGatewayAttachmentId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Blackhole':
          result.blackhole = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as ModifyTransitGatewayPrefixListReferenceRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyTransitGatewayPrefixListReferenceRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('TransitGatewayRouteTableId'))
      ..add(serializers.serialize(
        payload.transitGatewayRouteTableId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('PrefixListId'))
      ..add(serializers.serialize(
        payload.prefixListId,
        specifiedType: const FullType(String),
      ));
    if (payload.transitGatewayAttachmentId != null) {
      result
        ..add(const _i1.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          payload.transitGatewayAttachmentId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('Blackhole'))
      ..add(serializers.serialize(
        payload.blackhole,
        specifiedType: const FullType(bool),
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
