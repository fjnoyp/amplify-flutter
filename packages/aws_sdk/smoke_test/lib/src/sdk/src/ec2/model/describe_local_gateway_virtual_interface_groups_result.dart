// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_local_gateway_virtual_interface_groups_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_virtual_interface_group.dart'
    as _i2;

part 'describe_local_gateway_virtual_interface_groups_result.g.dart';

abstract class DescribeLocalGatewayVirtualInterfaceGroupsResult
    with
        _i1.AWSEquatable<DescribeLocalGatewayVirtualInterfaceGroupsResult>
    implements
        Built<DescribeLocalGatewayVirtualInterfaceGroupsResult,
            DescribeLocalGatewayVirtualInterfaceGroupsResultBuilder> {
  factory DescribeLocalGatewayVirtualInterfaceGroupsResult({
    List<_i2.LocalGatewayVirtualInterfaceGroup>?
        localGatewayVirtualInterfaceGroups,
    String? nextToken,
  }) {
    return _$DescribeLocalGatewayVirtualInterfaceGroupsResult._(
      localGatewayVirtualInterfaceGroups:
          localGatewayVirtualInterfaceGroups == null
              ? null
              : _i3.BuiltList(localGatewayVirtualInterfaceGroups),
      nextToken: nextToken,
    );
  }

  factory DescribeLocalGatewayVirtualInterfaceGroupsResult.build(
      [void Function(DescribeLocalGatewayVirtualInterfaceGroupsResultBuilder)
          updates]) = _$DescribeLocalGatewayVirtualInterfaceGroupsResult;

  const DescribeLocalGatewayVirtualInterfaceGroupsResult._();

  /// Constructs a [DescribeLocalGatewayVirtualInterfaceGroupsResult] from a [payload] and [response].
  factory DescribeLocalGatewayVirtualInterfaceGroupsResult.fromResponse(
    DescribeLocalGatewayVirtualInterfaceGroupsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeLocalGatewayVirtualInterfaceGroupsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeLocalGatewayVirtualInterfaceGroupsResultBuilder b) {}

  /// The virtual interface groups.
  _i3.BuiltList<_i2.LocalGatewayVirtualInterfaceGroup>?
      get localGatewayVirtualInterfaceGroups;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        localGatewayVirtualInterfaceGroups,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeLocalGatewayVirtualInterfaceGroupsResult');
    helper.add(
      'localGatewayVirtualInterfaceGroups',
      localGatewayVirtualInterfaceGroups,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeLocalGatewayVirtualInterfaceGroupsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<
        DescribeLocalGatewayVirtualInterfaceGroupsResult> {
  const DescribeLocalGatewayVirtualInterfaceGroupsResultEc2QuerySerializer()
      : super('DescribeLocalGatewayVirtualInterfaceGroupsResult');

  @override
  Iterable<Type> get types => const [
        DescribeLocalGatewayVirtualInterfaceGroupsResult,
        _$DescribeLocalGatewayVirtualInterfaceGroupsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeLocalGatewayVirtualInterfaceGroupsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLocalGatewayVirtualInterfaceGroupsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'localGatewayVirtualInterfaceGroupSet':
          if (value != null) {
            result.localGatewayVirtualInterfaceGroups
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.LocalGatewayVirtualInterfaceGroup)],
              ),
            ) as _i3.BuiltList<_i2.LocalGatewayVirtualInterfaceGroup>));
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
    final payload =
        (object as DescribeLocalGatewayVirtualInterfaceGroupsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeLocalGatewayVirtualInterfaceGroupsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.localGatewayVirtualInterfaceGroups != null) {
      result
        ..add(const _i4.XmlElementName('LocalGatewayVirtualInterfaceGroupSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.localGatewayVirtualInterfaceGroups!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.LocalGatewayVirtualInterfaceGroup)],
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
