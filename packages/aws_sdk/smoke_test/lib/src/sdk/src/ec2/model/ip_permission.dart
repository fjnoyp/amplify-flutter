// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.ip_permission; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/ip_range.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_range.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/prefix_list_id.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/user_id_group_pair.dart'
    as _i5;

part 'ip_permission.g.dart';

/// Describes a set of permissions for a security group rule.
abstract class IpPermission
    with _i1.AWSEquatable<IpPermission>
    implements Built<IpPermission, IpPermissionBuilder> {
  /// Describes a set of permissions for a security group rule.
  factory IpPermission({
    int? fromPort,
    String? ipProtocol,
    List<_i2.IpRange>? ipRanges,
    List<_i3.Ipv6Range>? ipv6Ranges,
    List<_i4.PrefixListId>? prefixListIds,
    int? toPort,
    List<_i5.UserIdGroupPair>? userIdGroupPairs,
  }) {
    fromPort ??= 0;
    toPort ??= 0;
    return _$IpPermission._(
      fromPort: fromPort,
      ipProtocol: ipProtocol,
      ipRanges: ipRanges == null ? null : _i6.BuiltList(ipRanges),
      ipv6Ranges: ipv6Ranges == null ? null : _i6.BuiltList(ipv6Ranges),
      prefixListIds:
          prefixListIds == null ? null : _i6.BuiltList(prefixListIds),
      toPort: toPort,
      userIdGroupPairs:
          userIdGroupPairs == null ? null : _i6.BuiltList(userIdGroupPairs),
    );
  }

  /// Describes a set of permissions for a security group rule.
  factory IpPermission.build([void Function(IpPermissionBuilder) updates]) =
      _$IpPermission;

  const IpPermission._();

  static const List<_i7.SmithySerializer> serializers = [
    IpPermissionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IpPermissionBuilder b) {
    b.fromPort = 0;
    b.toPort = 0;
  }

  /// The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type number. A value of `-1` indicates all ICMP/ICMPv6 types. If you specify all ICMP/ICMPv6 types, you must specify all codes.
  int get fromPort;

  /// The IP protocol name (`tcp`, `udp`, `icmp`, `icmpv6`) or number (see [Protocol Numbers](http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)).
  ///
  /// \[VPC only\] Use `-1` to specify all protocols. When authorizing security group rules, specifying `-1` or a protocol number other than `tcp`, `udp`, `icmp`, or `icmpv6` allows traffic on all ports, regardless of any port range you specify. For `tcp`, `udp`, and `icmp`, you must specify a port range. For `icmpv6`, the port range is optional; if you omit the port range, traffic for all types and codes is allowed.
  String? get ipProtocol;

  /// The IPv4 ranges.
  _i6.BuiltList<_i2.IpRange>? get ipRanges;

  /// \[VPC only\] The IPv6 ranges.
  _i6.BuiltList<_i3.Ipv6Range>? get ipv6Ranges;

  /// \[VPC only\] The prefix list IDs.
  _i6.BuiltList<_i4.PrefixListId>? get prefixListIds;

  /// The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code. A value of `-1` indicates all ICMP/ICMPv6 codes. If you specify all ICMP/ICMPv6 types, you must specify all codes.
  int get toPort;

  /// The security group and Amazon Web Services account ID pairs.
  _i6.BuiltList<_i5.UserIdGroupPair>? get userIdGroupPairs;
  @override
  List<Object?> get props => [
        fromPort,
        ipProtocol,
        ipRanges,
        ipv6Ranges,
        prefixListIds,
        toPort,
        userIdGroupPairs,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpPermission');
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
      'ipv6Ranges',
      ipv6Ranges,
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

class IpPermissionEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<IpPermission> {
  const IpPermissionEc2QuerySerializer() : super('IpPermission');

  @override
  Iterable<Type> get types => const [
        IpPermission,
        _$IpPermission,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpPermission deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpPermissionBuilder();
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
            result.ipRanges.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i2.IpRange)],
              ),
            ) as _i6.BuiltList<_i2.IpRange>));
          }
          break;
        case 'ipv6Ranges':
          if (value != null) {
            result.ipv6Ranges.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i3.Ipv6Range)],
              ),
            ) as _i6.BuiltList<_i3.Ipv6Range>));
          }
          break;
        case 'prefixListIds':
          if (value != null) {
            result.prefixListIds.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i4.PrefixListId)],
              ),
            ) as _i6.BuiltList<_i4.PrefixListId>));
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
            result.userIdGroupPairs.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i5.UserIdGroupPair)],
              ),
            ) as _i6.BuiltList<_i5.UserIdGroupPair>));
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
    final payload = (object as IpPermission);
    final result = <Object?>[
      const _i7.XmlElementName(
        'IpPermissionResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i7.XmlElementName('FromPort'))
      ..add(serializers.serialize(
        payload.fromPort,
        specifiedType: const FullType(int),
      ));
    if (payload.ipProtocol != null) {
      result
        ..add(const _i7.XmlElementName('IpProtocol'))
        ..add(serializers.serialize(
          payload.ipProtocol!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipRanges != null) {
      result
        ..add(const _i7.XmlElementName('IpRanges'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipRanges!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i2.IpRange)],
          ),
        ));
    }
    if (payload.ipv6Ranges != null) {
      result
        ..add(const _i7.XmlElementName('Ipv6Ranges'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipv6Ranges!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i3.Ipv6Range)],
          ),
        ));
    }
    if (payload.prefixListIds != null) {
      result
        ..add(const _i7.XmlElementName('PrefixListIds'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.prefixListIds!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i4.PrefixListId)],
          ),
        ));
    }
    result
      ..add(const _i7.XmlElementName('ToPort'))
      ..add(serializers.serialize(
        payload.toPort,
        specifiedType: const FullType(int),
      ));
    if (payload.userIdGroupPairs != null) {
      result
        ..add(const _i7.XmlElementName('Groups'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.userIdGroupPairs!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i5.UserIdGroupPair)],
          ),
        ));
    }
    return result;
  }
}
