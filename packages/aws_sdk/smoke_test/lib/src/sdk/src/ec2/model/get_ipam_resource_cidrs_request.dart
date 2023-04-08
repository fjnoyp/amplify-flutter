// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_ipam_resource_cidrs_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_type.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/request_ipam_resource_tag.dart'
    as _i5;

part 'get_ipam_resource_cidrs_request.g.dart';

abstract class GetIpamResourceCidrsRequest
    with
        _i1.HttpInput<GetIpamResourceCidrsRequest>,
        _i2.AWSEquatable<GetIpamResourceCidrsRequest>
    implements
        Built<GetIpamResourceCidrsRequest, GetIpamResourceCidrsRequestBuilder> {
  factory GetIpamResourceCidrsRequest({
    bool? dryRun,
    List<_i3.Filter>? filters,
    int? maxResults,
    String? nextToken,
    required String ipamScopeId,
    String? ipamPoolId,
    String? resourceId,
    _i4.IpamResourceType? resourceType,
    _i5.RequestIpamResourceTag? resourceTag,
    String? resourceOwner,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$GetIpamResourceCidrsRequest._(
      dryRun: dryRun,
      filters: filters == null ? null : _i6.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
      ipamScopeId: ipamScopeId,
      ipamPoolId: ipamPoolId,
      resourceId: resourceId,
      resourceType: resourceType,
      resourceTag: resourceTag,
      resourceOwner: resourceOwner,
    );
  }

  factory GetIpamResourceCidrsRequest.build(
          [void Function(GetIpamResourceCidrsRequestBuilder) updates]) =
      _$GetIpamResourceCidrsRequest;

  const GetIpamResourceCidrsRequest._();

  factory GetIpamResourceCidrsRequest.fromRequest(
    GetIpamResourceCidrsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetIpamResourceCidrsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetIpamResourceCidrsRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// One or more filters for the request. For more information about filtering, see [Filtering CLI output](https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html).
  _i6.BuiltList<_i3.Filter>? get filters;

  /// The maximum number of results to return in the request.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;

  /// The ID of the scope that the resource is in.
  String get ipamScopeId;

  /// The ID of the IPAM pool that the resource is in.
  String? get ipamPoolId;

  /// The ID of the resource.
  String? get resourceId;

  /// The resource type.
  _i4.IpamResourceType? get resourceType;

  /// A tag on an IPAM resource.
  _i5.RequestIpamResourceTag? get resourceTag;

  /// The ID of the Amazon Web Services account that owns the resource.
  String? get resourceOwner;
  @override
  GetIpamResourceCidrsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        filters,
        maxResults,
        nextToken,
        ipamScopeId,
        ipamPoolId,
        resourceId,
        resourceType,
        resourceTag,
        resourceOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetIpamResourceCidrsRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'ipamScopeId',
      ipamScopeId,
    );
    helper.add(
      'ipamPoolId',
      ipamPoolId,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    helper.add(
      'resourceTag',
      resourceTag,
    );
    helper.add(
      'resourceOwner',
      resourceOwner,
    );
    return helper.toString();
  }
}

class GetIpamResourceCidrsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<GetIpamResourceCidrsRequest> {
  const GetIpamResourceCidrsRequestEc2QuerySerializer()
      : super('GetIpamResourceCidrsRequest');

  @override
  Iterable<Type> get types => const [
        GetIpamResourceCidrsRequest,
        _$GetIpamResourceCidrsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetIpamResourceCidrsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIpamResourceCidrsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
                _i6.BuiltList,
                [FullType(_i3.Filter)],
              ),
            ) as _i6.BuiltList<_i3.Filter>));
          }
          break;
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'IpamScopeId':
          result.ipamScopeId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'IpamPoolId':
          if (value != null) {
            result.ipamPoolId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ResourceId':
          if (value != null) {
            result.resourceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ResourceType':
          if (value != null) {
            result.resourceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.IpamResourceType),
            ) as _i4.IpamResourceType);
          }
          break;
        case 'ResourceTag':
          if (value != null) {
            result.resourceTag.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.RequestIpamResourceTag),
            ) as _i5.RequestIpamResourceTag));
          }
          break;
        case 'ResourceOwner':
          if (value != null) {
            result.resourceOwner = (serializers.deserialize(
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
    final payload = (object as GetIpamResourceCidrsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetIpamResourceCidrsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
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
            _i6.BuiltList,
            [FullType(_i3.Filter)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        payload.maxResults,
        specifiedType: const FullType(int),
      ));
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('IpamScopeId'))
      ..add(serializers.serialize(
        payload.ipamScopeId,
        specifiedType: const FullType(String),
      ));
    if (payload.ipamPoolId != null) {
      result
        ..add(const _i1.XmlElementName('IpamPoolId'))
        ..add(serializers.serialize(
          payload.ipamPoolId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceId != null) {
      result
        ..add(const _i1.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          payload.resourceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceType != null) {
      result
        ..add(const _i1.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          payload.resourceType!,
          specifiedType: const FullType.nullable(_i4.IpamResourceType),
        ));
    }
    if (payload.resourceTag != null) {
      result
        ..add(const _i1.XmlElementName('ResourceTag'))
        ..add(serializers.serialize(
          payload.resourceTag!,
          specifiedType: const FullType(_i5.RequestIpamResourceTag),
        ));
    }
    if (payload.resourceOwner != null) {
      result
        ..add(const _i1.XmlElementName('ResourceOwner'))
        ..add(serializers.serialize(
          payload.resourceOwner!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
