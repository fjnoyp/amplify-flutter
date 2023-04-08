// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_client_vpn_routes_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_route.dart' as _i2;

part 'describe_client_vpn_routes_result.g.dart';

abstract class DescribeClientVpnRoutesResult
    with
        _i1.AWSEquatable<DescribeClientVpnRoutesResult>
    implements
        Built<DescribeClientVpnRoutesResult,
            DescribeClientVpnRoutesResultBuilder> {
  factory DescribeClientVpnRoutesResult({
    List<_i2.ClientVpnRoute>? routes,
    String? nextToken,
  }) {
    return _$DescribeClientVpnRoutesResult._(
      routes: routes == null ? null : _i3.BuiltList(routes),
      nextToken: nextToken,
    );
  }

  factory DescribeClientVpnRoutesResult.build(
          [void Function(DescribeClientVpnRoutesResultBuilder) updates]) =
      _$DescribeClientVpnRoutesResult;

  const DescribeClientVpnRoutesResult._();

  /// Constructs a [DescribeClientVpnRoutesResult] from a [payload] and [response].
  factory DescribeClientVpnRoutesResult.fromResponse(
    DescribeClientVpnRoutesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeClientVpnRoutesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeClientVpnRoutesResultBuilder b) {}

  /// Information about the Client VPN endpoint routes.
  _i3.BuiltList<_i2.ClientVpnRoute>? get routes;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        routes,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeClientVpnRoutesResult');
    helper.add(
      'routes',
      routes,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeClientVpnRoutesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeClientVpnRoutesResult> {
  const DescribeClientVpnRoutesResultEc2QuerySerializer()
      : super('DescribeClientVpnRoutesResult');

  @override
  Iterable<Type> get types => const [
        DescribeClientVpnRoutesResult,
        _$DescribeClientVpnRoutesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeClientVpnRoutesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeClientVpnRoutesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'routes':
          if (value != null) {
            result.routes.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ClientVpnRoute)],
              ),
            ) as _i3.BuiltList<_i2.ClientVpnRoute>));
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
    final payload = (object as DescribeClientVpnRoutesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeClientVpnRoutesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.routes != null) {
      result
        ..add(const _i4.XmlElementName('Routes'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.routes!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ClientVpnRoute)],
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
