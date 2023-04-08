// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_client_vpn_authorization_rules_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_client_vpn_authorization_rules_request.g.dart';

abstract class DescribeClientVpnAuthorizationRulesRequest
    with
        _i1.HttpInput<DescribeClientVpnAuthorizationRulesRequest>,
        _i2.AWSEquatable<DescribeClientVpnAuthorizationRulesRequest>
    implements
        Built<DescribeClientVpnAuthorizationRulesRequest,
            DescribeClientVpnAuthorizationRulesRequestBuilder> {
  factory DescribeClientVpnAuthorizationRulesRequest({
    required String clientVpnEndpointId,
    bool? dryRun,
    String? nextToken,
    List<_i3.Filter>? filters,
    int? maxResults,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeClientVpnAuthorizationRulesRequest._(
      clientVpnEndpointId: clientVpnEndpointId,
      dryRun: dryRun,
      nextToken: nextToken,
      filters: filters == null ? null : _i4.BuiltList(filters),
      maxResults: maxResults,
    );
  }

  factory DescribeClientVpnAuthorizationRulesRequest.build(
      [void Function(DescribeClientVpnAuthorizationRulesRequestBuilder)
          updates]) = _$DescribeClientVpnAuthorizationRulesRequest;

  const DescribeClientVpnAuthorizationRulesRequest._();

  factory DescribeClientVpnAuthorizationRulesRequest.fromRequest(
    DescribeClientVpnAuthorizationRulesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeClientVpnAuthorizationRulesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeClientVpnAuthorizationRulesRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// The ID of the Client VPN endpoint.
  String get clientVpnEndpointId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The token to retrieve the next page of results.
  String? get nextToken;

  /// One or more filters. Filter names and values are case-sensitive.
  ///
  /// *   `description` \- The description of the authorization rule.
  ///
  /// *   `destination-cidr` \- The CIDR of the network to which the authorization rule applies.
  ///
  /// *   `group-id` \- The ID of the Active Directory group to which the authorization rule grants access.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the nextToken value.
  int get maxResults;
  @override
  DescribeClientVpnAuthorizationRulesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        dryRun,
        nextToken,
        filters,
        maxResults,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeClientVpnAuthorizationRulesRequest');
    helper.add(
      'clientVpnEndpointId',
      clientVpnEndpointId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    return helper.toString();
  }
}

class DescribeClientVpnAuthorizationRulesRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeClientVpnAuthorizationRulesRequest> {
  const DescribeClientVpnAuthorizationRulesRequestEc2QuerySerializer()
      : super('DescribeClientVpnAuthorizationRulesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeClientVpnAuthorizationRulesRequest,
        _$DescribeClientVpnAuthorizationRulesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeClientVpnAuthorizationRulesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeClientVpnAuthorizationRulesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ClientVpnEndpointId':
          result.clientVpnEndpointId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as DescribeClientVpnAuthorizationRulesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeClientVpnAuthorizationRulesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('ClientVpnEndpointId'))
      ..add(serializers.serialize(
        payload.clientVpnEndpointId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
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
    result
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        payload.maxResults,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
