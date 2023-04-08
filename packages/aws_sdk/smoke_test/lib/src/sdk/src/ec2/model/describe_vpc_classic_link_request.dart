// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_vpc_classic_link_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_vpc_classic_link_request.g.dart';

abstract class DescribeVpcClassicLinkRequest
    with
        _i1.HttpInput<DescribeVpcClassicLinkRequest>,
        _i2.AWSEquatable<DescribeVpcClassicLinkRequest>
    implements
        Built<DescribeVpcClassicLinkRequest,
            DescribeVpcClassicLinkRequestBuilder> {
  factory DescribeVpcClassicLinkRequest({
    List<_i3.Filter>? filters,
    bool? dryRun,
    List<String>? vpcIds,
  }) {
    dryRun ??= false;
    return _$DescribeVpcClassicLinkRequest._(
      filters: filters == null ? null : _i4.BuiltList(filters),
      dryRun: dryRun,
      vpcIds: vpcIds == null ? null : _i4.BuiltList(vpcIds),
    );
  }

  factory DescribeVpcClassicLinkRequest.build(
          [void Function(DescribeVpcClassicLinkRequestBuilder) updates]) =
      _$DescribeVpcClassicLinkRequest;

  const DescribeVpcClassicLinkRequest._();

  factory DescribeVpcClassicLinkRequest.fromRequest(
    DescribeVpcClassicLinkRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeVpcClassicLinkRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpcClassicLinkRequestBuilder b) {
    b.dryRun = false;
  }

  /// One or more filters.
  ///
  /// *   `is-classic-link-enabled` \- Whether the VPC is enabled for ClassicLink (`true` | `false`).
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// One or more VPCs for which you want to describe the ClassicLink status.
  _i4.BuiltList<String>? get vpcIds;
  @override
  DescribeVpcClassicLinkRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        dryRun,
        vpcIds,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVpcClassicLinkRequest');
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'vpcIds',
      vpcIds,
    );
    return helper.toString();
  }
}

class DescribeVpcClassicLinkRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeVpcClassicLinkRequest> {
  const DescribeVpcClassicLinkRequestEc2QuerySerializer()
      : super('DescribeVpcClassicLinkRequest');

  @override
  Iterable<Type> get types => const [
        DescribeVpcClassicLinkRequest,
        _$DescribeVpcClassicLinkRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcClassicLinkRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcClassicLinkRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
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
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'VpcId':
          if (value != null) {
            result.vpcIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'VpcId',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
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
    final payload = (object as DescribeVpcClassicLinkRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeVpcClassicLinkRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
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
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.vpcIds != null) {
      result
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'VpcId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.vpcIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
