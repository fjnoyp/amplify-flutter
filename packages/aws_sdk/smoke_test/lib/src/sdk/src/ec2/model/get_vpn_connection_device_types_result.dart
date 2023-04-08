// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_vpn_connection_device_types_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection_device_type.dart'
    as _i2;

part 'get_vpn_connection_device_types_result.g.dart';

abstract class GetVpnConnectionDeviceTypesResult
    with
        _i1.AWSEquatable<GetVpnConnectionDeviceTypesResult>
    implements
        Built<GetVpnConnectionDeviceTypesResult,
            GetVpnConnectionDeviceTypesResultBuilder> {
  factory GetVpnConnectionDeviceTypesResult({
    List<_i2.VpnConnectionDeviceType>? vpnConnectionDeviceTypes,
    String? nextToken,
  }) {
    return _$GetVpnConnectionDeviceTypesResult._(
      vpnConnectionDeviceTypes: vpnConnectionDeviceTypes == null
          ? null
          : _i3.BuiltList(vpnConnectionDeviceTypes),
      nextToken: nextToken,
    );
  }

  factory GetVpnConnectionDeviceTypesResult.build(
          [void Function(GetVpnConnectionDeviceTypesResultBuilder) updates]) =
      _$GetVpnConnectionDeviceTypesResult;

  const GetVpnConnectionDeviceTypesResult._();

  /// Constructs a [GetVpnConnectionDeviceTypesResult] from a [payload] and [response].
  factory GetVpnConnectionDeviceTypesResult.fromResponse(
    GetVpnConnectionDeviceTypesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetVpnConnectionDeviceTypesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetVpnConnectionDeviceTypesResultBuilder b) {}

  /// List of customer gateway devices that have a sample configuration file available for use.
  _i3.BuiltList<_i2.VpnConnectionDeviceType>? get vpnConnectionDeviceTypes;

  /// The `NextToken` value to include in a future `GetVpnConnectionDeviceTypes` request. When the results of a `GetVpnConnectionDeviceTypes` request exceed `MaxResults`, this value can be used to retrieve the next page of results. This value is null when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        vpnConnectionDeviceTypes,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetVpnConnectionDeviceTypesResult');
    helper.add(
      'vpnConnectionDeviceTypes',
      vpnConnectionDeviceTypes,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetVpnConnectionDeviceTypesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<GetVpnConnectionDeviceTypesResult> {
  const GetVpnConnectionDeviceTypesResultEc2QuerySerializer()
      : super('GetVpnConnectionDeviceTypesResult');

  @override
  Iterable<Type> get types => const [
        GetVpnConnectionDeviceTypesResult,
        _$GetVpnConnectionDeviceTypesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetVpnConnectionDeviceTypesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetVpnConnectionDeviceTypesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'vpnConnectionDeviceTypeSet':
          if (value != null) {
            result.vpnConnectionDeviceTypes
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.VpnConnectionDeviceType)],
              ),
            ) as _i3.BuiltList<_i2.VpnConnectionDeviceType>));
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
    final payload = (object as GetVpnConnectionDeviceTypesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GetVpnConnectionDeviceTypesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.vpnConnectionDeviceTypes != null) {
      result
        ..add(const _i4.XmlElementName('VpnConnectionDeviceTypeSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.vpnConnectionDeviceTypes!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.VpnConnectionDeviceType)],
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
