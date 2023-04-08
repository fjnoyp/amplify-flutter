// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_prefix_list_reference; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_prefix_list_attachment.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_prefix_list_reference_state.dart'
    as _i2;

part 'transit_gateway_prefix_list_reference.g.dart';

/// Describes a prefix list reference.
abstract class TransitGatewayPrefixListReference
    with
        _i1.AWSEquatable<TransitGatewayPrefixListReference>
    implements
        Built<TransitGatewayPrefixListReference,
            TransitGatewayPrefixListReferenceBuilder> {
  /// Describes a prefix list reference.
  factory TransitGatewayPrefixListReference({
    String? transitGatewayRouteTableId,
    String? prefixListId,
    String? prefixListOwnerId,
    _i2.TransitGatewayPrefixListReferenceState? state,
    bool? blackhole,
    _i3.TransitGatewayPrefixListAttachment? transitGatewayAttachment,
  }) {
    blackhole ??= false;
    return _$TransitGatewayPrefixListReference._(
      transitGatewayRouteTableId: transitGatewayRouteTableId,
      prefixListId: prefixListId,
      prefixListOwnerId: prefixListOwnerId,
      state: state,
      blackhole: blackhole,
      transitGatewayAttachment: transitGatewayAttachment,
    );
  }

  /// Describes a prefix list reference.
  factory TransitGatewayPrefixListReference.build(
          [void Function(TransitGatewayPrefixListReferenceBuilder) updates]) =
      _$TransitGatewayPrefixListReference;

  const TransitGatewayPrefixListReference._();

  static const List<_i4.SmithySerializer> serializers = [
    TransitGatewayPrefixListReferenceEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayPrefixListReferenceBuilder b) {
    b.blackhole = false;
  }

  /// The ID of the transit gateway route table.
  String? get transitGatewayRouteTableId;

  /// The ID of the prefix list.
  String? get prefixListId;

  /// The ID of the prefix list owner.
  String? get prefixListOwnerId;

  /// The state of the prefix list reference.
  _i2.TransitGatewayPrefixListReferenceState? get state;

  /// Indicates whether traffic that matches this route is dropped.
  bool get blackhole;

  /// Information about the transit gateway attachment.
  _i3.TransitGatewayPrefixListAttachment? get transitGatewayAttachment;
  @override
  List<Object?> get props => [
        transitGatewayRouteTableId,
        prefixListId,
        prefixListOwnerId,
        state,
        blackhole,
        transitGatewayAttachment,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayPrefixListReference');
    helper.add(
      'transitGatewayRouteTableId',
      transitGatewayRouteTableId,
    );
    helper.add(
      'prefixListId',
      prefixListId,
    );
    helper.add(
      'prefixListOwnerId',
      prefixListOwnerId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'blackhole',
      blackhole,
    );
    helper.add(
      'transitGatewayAttachment',
      transitGatewayAttachment,
    );
    return helper.toString();
  }
}

class TransitGatewayPrefixListReferenceEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<TransitGatewayPrefixListReference> {
  const TransitGatewayPrefixListReferenceEc2QuerySerializer()
      : super('TransitGatewayPrefixListReference');

  @override
  Iterable<Type> get types => const [
        TransitGatewayPrefixListReference,
        _$TransitGatewayPrefixListReference,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayPrefixListReference deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayPrefixListReferenceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayRouteTableId':
          if (value != null) {
            result.transitGatewayRouteTableId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'prefixListId':
          if (value != null) {
            result.prefixListId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'prefixListOwnerId':
          if (value != null) {
            result.prefixListOwnerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.TransitGatewayPrefixListReferenceState),
            ) as _i2.TransitGatewayPrefixListReferenceState);
          }
          break;
        case 'blackhole':
          result.blackhole = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'transitGatewayAttachment':
          if (value != null) {
            result.transitGatewayAttachment.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.TransitGatewayPrefixListAttachment),
            ) as _i3.TransitGatewayPrefixListAttachment));
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
    final payload = (object as TransitGatewayPrefixListReference);
    final result = <Object?>[
      const _i4.XmlElementName(
        'TransitGatewayPrefixListReferenceResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayRouteTableId != null) {
      result
        ..add(const _i4.XmlElementName('TransitGatewayRouteTableId'))
        ..add(serializers.serialize(
          payload.transitGatewayRouteTableId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.prefixListId != null) {
      result
        ..add(const _i4.XmlElementName('PrefixListId'))
        ..add(serializers.serialize(
          payload.prefixListId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.prefixListOwnerId != null) {
      result
        ..add(const _i4.XmlElementName('PrefixListOwnerId'))
        ..add(serializers.serialize(
          payload.prefixListOwnerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i4.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(
              _i2.TransitGatewayPrefixListReferenceState),
        ));
    }
    result
      ..add(const _i4.XmlElementName('Blackhole'))
      ..add(serializers.serialize(
        payload.blackhole,
        specifiedType: const FullType(bool),
      ));
    if (payload.transitGatewayAttachment != null) {
      result
        ..add(const _i4.XmlElementName('TransitGatewayAttachment'))
        ..add(serializers.serialize(
          payload.transitGatewayAttachment!,
          specifiedType: const FullType(_i3.TransitGatewayPrefixListAttachment),
        ));
    }
    return result;
  }
}
