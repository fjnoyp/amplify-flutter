// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_principal_id_format_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_principal_id_format_request.g.dart';

abstract class DescribePrincipalIdFormatRequest
    with
        _i1.HttpInput<DescribePrincipalIdFormatRequest>,
        _i2.AWSEquatable<DescribePrincipalIdFormatRequest>
    implements
        Built<DescribePrincipalIdFormatRequest,
            DescribePrincipalIdFormatRequestBuilder> {
  factory DescribePrincipalIdFormatRequest({
    bool? dryRun,
    List<String>? resources,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribePrincipalIdFormatRequest._(
      dryRun: dryRun,
      resources: resources == null ? null : _i3.BuiltList(resources),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribePrincipalIdFormatRequest.build(
          [void Function(DescribePrincipalIdFormatRequestBuilder) updates]) =
      _$DescribePrincipalIdFormatRequest;

  const DescribePrincipalIdFormatRequest._();

  factory DescribePrincipalIdFormatRequest.fromRequest(
    DescribePrincipalIdFormatRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribePrincipalIdFormatRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribePrincipalIdFormatRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The type of resource: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `instance` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `reservation` | `route-table` | `route-table-association` | `security-group` | `snapshot` | `subnet` | `subnet-cidr-block-association` | `volume` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`
  _i3.BuiltList<String>? get resources;

  /// The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value.
  int get maxResults;

  /// The token to request the next page of results.
  String? get nextToken;
  @override
  DescribePrincipalIdFormatRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        resources,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribePrincipalIdFormatRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'resources',
      resources,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribePrincipalIdFormatRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribePrincipalIdFormatRequest> {
  const DescribePrincipalIdFormatRequestEc2QuerySerializer()
      : super('DescribePrincipalIdFormatRequest');

  @override
  Iterable<Type> get types => const [
        DescribePrincipalIdFormatRequest,
        _$DescribePrincipalIdFormatRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribePrincipalIdFormatRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribePrincipalIdFormatRequestBuilder();
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
        case 'Resource':
          if (value != null) {
            result.resources.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
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
    final payload = (object as DescribePrincipalIdFormatRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribePrincipalIdFormatRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.resources != null) {
      result
        ..add(const _i1.XmlElementName('Resource'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.resources!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
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
    return result;
  }
}
