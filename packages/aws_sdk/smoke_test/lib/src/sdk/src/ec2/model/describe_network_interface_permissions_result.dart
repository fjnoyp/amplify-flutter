// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_network_interface_permissions_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_permission.dart'
    as _i2;

part 'describe_network_interface_permissions_result.g.dart';

/// Contains the output for DescribeNetworkInterfacePermissions.
abstract class DescribeNetworkInterfacePermissionsResult
    with
        _i1.AWSEquatable<DescribeNetworkInterfacePermissionsResult>
    implements
        Built<DescribeNetworkInterfacePermissionsResult,
            DescribeNetworkInterfacePermissionsResultBuilder> {
  /// Contains the output for DescribeNetworkInterfacePermissions.
  factory DescribeNetworkInterfacePermissionsResult({
    List<_i2.NetworkInterfacePermission>? networkInterfacePermissions,
    String? nextToken,
  }) {
    return _$DescribeNetworkInterfacePermissionsResult._(
      networkInterfacePermissions: networkInterfacePermissions == null
          ? null
          : _i3.BuiltList(networkInterfacePermissions),
      nextToken: nextToken,
    );
  }

  /// Contains the output for DescribeNetworkInterfacePermissions.
  factory DescribeNetworkInterfacePermissionsResult.build(
      [void Function(DescribeNetworkInterfacePermissionsResultBuilder)
          updates]) = _$DescribeNetworkInterfacePermissionsResult;

  const DescribeNetworkInterfacePermissionsResult._();

  /// Constructs a [DescribeNetworkInterfacePermissionsResult] from a [payload] and [response].
  factory DescribeNetworkInterfacePermissionsResult.fromResponse(
    DescribeNetworkInterfacePermissionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeNetworkInterfacePermissionsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeNetworkInterfacePermissionsResultBuilder b) {}

  /// The network interface permissions.
  _i3.BuiltList<_i2.NetworkInterfacePermission>?
      get networkInterfacePermissions;

  /// The token to use to retrieve the next page of results.
  String? get nextToken;
  @override
  List<Object?> get props => [
        networkInterfacePermissions,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeNetworkInterfacePermissionsResult');
    helper.add(
      'networkInterfacePermissions',
      networkInterfacePermissions,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeNetworkInterfacePermissionsResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeNetworkInterfacePermissionsResult> {
  const DescribeNetworkInterfacePermissionsResultEc2QuerySerializer()
      : super('DescribeNetworkInterfacePermissionsResult');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkInterfacePermissionsResult,
        _$DescribeNetworkInterfacePermissionsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkInterfacePermissionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkInterfacePermissionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkInterfacePermissions':
          if (value != null) {
            result.networkInterfacePermissions
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.NetworkInterfacePermission)],
              ),
            ) as _i3.BuiltList<_i2.NetworkInterfacePermission>));
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
    final payload = (object as DescribeNetworkInterfacePermissionsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeNetworkInterfacePermissionsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInterfacePermissions != null) {
      result
        ..add(const _i4.XmlElementName('NetworkInterfacePermissions'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.networkInterfacePermissions!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.NetworkInterfacePermission)],
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
