// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.customer_gateway; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i2;

part 'customer_gateway.g.dart';

/// Describes a customer gateway.
abstract class CustomerGateway
    with _i1.AWSEquatable<CustomerGateway>
    implements Built<CustomerGateway, CustomerGatewayBuilder> {
  /// Describes a customer gateway.
  factory CustomerGateway({
    String? bgpAsn,
    String? customerGatewayId,
    String? ipAddress,
    String? certificateArn,
    String? state,
    String? type,
    String? deviceName,
    List<_i2.Tag>? tags,
  }) {
    return _$CustomerGateway._(
      bgpAsn: bgpAsn,
      customerGatewayId: customerGatewayId,
      ipAddress: ipAddress,
      certificateArn: certificateArn,
      state: state,
      type: type,
      deviceName: deviceName,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  /// Describes a customer gateway.
  factory CustomerGateway.build(
      [void Function(CustomerGatewayBuilder) updates]) = _$CustomerGateway;

  const CustomerGateway._();

  static const List<_i4.SmithySerializer> serializers = [
    CustomerGatewayEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CustomerGatewayBuilder b) {}

  /// The customer gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN).
  String? get bgpAsn;

  /// The ID of the customer gateway.
  String? get customerGatewayId;

  /// The IP address of the customer gateway device's outside interface.
  String? get ipAddress;

  /// The Amazon Resource Name (ARN) for the customer gateway certificate.
  String? get certificateArn;

  /// The current state of the customer gateway (`pending | available | deleting | deleted`).
  String? get state;

  /// The type of VPN connection the customer gateway supports (`ipsec.1`).
  String? get type;

  /// The name of customer gateway device.
  String? get deviceName;

  /// Any tags assigned to the customer gateway.
  _i3.BuiltList<_i2.Tag>? get tags;
  @override
  List<Object?> get props => [
        bgpAsn,
        customerGatewayId,
        ipAddress,
        certificateArn,
        state,
        type,
        deviceName,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CustomerGateway');
    helper.add(
      'bgpAsn',
      bgpAsn,
    );
    helper.add(
      'customerGatewayId',
      customerGatewayId,
    );
    helper.add(
      'ipAddress',
      ipAddress,
    );
    helper.add(
      'certificateArn',
      certificateArn,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'type',
      type,
    );
    helper.add(
      'deviceName',
      deviceName,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class CustomerGatewayEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<CustomerGateway> {
  const CustomerGatewayEc2QuerySerializer() : super('CustomerGateway');

  @override
  Iterable<Type> get types => const [
        CustomerGateway,
        _$CustomerGateway,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CustomerGateway deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerGatewayBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'bgpAsn':
          if (value != null) {
            result.bgpAsn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'customerGatewayId':
          if (value != null) {
            result.customerGatewayId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ipAddress':
          if (value != null) {
            result.ipAddress = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'certificateArn':
          if (value != null) {
            result.certificateArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'deviceName':
          if (value != null) {
            result.deviceName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Tag)],
              ),
            ) as _i3.BuiltList<_i2.Tag>));
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
    final payload = (object as CustomerGateway);
    final result = <Object?>[
      const _i4.XmlElementName(
        'CustomerGatewayResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.bgpAsn != null) {
      result
        ..add(const _i4.XmlElementName('BgpAsn'))
        ..add(serializers.serialize(
          payload.bgpAsn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.customerGatewayId != null) {
      result
        ..add(const _i4.XmlElementName('CustomerGatewayId'))
        ..add(serializers.serialize(
          payload.customerGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipAddress != null) {
      result
        ..add(const _i4.XmlElementName('IpAddress'))
        ..add(serializers.serialize(
          payload.ipAddress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.certificateArn != null) {
      result
        ..add(const _i4.XmlElementName('CertificateArn'))
        ..add(serializers.serialize(
          payload.certificateArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i4.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.type != null) {
      result
        ..add(const _i4.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.deviceName != null) {
      result
        ..add(const _i4.XmlElementName('DeviceName'))
        ..add(serializers.serialize(
          payload.deviceName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i4.XmlElementName('TagSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Tag)],
          ),
        ));
    }
    return result;
  }
}
