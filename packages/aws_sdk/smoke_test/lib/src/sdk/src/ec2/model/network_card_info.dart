// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.network_card_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'network_card_info.g.dart';

/// Describes the network card support of the instance type.
abstract class NetworkCardInfo
    with _i1.AWSEquatable<NetworkCardInfo>
    implements Built<NetworkCardInfo, NetworkCardInfoBuilder> {
  /// Describes the network card support of the instance type.
  factory NetworkCardInfo({
    int? networkCardIndex,
    String? networkPerformance,
    int? maximumNetworkInterfaces,
  }) {
    return _$NetworkCardInfo._(
      networkCardIndex: networkCardIndex,
      networkPerformance: networkPerformance,
      maximumNetworkInterfaces: maximumNetworkInterfaces,
    );
  }

  /// Describes the network card support of the instance type.
  factory NetworkCardInfo.build(
      [void Function(NetworkCardInfoBuilder) updates]) = _$NetworkCardInfo;

  const NetworkCardInfo._();

  static const List<_i2.SmithySerializer> serializers = [
    NetworkCardInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkCardInfoBuilder b) {}

  /// The index of the network card.
  int? get networkCardIndex;

  /// The network performance of the network card.
  String? get networkPerformance;

  /// The maximum number of network interfaces for the network card.
  int? get maximumNetworkInterfaces;
  @override
  List<Object?> get props => [
        networkCardIndex,
        networkPerformance,
        maximumNetworkInterfaces,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkCardInfo');
    helper.add(
      'networkCardIndex',
      networkCardIndex,
    );
    helper.add(
      'networkPerformance',
      networkPerformance,
    );
    helper.add(
      'maximumNetworkInterfaces',
      maximumNetworkInterfaces,
    );
    return helper.toString();
  }
}

class NetworkCardInfoEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<NetworkCardInfo> {
  const NetworkCardInfoEc2QuerySerializer() : super('NetworkCardInfo');

  @override
  Iterable<Type> get types => const [
        NetworkCardInfo,
        _$NetworkCardInfo,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkCardInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkCardInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkCardIndex':
          if (value != null) {
            result.networkCardIndex = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'networkPerformance':
          if (value != null) {
            result.networkPerformance = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'maximumNetworkInterfaces':
          if (value != null) {
            result.maximumNetworkInterfaces = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as NetworkCardInfo);
    final result = <Object?>[
      const _i2.XmlElementName(
        'NetworkCardInfoResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkCardIndex != null) {
      result
        ..add(const _i2.XmlElementName('NetworkCardIndex'))
        ..add(serializers.serialize(
          payload.networkCardIndex!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.networkPerformance != null) {
      result
        ..add(const _i2.XmlElementName('NetworkPerformance'))
        ..add(serializers.serialize(
          payload.networkPerformance!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.maximumNetworkInterfaces != null) {
      result
        ..add(const _i2.XmlElementName('MaximumNetworkInterfaces'))
        ..add(serializers.serialize(
          payload.maximumNetworkInterfaces!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result;
  }
}
