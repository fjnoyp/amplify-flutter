// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.assign_private_ip_addresses_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/assigned_private_ip_address.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv4_prefix_specification.dart'
    as _i3;

part 'assign_private_ip_addresses_result.g.dart';

abstract class AssignPrivateIpAddressesResult
    with
        _i1.AWSEquatable<AssignPrivateIpAddressesResult>
    implements
        Built<AssignPrivateIpAddressesResult,
            AssignPrivateIpAddressesResultBuilder> {
  factory AssignPrivateIpAddressesResult({
    String? networkInterfaceId,
    List<_i2.AssignedPrivateIpAddress>? assignedPrivateIpAddresses,
    List<_i3.Ipv4PrefixSpecification>? assignedIpv4Prefixes,
  }) {
    return _$AssignPrivateIpAddressesResult._(
      networkInterfaceId: networkInterfaceId,
      assignedPrivateIpAddresses: assignedPrivateIpAddresses == null
          ? null
          : _i4.BuiltList(assignedPrivateIpAddresses),
      assignedIpv4Prefixes: assignedIpv4Prefixes == null
          ? null
          : _i4.BuiltList(assignedIpv4Prefixes),
    );
  }

  factory AssignPrivateIpAddressesResult.build(
          [void Function(AssignPrivateIpAddressesResultBuilder) updates]) =
      _$AssignPrivateIpAddressesResult;

  const AssignPrivateIpAddressesResult._();

  /// Constructs a [AssignPrivateIpAddressesResult] from a [payload] and [response].
  factory AssignPrivateIpAddressesResult.fromResponse(
    AssignPrivateIpAddressesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    AssignPrivateIpAddressesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssignPrivateIpAddressesResultBuilder b) {}

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// The private IP addresses assigned to the network interface.
  _i4.BuiltList<_i2.AssignedPrivateIpAddress>? get assignedPrivateIpAddresses;

  /// The IPv4 prefixes that are assigned to the network interface.
  _i4.BuiltList<_i3.Ipv4PrefixSpecification>? get assignedIpv4Prefixes;
  @override
  List<Object?> get props => [
        networkInterfaceId,
        assignedPrivateIpAddresses,
        assignedIpv4Prefixes,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssignPrivateIpAddressesResult');
    helper.add(
      'networkInterfaceId',
      networkInterfaceId,
    );
    helper.add(
      'assignedPrivateIpAddresses',
      assignedPrivateIpAddresses,
    );
    helper.add(
      'assignedIpv4Prefixes',
      assignedIpv4Prefixes,
    );
    return helper.toString();
  }
}

class AssignPrivateIpAddressesResultEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<AssignPrivateIpAddressesResult> {
  const AssignPrivateIpAddressesResultEc2QuerySerializer()
      : super('AssignPrivateIpAddressesResult');

  @override
  Iterable<Type> get types => const [
        AssignPrivateIpAddressesResult,
        _$AssignPrivateIpAddressesResult,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssignPrivateIpAddressesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssignPrivateIpAddressesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkInterfaceId':
          if (value != null) {
            result.networkInterfaceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'assignedPrivateIpAddressesSet':
          if (value != null) {
            result.assignedPrivateIpAddresses
                .replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.AssignedPrivateIpAddress)],
              ),
            ) as _i4.BuiltList<_i2.AssignedPrivateIpAddress>));
          }
          break;
        case 'assignedIpv4PrefixSet':
          if (value != null) {
            result.assignedIpv4Prefixes
                .replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Ipv4PrefixSpecification)],
              ),
            ) as _i4.BuiltList<_i3.Ipv4PrefixSpecification>));
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
    final payload = (object as AssignPrivateIpAddressesResult);
    final result = <Object?>[
      const _i5.XmlElementName(
        'AssignPrivateIpAddressesResultResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInterfaceId != null) {
      result
        ..add(const _i5.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          payload.networkInterfaceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.assignedPrivateIpAddresses != null) {
      result
        ..add(const _i5.XmlElementName('AssignedPrivateIpAddressesSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.assignedPrivateIpAddresses!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.AssignedPrivateIpAddress)],
          ),
        ));
    }
    if (payload.assignedIpv4Prefixes != null) {
      result
        ..add(const _i5.XmlElementName('AssignedIpv4PrefixSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.assignedIpv4Prefixes!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Ipv4PrefixSpecification)],
          ),
        ));
    }
    return result;
  }
}
