// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_network_interfaces_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface.dart' as _i2;

part 'describe_network_interfaces_result.g.dart';

/// Contains the output of DescribeNetworkInterfaces.
abstract class DescribeNetworkInterfacesResult
    with
        _i1.AWSEquatable<DescribeNetworkInterfacesResult>
    implements
        Built<DescribeNetworkInterfacesResult,
            DescribeNetworkInterfacesResultBuilder> {
  /// Contains the output of DescribeNetworkInterfaces.
  factory DescribeNetworkInterfacesResult({
    List<_i2.NetworkInterface>? networkInterfaces,
    String? nextToken,
  }) {
    return _$DescribeNetworkInterfacesResult._(
      networkInterfaces:
          networkInterfaces == null ? null : _i3.BuiltList(networkInterfaces),
      nextToken: nextToken,
    );
  }

  /// Contains the output of DescribeNetworkInterfaces.
  factory DescribeNetworkInterfacesResult.build(
          [void Function(DescribeNetworkInterfacesResultBuilder) updates]) =
      _$DescribeNetworkInterfacesResult;

  const DescribeNetworkInterfacesResult._();

  /// Constructs a [DescribeNetworkInterfacesResult] from a [payload] and [response].
  factory DescribeNetworkInterfacesResult.fromResponse(
    DescribeNetworkInterfacesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeNetworkInterfacesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeNetworkInterfacesResultBuilder b) {}

  /// Information about one or more network interfaces.
  _i3.BuiltList<_i2.NetworkInterface>? get networkInterfaces;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        networkInterfaces,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeNetworkInterfacesResult');
    helper.add(
      'networkInterfaces',
      networkInterfaces,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeNetworkInterfacesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeNetworkInterfacesResult> {
  const DescribeNetworkInterfacesResultEc2QuerySerializer()
      : super('DescribeNetworkInterfacesResult');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkInterfacesResult,
        _$DescribeNetworkInterfacesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkInterfacesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkInterfacesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkInterfaceSet':
          if (value != null) {
            result.networkInterfaces.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.NetworkInterface)],
              ),
            ) as _i3.BuiltList<_i2.NetworkInterface>));
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
    final payload = (object as DescribeNetworkInterfacesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeNetworkInterfacesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInterfaces != null) {
      result
        ..add(const _i4.XmlElementName('NetworkInterfaceSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.networkInterfaces!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.NetworkInterface)],
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
