// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_customer_gateway_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/gateway_type.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i4;

part 'create_customer_gateway_request.g.dart';

/// Contains the parameters for CreateCustomerGateway.
abstract class CreateCustomerGatewayRequest
    with
        _i1.HttpInput<CreateCustomerGatewayRequest>,
        _i2.AWSEquatable<CreateCustomerGatewayRequest>
    implements
        Built<CreateCustomerGatewayRequest,
            CreateCustomerGatewayRequestBuilder> {
  /// Contains the parameters for CreateCustomerGateway.
  factory CreateCustomerGatewayRequest({
    int? bgpAsn,
    String? publicIp,
    String? certificateArn,
    required _i3.GatewayType type,
    List<_i4.TagSpecification>? tagSpecifications,
    String? deviceName,
    String? ipAddress,
    bool? dryRun,
  }) {
    bgpAsn ??= 0;
    dryRun ??= false;
    return _$CreateCustomerGatewayRequest._(
      bgpAsn: bgpAsn,
      publicIp: publicIp,
      certificateArn: certificateArn,
      type: type,
      tagSpecifications:
          tagSpecifications == null ? null : _i5.BuiltList(tagSpecifications),
      deviceName: deviceName,
      ipAddress: ipAddress,
      dryRun: dryRun,
    );
  }

  /// Contains the parameters for CreateCustomerGateway.
  factory CreateCustomerGatewayRequest.build(
          [void Function(CreateCustomerGatewayRequestBuilder) updates]) =
      _$CreateCustomerGatewayRequest;

  const CreateCustomerGatewayRequest._();

  factory CreateCustomerGatewayRequest.fromRequest(
    CreateCustomerGatewayRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateCustomerGatewayRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateCustomerGatewayRequestBuilder b) {
    b.bgpAsn = 0;
    b.dryRun = false;
  }

  /// For devices that support BGP, the customer gateway's BGP ASN.
  ///
  /// Default: 65000
  int get bgpAsn;

  /// _This member has been deprecated._ The Internet-routable IP address for the customer gateway's outside interface. The address must be static.
  String? get publicIp;

  /// The Amazon Resource Name (ARN) for the customer gateway certificate.
  String? get certificateArn;

  /// The type of VPN connection that this customer gateway supports (`ipsec.1`).
  _i3.GatewayType get type;

  /// The tags to apply to the customer gateway.
  _i5.BuiltList<_i4.TagSpecification>? get tagSpecifications;

  /// A name for the customer gateway device.
  ///
  /// Length Constraints: Up to 255 characters.
  String? get deviceName;

  /// IPv4 address for the customer gateway device's outside interface. The address must be static.
  String? get ipAddress;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateCustomerGatewayRequest getPayload() => this;
  @override
  List<Object?> get props => [
        bgpAsn,
        publicIp,
        certificateArn,
        type,
        tagSpecifications,
        deviceName,
        ipAddress,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateCustomerGatewayRequest');
    helper.add(
      'bgpAsn',
      bgpAsn,
    );
    helper.add(
      'publicIp',
      publicIp,
    );
    helper.add(
      'certificateArn',
      certificateArn,
    );
    helper.add(
      'type',
      type,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'deviceName',
      deviceName,
    );
    helper.add(
      'ipAddress',
      ipAddress,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class CreateCustomerGatewayRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateCustomerGatewayRequest> {
  const CreateCustomerGatewayRequestEc2QuerySerializer()
      : super('CreateCustomerGatewayRequest');

  @override
  Iterable<Type> get types => const [
        CreateCustomerGatewayRequest,
        _$CreateCustomerGatewayRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateCustomerGatewayRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCustomerGatewayRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'BgpAsn':
          result.bgpAsn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'PublicIp':
          if (value != null) {
            result.publicIp = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'CertificateArn':
          if (value != null) {
            result.certificateArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Type':
          result.type = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.GatewayType),
          ) as _i3.GatewayType);
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
                [FullType(_i4.TagSpecification)],
              ),
            ) as _i5.BuiltList<_i4.TagSpecification>));
          }
          break;
        case 'DeviceName':
          if (value != null) {
            result.deviceName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'IpAddress':
          if (value != null) {
            result.ipAddress = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'dryRun':
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
    final payload = (object as CreateCustomerGatewayRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateCustomerGatewayRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('BgpAsn'))
      ..add(serializers.serialize(
        payload.bgpAsn,
        specifiedType: const FullType(int),
      ));
    if (payload.publicIp != null) {
      result
        ..add(const _i1.XmlElementName('PublicIp'))
        ..add(serializers.serialize(
          payload.publicIp!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.certificateArn != null) {
      result
        ..add(const _i1.XmlElementName('CertificateArn'))
        ..add(serializers.serialize(
          payload.certificateArn!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('Type'))
      ..add(serializers.serialize(
        payload.type,
        specifiedType: const FullType.nullable(_i3.GatewayType),
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
            [FullType(_i4.TagSpecification)],
          ),
        ));
    }
    if (payload.deviceName != null) {
      result
        ..add(const _i1.XmlElementName('DeviceName'))
        ..add(serializers.serialize(
          payload.deviceName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipAddress != null) {
      result
        ..add(const _i1.XmlElementName('IpAddress'))
        ..add(serializers.serialize(
          payload.ipAddress!,
          specifiedType: const FullType(String),
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
