// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.network_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/efa_info.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/ena_support.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/network_card_info.dart' as _i2;

part 'network_info.g.dart';

/// Describes the networking features of the instance type.
abstract class NetworkInfo
    with _i1.AWSEquatable<NetworkInfo>
    implements Built<NetworkInfo, NetworkInfoBuilder> {
  /// Describes the networking features of the instance type.
  factory NetworkInfo({
    String? networkPerformance,
    int? maximumNetworkInterfaces,
    int? maximumNetworkCards,
    int? defaultNetworkCardIndex,
    List<_i2.NetworkCardInfo>? networkCards,
    int? ipv4AddressesPerInterface,
    int? ipv6AddressesPerInterface,
    bool? ipv6Supported,
    _i3.EnaSupport? enaSupport,
    bool? efaSupported,
    _i4.EfaInfo? efaInfo,
    bool? encryptionInTransitSupported,
  }) {
    return _$NetworkInfo._(
      networkPerformance: networkPerformance,
      maximumNetworkInterfaces: maximumNetworkInterfaces,
      maximumNetworkCards: maximumNetworkCards,
      defaultNetworkCardIndex: defaultNetworkCardIndex,
      networkCards: networkCards == null ? null : _i5.BuiltList(networkCards),
      ipv4AddressesPerInterface: ipv4AddressesPerInterface,
      ipv6AddressesPerInterface: ipv6AddressesPerInterface,
      ipv6Supported: ipv6Supported,
      enaSupport: enaSupport,
      efaSupported: efaSupported,
      efaInfo: efaInfo,
      encryptionInTransitSupported: encryptionInTransitSupported,
    );
  }

  /// Describes the networking features of the instance type.
  factory NetworkInfo.build([void Function(NetworkInfoBuilder) updates]) =
      _$NetworkInfo;

  const NetworkInfo._();

  static const List<_i6.SmithySerializer> serializers = [
    NetworkInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInfoBuilder b) {}

  /// The network performance.
  String? get networkPerformance;

  /// The maximum number of network interfaces for the instance type.
  int? get maximumNetworkInterfaces;

  /// The maximum number of physical network cards that can be allocated to the instance.
  int? get maximumNetworkCards;

  /// The index of the default network card, starting at 0.
  int? get defaultNetworkCardIndex;

  /// Describes the network cards for the instance type.
  _i5.BuiltList<_i2.NetworkCardInfo>? get networkCards;

  /// The maximum number of IPv4 addresses per network interface.
  int? get ipv4AddressesPerInterface;

  /// The maximum number of IPv6 addresses per network interface.
  int? get ipv6AddressesPerInterface;

  /// Indicates whether IPv6 is supported.
  bool? get ipv6Supported;

  /// Indicates whether Elastic Network Adapter (ENA) is supported.
  _i3.EnaSupport? get enaSupport;

  /// Indicates whether Elastic Fabric Adapter (EFA) is supported.
  bool? get efaSupported;

  /// Describes the Elastic Fabric Adapters for the instance type.
  _i4.EfaInfo? get efaInfo;

  /// Indicates whether the instance type automatically encrypts in-transit traffic between instances.
  bool? get encryptionInTransitSupported;
  @override
  List<Object?> get props => [
        networkPerformance,
        maximumNetworkInterfaces,
        maximumNetworkCards,
        defaultNetworkCardIndex,
        networkCards,
        ipv4AddressesPerInterface,
        ipv6AddressesPerInterface,
        ipv6Supported,
        enaSupport,
        efaSupported,
        efaInfo,
        encryptionInTransitSupported,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkInfo');
    helper.add(
      'networkPerformance',
      networkPerformance,
    );
    helper.add(
      'maximumNetworkInterfaces',
      maximumNetworkInterfaces,
    );
    helper.add(
      'maximumNetworkCards',
      maximumNetworkCards,
    );
    helper.add(
      'defaultNetworkCardIndex',
      defaultNetworkCardIndex,
    );
    helper.add(
      'networkCards',
      networkCards,
    );
    helper.add(
      'ipv4AddressesPerInterface',
      ipv4AddressesPerInterface,
    );
    helper.add(
      'ipv6AddressesPerInterface',
      ipv6AddressesPerInterface,
    );
    helper.add(
      'ipv6Supported',
      ipv6Supported,
    );
    helper.add(
      'enaSupport',
      enaSupport,
    );
    helper.add(
      'efaSupported',
      efaSupported,
    );
    helper.add(
      'efaInfo',
      efaInfo,
    );
    helper.add(
      'encryptionInTransitSupported',
      encryptionInTransitSupported,
    );
    return helper.toString();
  }
}

class NetworkInfoEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<NetworkInfo> {
  const NetworkInfoEc2QuerySerializer() : super('NetworkInfo');

  @override
  Iterable<Type> get types => const [
        NetworkInfo,
        _$NetworkInfo,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
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
        case 'maximumNetworkCards':
          if (value != null) {
            result.maximumNetworkCards = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'defaultNetworkCardIndex':
          if (value != null) {
            result.defaultNetworkCardIndex = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'networkCards':
          if (value != null) {
            result.networkCards.replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i2.NetworkCardInfo)],
              ),
            ) as _i5.BuiltList<_i2.NetworkCardInfo>));
          }
          break;
        case 'ipv4AddressesPerInterface':
          if (value != null) {
            result.ipv4AddressesPerInterface = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'ipv6AddressesPerInterface':
          if (value != null) {
            result.ipv6AddressesPerInterface = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'ipv6Supported':
          if (value != null) {
            result.ipv6Supported = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'enaSupport':
          if (value != null) {
            result.enaSupport = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.EnaSupport),
            ) as _i3.EnaSupport);
          }
          break;
        case 'efaSupported':
          if (value != null) {
            result.efaSupported = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'efaInfo':
          if (value != null) {
            result.efaInfo.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.EfaInfo),
            ) as _i4.EfaInfo));
          }
          break;
        case 'encryptionInTransitSupported':
          if (value != null) {
            result.encryptionInTransitSupported = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
    final payload = (object as NetworkInfo);
    final result = <Object?>[
      const _i6.XmlElementName(
        'NetworkInfoResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkPerformance != null) {
      result
        ..add(const _i6.XmlElementName('NetworkPerformance'))
        ..add(serializers.serialize(
          payload.networkPerformance!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.maximumNetworkInterfaces != null) {
      result
        ..add(const _i6.XmlElementName('MaximumNetworkInterfaces'))
        ..add(serializers.serialize(
          payload.maximumNetworkInterfaces!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.maximumNetworkCards != null) {
      result
        ..add(const _i6.XmlElementName('MaximumNetworkCards'))
        ..add(serializers.serialize(
          payload.maximumNetworkCards!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.defaultNetworkCardIndex != null) {
      result
        ..add(const _i6.XmlElementName('DefaultNetworkCardIndex'))
        ..add(serializers.serialize(
          payload.defaultNetworkCardIndex!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.networkCards != null) {
      result
        ..add(const _i6.XmlElementName('NetworkCards'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.networkCards!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i2.NetworkCardInfo)],
          ),
        ));
    }
    if (payload.ipv4AddressesPerInterface != null) {
      result
        ..add(const _i6.XmlElementName('Ipv4AddressesPerInterface'))
        ..add(serializers.serialize(
          payload.ipv4AddressesPerInterface!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.ipv6AddressesPerInterface != null) {
      result
        ..add(const _i6.XmlElementName('Ipv6AddressesPerInterface'))
        ..add(serializers.serialize(
          payload.ipv6AddressesPerInterface!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.ipv6Supported != null) {
      result
        ..add(const _i6.XmlElementName('Ipv6Supported'))
        ..add(serializers.serialize(
          payload.ipv6Supported!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.enaSupport != null) {
      result
        ..add(const _i6.XmlElementName('EnaSupport'))
        ..add(serializers.serialize(
          payload.enaSupport!,
          specifiedType: const FullType.nullable(_i3.EnaSupport),
        ));
    }
    if (payload.efaSupported != null) {
      result
        ..add(const _i6.XmlElementName('EfaSupported'))
        ..add(serializers.serialize(
          payload.efaSupported!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.efaInfo != null) {
      result
        ..add(const _i6.XmlElementName('EfaInfo'))
        ..add(serializers.serialize(
          payload.efaInfo!,
          specifiedType: const FullType(_i4.EfaInfo),
        ));
    }
    if (payload.encryptionInTransitSupported != null) {
      result
        ..add(const _i6.XmlElementName('EncryptionInTransitSupported'))
        ..add(serializers.serialize(
          payload.encryptionInTransitSupported!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result;
  }
}
