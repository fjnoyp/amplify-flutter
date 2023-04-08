// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_local_gateway_virtual_interfaces_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_virtual_interface.dart'
    as _i2;

part 'describe_local_gateway_virtual_interfaces_result.g.dart';

abstract class DescribeLocalGatewayVirtualInterfacesResult
    with
        _i1.AWSEquatable<DescribeLocalGatewayVirtualInterfacesResult>
    implements
        Built<DescribeLocalGatewayVirtualInterfacesResult,
            DescribeLocalGatewayVirtualInterfacesResultBuilder> {
  factory DescribeLocalGatewayVirtualInterfacesResult({
    List<_i2.LocalGatewayVirtualInterface>? localGatewayVirtualInterfaces,
    String? nextToken,
  }) {
    return _$DescribeLocalGatewayVirtualInterfacesResult._(
      localGatewayVirtualInterfaces: localGatewayVirtualInterfaces == null
          ? null
          : _i3.BuiltList(localGatewayVirtualInterfaces),
      nextToken: nextToken,
    );
  }

  factory DescribeLocalGatewayVirtualInterfacesResult.build(
      [void Function(DescribeLocalGatewayVirtualInterfacesResultBuilder)
          updates]) = _$DescribeLocalGatewayVirtualInterfacesResult;

  const DescribeLocalGatewayVirtualInterfacesResult._();

  /// Constructs a [DescribeLocalGatewayVirtualInterfacesResult] from a [payload] and [response].
  factory DescribeLocalGatewayVirtualInterfacesResult.fromResponse(
    DescribeLocalGatewayVirtualInterfacesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeLocalGatewayVirtualInterfacesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeLocalGatewayVirtualInterfacesResultBuilder b) {}

  /// Information about the virtual interfaces.
  _i3.BuiltList<_i2.LocalGatewayVirtualInterface>?
      get localGatewayVirtualInterfaces;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        localGatewayVirtualInterfaces,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeLocalGatewayVirtualInterfacesResult');
    helper.add(
      'localGatewayVirtualInterfaces',
      localGatewayVirtualInterfaces,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeLocalGatewayVirtualInterfacesResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeLocalGatewayVirtualInterfacesResult> {
  const DescribeLocalGatewayVirtualInterfacesResultEc2QuerySerializer()
      : super('DescribeLocalGatewayVirtualInterfacesResult');

  @override
  Iterable<Type> get types => const [
        DescribeLocalGatewayVirtualInterfacesResult,
        _$DescribeLocalGatewayVirtualInterfacesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeLocalGatewayVirtualInterfacesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLocalGatewayVirtualInterfacesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'localGatewayVirtualInterfaceSet':
          if (value != null) {
            result.localGatewayVirtualInterfaces
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.LocalGatewayVirtualInterface)],
              ),
            ) as _i3.BuiltList<_i2.LocalGatewayVirtualInterface>));
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
    final payload = (object as DescribeLocalGatewayVirtualInterfacesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeLocalGatewayVirtualInterfacesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.localGatewayVirtualInterfaces != null) {
      result
        ..add(const _i4.XmlElementName('LocalGatewayVirtualInterfaceSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.localGatewayVirtualInterfaces!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.LocalGatewayVirtualInterface)],
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
