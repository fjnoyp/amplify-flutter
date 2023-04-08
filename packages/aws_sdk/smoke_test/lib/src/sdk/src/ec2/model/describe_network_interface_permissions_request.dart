// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_network_interface_permissions_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_network_interface_permissions_request.g.dart';

/// Contains the parameters for DescribeNetworkInterfacePermissions.
abstract class DescribeNetworkInterfacePermissionsRequest
    with
        _i1.HttpInput<DescribeNetworkInterfacePermissionsRequest>,
        _i2.AWSEquatable<DescribeNetworkInterfacePermissionsRequest>
    implements
        Built<DescribeNetworkInterfacePermissionsRequest,
            DescribeNetworkInterfacePermissionsRequestBuilder> {
  /// Contains the parameters for DescribeNetworkInterfacePermissions.
  factory DescribeNetworkInterfacePermissionsRequest({
    List<String>? networkInterfacePermissionIds,
    List<_i3.Filter>? filters,
    String? nextToken,
    int? maxResults,
  }) {
    maxResults ??= 0;
    return _$DescribeNetworkInterfacePermissionsRequest._(
      networkInterfacePermissionIds: networkInterfacePermissionIds == null
          ? null
          : _i4.BuiltList(networkInterfacePermissionIds),
      filters: filters == null ? null : _i4.BuiltList(filters),
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  /// Contains the parameters for DescribeNetworkInterfacePermissions.
  factory DescribeNetworkInterfacePermissionsRequest.build(
      [void Function(DescribeNetworkInterfacePermissionsRequestBuilder)
          updates]) = _$DescribeNetworkInterfacePermissionsRequest;

  const DescribeNetworkInterfacePermissionsRequest._();

  factory DescribeNetworkInterfacePermissionsRequest.fromRequest(
    DescribeNetworkInterfacePermissionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeNetworkInterfacePermissionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeNetworkInterfacePermissionsRequestBuilder b) {
    b.maxResults = 0;
  }

  /// The network interface permission IDs.
  _i4.BuiltList<String>? get networkInterfacePermissionIds;

  /// One or more filters.
  ///
  /// *   `network-interface-permission.network-interface-permission-id` \- The ID of the permission.
  ///
  /// *   `network-interface-permission.network-interface-id` \- The ID of the network interface.
  ///
  /// *   `network-interface-permission.aws-account-id` \- The Amazon Web Services account ID.
  ///
  /// *   `network-interface-permission.aws-service` \- The Amazon Web Service.
  ///
  /// *   `network-interface-permission.permission` \- The type of permission (`INSTANCE-ATTACH` | `EIP-ASSOCIATE`).
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The token to request the next page of results.
  String? get nextToken;

  /// The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. If this parameter is not specified, up to 50 results are returned by default.
  int get maxResults;
  @override
  DescribeNetworkInterfacePermissionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        networkInterfacePermissionIds,
        filters,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeNetworkInterfacePermissionsRequest');
    helper.add(
      'networkInterfacePermissionIds',
      networkInterfacePermissionIds,
    );
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    return helper.toString();
  }
}

class DescribeNetworkInterfacePermissionsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeNetworkInterfacePermissionsRequest> {
  const DescribeNetworkInterfacePermissionsRequestEc2QuerySerializer()
      : super('DescribeNetworkInterfacePermissionsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkInterfacePermissionsRequest,
        _$DescribeNetworkInterfacePermissionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkInterfacePermissionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkInterfacePermissionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'NetworkInterfacePermissionId':
          if (value != null) {
            result.networkInterfacePermissionIds.replace(
                (const _i1.XmlBuiltListSerializer(
                        indexer: _i1.XmlIndexer.ec2QueryList)
                    .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'Filter':
          if (value != null) {
            result.filters.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'Filter',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Filter)],
              ),
            ) as _i4.BuiltList<_i3.Filter>));
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as DescribeNetworkInterfacePermissionsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeNetworkInterfacePermissionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInterfacePermissionIds != null) {
      result
        ..add(const _i1.XmlElementName('NetworkInterfacePermissionId'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          payload.networkInterfacePermissionIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.filters != null) {
      result
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.filters!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Filter)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        payload.maxResults,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
