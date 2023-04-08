// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_subnet_cidr_reservations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_cidr_reservation.dart'
    as _i2;

part 'get_subnet_cidr_reservations_result.g.dart';

abstract class GetSubnetCidrReservationsResult
    with
        _i1.AWSEquatable<GetSubnetCidrReservationsResult>
    implements
        Built<GetSubnetCidrReservationsResult,
            GetSubnetCidrReservationsResultBuilder> {
  factory GetSubnetCidrReservationsResult({
    List<_i2.SubnetCidrReservation>? subnetIpv4CidrReservations,
    List<_i2.SubnetCidrReservation>? subnetIpv6CidrReservations,
    String? nextToken,
  }) {
    return _$GetSubnetCidrReservationsResult._(
      subnetIpv4CidrReservations: subnetIpv4CidrReservations == null
          ? null
          : _i3.BuiltList(subnetIpv4CidrReservations),
      subnetIpv6CidrReservations: subnetIpv6CidrReservations == null
          ? null
          : _i3.BuiltList(subnetIpv6CidrReservations),
      nextToken: nextToken,
    );
  }

  factory GetSubnetCidrReservationsResult.build(
          [void Function(GetSubnetCidrReservationsResultBuilder) updates]) =
      _$GetSubnetCidrReservationsResult;

  const GetSubnetCidrReservationsResult._();

  /// Constructs a [GetSubnetCidrReservationsResult] from a [payload] and [response].
  factory GetSubnetCidrReservationsResult.fromResponse(
    GetSubnetCidrReservationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetSubnetCidrReservationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetSubnetCidrReservationsResultBuilder b) {}

  /// Information about the IPv4 subnet CIDR reservations.
  _i3.BuiltList<_i2.SubnetCidrReservation>? get subnetIpv4CidrReservations;

  /// Information about the IPv6 subnet CIDR reservations.
  _i3.BuiltList<_i2.SubnetCidrReservation>? get subnetIpv6CidrReservations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        subnetIpv4CidrReservations,
        subnetIpv6CidrReservations,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetSubnetCidrReservationsResult');
    helper.add(
      'subnetIpv4CidrReservations',
      subnetIpv4CidrReservations,
    );
    helper.add(
      'subnetIpv6CidrReservations',
      subnetIpv6CidrReservations,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetSubnetCidrReservationsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<GetSubnetCidrReservationsResult> {
  const GetSubnetCidrReservationsResultEc2QuerySerializer()
      : super('GetSubnetCidrReservationsResult');

  @override
  Iterable<Type> get types => const [
        GetSubnetCidrReservationsResult,
        _$GetSubnetCidrReservationsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetSubnetCidrReservationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSubnetCidrReservationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'subnetIpv4CidrReservationSet':
          if (value != null) {
            result.subnetIpv4CidrReservations
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.SubnetCidrReservation)],
              ),
            ) as _i3.BuiltList<_i2.SubnetCidrReservation>));
          }
          break;
        case 'subnetIpv6CidrReservationSet':
          if (value != null) {
            result.subnetIpv6CidrReservations
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.SubnetCidrReservation)],
              ),
            ) as _i3.BuiltList<_i2.SubnetCidrReservation>));
          }
          break;
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
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
    final payload = (object as GetSubnetCidrReservationsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GetSubnetCidrReservationsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.subnetIpv4CidrReservations != null) {
      result
        ..add(const _i4.XmlElementName('SubnetIpv4CidrReservationSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.subnetIpv4CidrReservations!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.SubnetCidrReservation)],
          ),
        ));
    }
    if (payload.subnetIpv6CidrReservations != null) {
      result
        ..add(const _i4.XmlElementName('SubnetIpv6CidrReservationSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.subnetIpv6CidrReservations!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.SubnetCidrReservation)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
