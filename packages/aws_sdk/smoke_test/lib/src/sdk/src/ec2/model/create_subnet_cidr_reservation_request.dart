// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_subnet_cidr_reservation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_cidr_reservation_type.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i4;

part 'create_subnet_cidr_reservation_request.g.dart';

abstract class CreateSubnetCidrReservationRequest
    with
        _i1.HttpInput<CreateSubnetCidrReservationRequest>,
        _i2.AWSEquatable<CreateSubnetCidrReservationRequest>
    implements
        Built<CreateSubnetCidrReservationRequest,
            CreateSubnetCidrReservationRequestBuilder> {
  factory CreateSubnetCidrReservationRequest({
    required String subnetId,
    required String cidr,
    required _i3.SubnetCidrReservationType reservationType,
    String? description,
    bool? dryRun,
    List<_i4.TagSpecification>? tagSpecifications,
  }) {
    dryRun ??= false;
    return _$CreateSubnetCidrReservationRequest._(
      subnetId: subnetId,
      cidr: cidr,
      reservationType: reservationType,
      description: description,
      dryRun: dryRun,
      tagSpecifications:
          tagSpecifications == null ? null : _i5.BuiltList(tagSpecifications),
    );
  }

  factory CreateSubnetCidrReservationRequest.build(
          [void Function(CreateSubnetCidrReservationRequestBuilder) updates]) =
      _$CreateSubnetCidrReservationRequest;

  const CreateSubnetCidrReservationRequest._();

  factory CreateSubnetCidrReservationRequest.fromRequest(
    CreateSubnetCidrReservationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateSubnetCidrReservationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateSubnetCidrReservationRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the subnet.
  String get subnetId;

  /// The IPv4 or IPV6 CIDR range to reserve.
  String get cidr;

  /// The type of reservation.
  ///
  /// The following are valid values:
  ///
  /// *   `prefix`: The Amazon EC2 Prefix Delegation feature assigns the IP addresses to network interfaces that are associated with an instance. For information about Prefix Delegation, see [Prefix Delegation for Amazon EC2 network interfaces](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-prefix-delegation.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// *   `explicit`: You manually assign the IP addresses to resources that reside in your subnet.
  _i3.SubnetCidrReservationType get reservationType;

  /// The description to assign to the subnet CIDR reservation.
  String? get description;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The tags to assign to the subnet CIDR reservation.
  _i5.BuiltList<_i4.TagSpecification>? get tagSpecifications;
  @override
  CreateSubnetCidrReservationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        subnetId,
        cidr,
        reservationType,
        description,
        dryRun,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateSubnetCidrReservationRequest');
    helper.add(
      'subnetId',
      subnetId,
    );
    helper.add(
      'cidr',
      cidr,
    );
    helper.add(
      'reservationType',
      reservationType,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    return helper.toString();
  }
}

class CreateSubnetCidrReservationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateSubnetCidrReservationRequest> {
  const CreateSubnetCidrReservationRequestEc2QuerySerializer()
      : super('CreateSubnetCidrReservationRequest');

  @override
  Iterable<Type> get types => const [
        CreateSubnetCidrReservationRequest,
        _$CreateSubnetCidrReservationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateSubnetCidrReservationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSubnetCidrReservationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'SubnetId':
          result.subnetId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Cidr':
          result.cidr = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ReservationType':
          result.reservationType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.SubnetCidrReservationType),
          ) as _i3.SubnetCidrReservationType);
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
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
    final payload = (object as CreateSubnetCidrReservationRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateSubnetCidrReservationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('SubnetId'))
      ..add(serializers.serialize(
        payload.subnetId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('Cidr'))
      ..add(serializers.serialize(
        payload.cidr,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('ReservationType'))
      ..add(serializers.serialize(
        payload.reservationType,
        specifiedType: const FullType.nullable(_i3.SubnetCidrReservationType),
      ));
    if (payload.description != null) {
      result
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
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
    return result;
  }
}
