// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.stale_ip_permission; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/user_id_group_pair.dart'
    as _i2;

part 'stale_ip_permission.g.dart';

/// Describes a stale rule in a security group.
abstract class StaleIpPermission
    with _i1.AWSEquatable<StaleIpPermission>
    implements Built<StaleIpPermission, StaleIpPermissionBuilder> {
  /// Describes a stale rule in a security group.
  factory StaleIpPermission({
    int? fromPort,
    String? ipProtocol,
    List<String>? ipRanges,
    List<String>? prefixListIds,
    int? toPort,
    List<_i2.UserIdGroupPair>? userIdGroupPairs,
  }) {
    fromPort ??= 0;
    toPort ??= 0;
    return _$StaleIpPermission._(
      fromPort: fromPort,
      ipProtocol: ipProtocol,
      ipRanges: ipRanges == null ? null : _i3.BuiltList(ipRanges),
      prefixListIds:
          prefixListIds == null ? null : _i3.BuiltList(prefixListIds),
      toPort: toPort,
      userIdGroupPairs:
          userIdGroupPairs == null ? null : _i3.BuiltList(userIdGroupPairs),
    );
  }

  /// Describes a stale rule in a security group.
  factory StaleIpPermission.build(
      [void Function(StaleIpPermissionBuilder) updates]) = _$StaleIpPermission;

  const StaleIpPermission._();

  static const List<_i4.SmithySerializer> serializers = [
    StaleIpPermissionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StaleIpPermissionBuilder b) {
    b.fromPort = 0;
    b.toPort = 0;
  }

  /// The start of the port range for the TCP and UDP protocols, or an ICMP type number. A value of `-1` indicates all ICMP types.
  int get fromPort;

  /// The IP protocol name (for `tcp`, `udp`, and `icmp`) or number (see [Protocol Numbers)](http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml).
  String? get ipProtocol;

  /// The IP ranges. Not applicable for stale security group rules.
  _i3.BuiltList<String>? get ipRanges;

  /// The prefix list IDs. Not applicable for stale security group rules.
  _i3.BuiltList<String>? get prefixListIds;

  /// The end of the port range for the TCP and UDP protocols, or an ICMP type number. A value of `-1` indicates all ICMP types.
  int get toPort;

  /// The security group pairs. Returns the ID of the referenced security group and VPC, and the ID and status of the VPC peering connection.
  _i3.BuiltList<_i2.UserIdGroupPair>? get userIdGroupPairs;
  @override
  List<Object?> get props => [
        fromPort,
        ipProtocol,
        ipRanges,
        prefixListIds,
        toPort,
        userIdGroupPairs,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StaleIpPermission');
    helper.add(
      'fromPort',
      fromPort,
    );
    helper.add(
      'ipProtocol',
      ipProtocol,
    );
    helper.add(
      'ipRanges',
      ipRanges,
    );
    helper.add(
      'prefixListIds',
      prefixListIds,
    );
    helper.add(
      'toPort',
      toPort,
    );
    helper.add(
      'userIdGroupPairs',
      userIdGroupPairs,
    );
    return helper.toString();
  }
}

class StaleIpPermissionEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<StaleIpPermission> {
  const StaleIpPermissionEc2QuerySerializer() : super('StaleIpPermission');

  @override
  Iterable<Type> get types => const [
        StaleIpPermission,
        _$StaleIpPermission,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  StaleIpPermission deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StaleIpPermissionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'fromPort':
          result.fromPort = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'ipProtocol':
          if (value != null) {
            result.ipProtocol = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ipRanges':
          if (value != null) {
            result.ipRanges.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
          }
          break;
        case 'prefixListIds':
          if (value != null) {
            result.prefixListIds.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
          }
          break;
        case 'toPort':
          result.toPort = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'groups':
          if (value != null) {
            result.userIdGroupPairs.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.UserIdGroupPair)],
              ),
            ) as _i3.BuiltList<_i2.UserIdGroupPair>));
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
    final payload = (object as StaleIpPermission);
    final result = <Object?>[
      const _i4.XmlElementName(
        'StaleIpPermissionResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i4.XmlElementName('FromPort'))
      ..add(serializers.serialize(
        payload.fromPort,
        specifiedType: const FullType(int),
      ));
    if (payload.ipProtocol != null) {
      result
        ..add(const _i4.XmlElementName('IpProtocol'))
        ..add(serializers.serialize(
          payload.ipProtocol!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipRanges != null) {
      result
        ..add(const _i4.XmlElementName('IpRanges'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipRanges!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.prefixListIds != null) {
      result
        ..add(const _i4.XmlElementName('PrefixListIds'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.prefixListIds!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result
      ..add(const _i4.XmlElementName('ToPort'))
      ..add(serializers.serialize(
        payload.toPort,
        specifiedType: const FullType(int),
      ));
    if (payload.userIdGroupPairs != null) {
      result
        ..add(const _i4.XmlElementName('Groups'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.userIdGroupPairs!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.UserIdGroupPair)],
          ),
        ));
    }
    return result;
  }
}
