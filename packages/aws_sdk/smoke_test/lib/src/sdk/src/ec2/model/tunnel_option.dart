// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.tunnel_option; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i10;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/ike_versions_list_value.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_dh_group_numbers_list_value.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_encryption_algorithms_list_value.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_integrity_algorithms_list_value.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_dh_group_numbers_list_value.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_encryption_algorithms_list_value.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_integrity_algorithms_list_value.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_tunnel_log_options.dart'
    as _i9;

part 'tunnel_option.g.dart';

/// The VPN tunnel options.
abstract class TunnelOption
    with _i1.AWSEquatable<TunnelOption>
    implements Built<TunnelOption, TunnelOptionBuilder> {
  /// The VPN tunnel options.
  factory TunnelOption({
    String? outsideIpAddress,
    String? tunnelInsideCidr,
    String? tunnelInsideIpv6Cidr,
    String? preSharedKey,
    int? phase1LifetimeSeconds,
    int? phase2LifetimeSeconds,
    int? rekeyMarginTimeSeconds,
    int? rekeyFuzzPercentage,
    int? replayWindowSize,
    int? dpdTimeoutSeconds,
    String? dpdTimeoutAction,
    List<_i2.Phase1EncryptionAlgorithmsListValue>? phase1EncryptionAlgorithms,
    List<_i3.Phase2EncryptionAlgorithmsListValue>? phase2EncryptionAlgorithms,
    List<_i4.Phase1IntegrityAlgorithmsListValue>? phase1IntegrityAlgorithms,
    List<_i5.Phase2IntegrityAlgorithmsListValue>? phase2IntegrityAlgorithms,
    List<_i6.Phase1DhGroupNumbersListValue>? phase1DhGroupNumbers,
    List<_i7.Phase2DhGroupNumbersListValue>? phase2DhGroupNumbers,
    List<_i8.IkeVersionsListValue>? ikeVersions,
    String? startupAction,
    _i9.VpnTunnelLogOptions? logOptions,
  }) {
    phase1LifetimeSeconds ??= 0;
    phase2LifetimeSeconds ??= 0;
    rekeyMarginTimeSeconds ??= 0;
    rekeyFuzzPercentage ??= 0;
    replayWindowSize ??= 0;
    dpdTimeoutSeconds ??= 0;
    return _$TunnelOption._(
      outsideIpAddress: outsideIpAddress,
      tunnelInsideCidr: tunnelInsideCidr,
      tunnelInsideIpv6Cidr: tunnelInsideIpv6Cidr,
      preSharedKey: preSharedKey,
      phase1LifetimeSeconds: phase1LifetimeSeconds,
      phase2LifetimeSeconds: phase2LifetimeSeconds,
      rekeyMarginTimeSeconds: rekeyMarginTimeSeconds,
      rekeyFuzzPercentage: rekeyFuzzPercentage,
      replayWindowSize: replayWindowSize,
      dpdTimeoutSeconds: dpdTimeoutSeconds,
      dpdTimeoutAction: dpdTimeoutAction,
      phase1EncryptionAlgorithms: phase1EncryptionAlgorithms == null
          ? null
          : _i10.BuiltList(phase1EncryptionAlgorithms),
      phase2EncryptionAlgorithms: phase2EncryptionAlgorithms == null
          ? null
          : _i10.BuiltList(phase2EncryptionAlgorithms),
      phase1IntegrityAlgorithms: phase1IntegrityAlgorithms == null
          ? null
          : _i10.BuiltList(phase1IntegrityAlgorithms),
      phase2IntegrityAlgorithms: phase2IntegrityAlgorithms == null
          ? null
          : _i10.BuiltList(phase2IntegrityAlgorithms),
      phase1DhGroupNumbers: phase1DhGroupNumbers == null
          ? null
          : _i10.BuiltList(phase1DhGroupNumbers),
      phase2DhGroupNumbers: phase2DhGroupNumbers == null
          ? null
          : _i10.BuiltList(phase2DhGroupNumbers),
      ikeVersions: ikeVersions == null ? null : _i10.BuiltList(ikeVersions),
      startupAction: startupAction,
      logOptions: logOptions,
    );
  }

  /// The VPN tunnel options.
  factory TunnelOption.build([void Function(TunnelOptionBuilder) updates]) =
      _$TunnelOption;

  const TunnelOption._();

  static const List<_i11.SmithySerializer> serializers = [
    TunnelOptionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TunnelOptionBuilder b) {
    b.phase1LifetimeSeconds = 0;
    b.phase2LifetimeSeconds = 0;
    b.rekeyMarginTimeSeconds = 0;
    b.rekeyFuzzPercentage = 0;
    b.replayWindowSize = 0;
    b.dpdTimeoutSeconds = 0;
  }

  /// The external IP address of the VPN tunnel.
  String? get outsideIpAddress;

  /// The range of inside IPv4 addresses for the tunnel.
  String? get tunnelInsideCidr;

  /// The range of inside IPv6 addresses for the tunnel.
  String? get tunnelInsideIpv6Cidr;

  /// The pre-shared key (PSK) to establish initial authentication between the virtual private gateway and the customer gateway.
  String? get preSharedKey;

  /// The lifetime for phase 1 of the IKE negotiation, in seconds.
  int get phase1LifetimeSeconds;

  /// The lifetime for phase 2 of the IKE negotiation, in seconds.
  int get phase2LifetimeSeconds;

  /// The margin time, in seconds, before the phase 2 lifetime expires, during which the Amazon Web Services side of the VPN connection performs an IKE rekey.
  int get rekeyMarginTimeSeconds;

  /// The percentage of the rekey window determined by `RekeyMarginTimeSeconds` during which the rekey time is randomly selected.
  int get rekeyFuzzPercentage;

  /// The number of packets in an IKE replay window.
  int get replayWindowSize;

  /// The number of seconds after which a DPD timeout occurs.
  int get dpdTimeoutSeconds;

  /// The action to take after a DPD timeout occurs.
  String? get dpdTimeoutAction;

  /// The permitted encryption algorithms for the VPN tunnel for phase 1 IKE negotiations.
  _i10.BuiltList<_i2.Phase1EncryptionAlgorithmsListValue>?
      get phase1EncryptionAlgorithms;

  /// The permitted encryption algorithms for the VPN tunnel for phase 2 IKE negotiations.
  _i10.BuiltList<_i3.Phase2EncryptionAlgorithmsListValue>?
      get phase2EncryptionAlgorithms;

  /// The permitted integrity algorithms for the VPN tunnel for phase 1 IKE negotiations.
  _i10.BuiltList<_i4.Phase1IntegrityAlgorithmsListValue>?
      get phase1IntegrityAlgorithms;

  /// The permitted integrity algorithms for the VPN tunnel for phase 2 IKE negotiations.
  _i10.BuiltList<_i5.Phase2IntegrityAlgorithmsListValue>?
      get phase2IntegrityAlgorithms;

  /// The permitted Diffie-Hellman group numbers for the VPN tunnel for phase 1 IKE negotiations.
  _i10.BuiltList<_i6.Phase1DhGroupNumbersListValue>? get phase1DhGroupNumbers;

  /// The permitted Diffie-Hellman group numbers for the VPN tunnel for phase 2 IKE negotiations.
  _i10.BuiltList<_i7.Phase2DhGroupNumbersListValue>? get phase2DhGroupNumbers;

  /// The IKE versions that are permitted for the VPN tunnel.
  _i10.BuiltList<_i8.IkeVersionsListValue>? get ikeVersions;

  /// The action to take when the establishing the VPN tunnels for a VPN connection.
  String? get startupAction;

  /// Options for logging VPN tunnel activity.
  _i9.VpnTunnelLogOptions? get logOptions;
  @override
  List<Object?> get props => [
        outsideIpAddress,
        tunnelInsideCidr,
        tunnelInsideIpv6Cidr,
        preSharedKey,
        phase1LifetimeSeconds,
        phase2LifetimeSeconds,
        rekeyMarginTimeSeconds,
        rekeyFuzzPercentage,
        replayWindowSize,
        dpdTimeoutSeconds,
        dpdTimeoutAction,
        phase1EncryptionAlgorithms,
        phase2EncryptionAlgorithms,
        phase1IntegrityAlgorithms,
        phase2IntegrityAlgorithms,
        phase1DhGroupNumbers,
        phase2DhGroupNumbers,
        ikeVersions,
        startupAction,
        logOptions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TunnelOption');
    helper.add(
      'outsideIpAddress',
      outsideIpAddress,
    );
    helper.add(
      'tunnelInsideCidr',
      tunnelInsideCidr,
    );
    helper.add(
      'tunnelInsideIpv6Cidr',
      tunnelInsideIpv6Cidr,
    );
    helper.add(
      'preSharedKey',
      preSharedKey,
    );
    helper.add(
      'phase1LifetimeSeconds',
      phase1LifetimeSeconds,
    );
    helper.add(
      'phase2LifetimeSeconds',
      phase2LifetimeSeconds,
    );
    helper.add(
      'rekeyMarginTimeSeconds',
      rekeyMarginTimeSeconds,
    );
    helper.add(
      'rekeyFuzzPercentage',
      rekeyFuzzPercentage,
    );
    helper.add(
      'replayWindowSize',
      replayWindowSize,
    );
    helper.add(
      'dpdTimeoutSeconds',
      dpdTimeoutSeconds,
    );
    helper.add(
      'dpdTimeoutAction',
      dpdTimeoutAction,
    );
    helper.add(
      'phase1EncryptionAlgorithms',
      phase1EncryptionAlgorithms,
    );
    helper.add(
      'phase2EncryptionAlgorithms',
      phase2EncryptionAlgorithms,
    );
    helper.add(
      'phase1IntegrityAlgorithms',
      phase1IntegrityAlgorithms,
    );
    helper.add(
      'phase2IntegrityAlgorithms',
      phase2IntegrityAlgorithms,
    );
    helper.add(
      'phase1DhGroupNumbers',
      phase1DhGroupNumbers,
    );
    helper.add(
      'phase2DhGroupNumbers',
      phase2DhGroupNumbers,
    );
    helper.add(
      'ikeVersions',
      ikeVersions,
    );
    helper.add(
      'startupAction',
      startupAction,
    );
    helper.add(
      'logOptions',
      logOptions,
    );
    return helper.toString();
  }
}

class TunnelOptionEc2QuerySerializer
    extends _i11.StructuredSmithySerializer<TunnelOption> {
  const TunnelOptionEc2QuerySerializer() : super('TunnelOption');

  @override
  Iterable<Type> get types => const [
        TunnelOption,
        _$TunnelOption,
      ];
  @override
  Iterable<_i11.ShapeId> get supportedProtocols => const [
        _i11.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TunnelOption deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TunnelOptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'outsideIpAddress':
          if (value != null) {
            result.outsideIpAddress = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tunnelInsideCidr':
          if (value != null) {
            result.tunnelInsideCidr = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tunnelInsideIpv6Cidr':
          if (value != null) {
            result.tunnelInsideIpv6Cidr = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'preSharedKey':
          if (value != null) {
            result.preSharedKey = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'phase1LifetimeSeconds':
          result.phase1LifetimeSeconds = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'phase2LifetimeSeconds':
          result.phase2LifetimeSeconds = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'rekeyMarginTimeSeconds':
          result.rekeyMarginTimeSeconds = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'rekeyFuzzPercentage':
          result.rekeyFuzzPercentage = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'replayWindowSize':
          result.replayWindowSize = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'dpdTimeoutSeconds':
          result.dpdTimeoutSeconds = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'dpdTimeoutAction':
          if (value != null) {
            result.dpdTimeoutAction = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'phase1EncryptionAlgorithmSet':
          if (value != null) {
            result.phase1EncryptionAlgorithms
                .replace((const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i2.Phase1EncryptionAlgorithmsListValue)],
              ),
            ) as _i10.BuiltList<_i2.Phase1EncryptionAlgorithmsListValue>));
          }
          break;
        case 'phase2EncryptionAlgorithmSet':
          if (value != null) {
            result.phase2EncryptionAlgorithms
                .replace((const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i3.Phase2EncryptionAlgorithmsListValue)],
              ),
            ) as _i10.BuiltList<_i3.Phase2EncryptionAlgorithmsListValue>));
          }
          break;
        case 'phase1IntegrityAlgorithmSet':
          if (value != null) {
            result.phase1IntegrityAlgorithms
                .replace((const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i4.Phase1IntegrityAlgorithmsListValue)],
              ),
            ) as _i10.BuiltList<_i4.Phase1IntegrityAlgorithmsListValue>));
          }
          break;
        case 'phase2IntegrityAlgorithmSet':
          if (value != null) {
            result.phase2IntegrityAlgorithms
                .replace((const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i5.Phase2IntegrityAlgorithmsListValue)],
              ),
            ) as _i10.BuiltList<_i5.Phase2IntegrityAlgorithmsListValue>));
          }
          break;
        case 'phase1DHGroupNumberSet':
          if (value != null) {
            result.phase1DhGroupNumbers
                .replace((const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i6.Phase1DhGroupNumbersListValue)],
              ),
            ) as _i10.BuiltList<_i6.Phase1DhGroupNumbersListValue>));
          }
          break;
        case 'phase2DHGroupNumberSet':
          if (value != null) {
            result.phase2DhGroupNumbers
                .replace((const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i7.Phase2DhGroupNumbersListValue)],
              ),
            ) as _i10.BuiltList<_i7.Phase2DhGroupNumbersListValue>));
          }
          break;
        case 'ikeVersionSet':
          if (value != null) {
            result.ikeVersions.replace((const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i8.IkeVersionsListValue)],
              ),
            ) as _i10.BuiltList<_i8.IkeVersionsListValue>));
          }
          break;
        case 'startupAction':
          if (value != null) {
            result.startupAction = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'logOptions':
          if (value != null) {
            result.logOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i9.VpnTunnelLogOptions),
            ) as _i9.VpnTunnelLogOptions));
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
    final payload = (object as TunnelOption);
    final result = <Object?>[
      const _i11.XmlElementName(
        'TunnelOptionResponse',
        _i11.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.outsideIpAddress != null) {
      result
        ..add(const _i11.XmlElementName('OutsideIpAddress'))
        ..add(serializers.serialize(
          payload.outsideIpAddress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tunnelInsideCidr != null) {
      result
        ..add(const _i11.XmlElementName('TunnelInsideCidr'))
        ..add(serializers.serialize(
          payload.tunnelInsideCidr!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tunnelInsideIpv6Cidr != null) {
      result
        ..add(const _i11.XmlElementName('TunnelInsideIpv6Cidr'))
        ..add(serializers.serialize(
          payload.tunnelInsideIpv6Cidr!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.preSharedKey != null) {
      result
        ..add(const _i11.XmlElementName('PreSharedKey'))
        ..add(serializers.serialize(
          payload.preSharedKey!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i11.XmlElementName('Phase1LifetimeSeconds'))
      ..add(serializers.serialize(
        payload.phase1LifetimeSeconds,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i11.XmlElementName('Phase2LifetimeSeconds'))
      ..add(serializers.serialize(
        payload.phase2LifetimeSeconds,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i11.XmlElementName('RekeyMarginTimeSeconds'))
      ..add(serializers.serialize(
        payload.rekeyMarginTimeSeconds,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i11.XmlElementName('RekeyFuzzPercentage'))
      ..add(serializers.serialize(
        payload.rekeyFuzzPercentage,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i11.XmlElementName('ReplayWindowSize'))
      ..add(serializers.serialize(
        payload.replayWindowSize,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i11.XmlElementName('DpdTimeoutSeconds'))
      ..add(serializers.serialize(
        payload.dpdTimeoutSeconds,
        specifiedType: const FullType(int),
      ));
    if (payload.dpdTimeoutAction != null) {
      result
        ..add(const _i11.XmlElementName('DpdTimeoutAction'))
        ..add(serializers.serialize(
          payload.dpdTimeoutAction!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.phase1EncryptionAlgorithms != null) {
      result
        ..add(const _i11.XmlElementName('Phase1EncryptionAlgorithmSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.phase1EncryptionAlgorithms!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i2.Phase1EncryptionAlgorithmsListValue)],
          ),
        ));
    }
    if (payload.phase2EncryptionAlgorithms != null) {
      result
        ..add(const _i11.XmlElementName('Phase2EncryptionAlgorithmSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.phase2EncryptionAlgorithms!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i3.Phase2EncryptionAlgorithmsListValue)],
          ),
        ));
    }
    if (payload.phase1IntegrityAlgorithms != null) {
      result
        ..add(const _i11.XmlElementName('Phase1IntegrityAlgorithmSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.phase1IntegrityAlgorithms!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i4.Phase1IntegrityAlgorithmsListValue)],
          ),
        ));
    }
    if (payload.phase2IntegrityAlgorithms != null) {
      result
        ..add(const _i11.XmlElementName('Phase2IntegrityAlgorithmSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.phase2IntegrityAlgorithms!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i5.Phase2IntegrityAlgorithmsListValue)],
          ),
        ));
    }
    if (payload.phase1DhGroupNumbers != null) {
      result
        ..add(const _i11.XmlElementName('Phase1DHGroupNumberSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.phase1DhGroupNumbers!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i6.Phase1DhGroupNumbersListValue)],
          ),
        ));
    }
    if (payload.phase2DhGroupNumbers != null) {
      result
        ..add(const _i11.XmlElementName('Phase2DHGroupNumberSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.phase2DhGroupNumbers!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i7.Phase2DhGroupNumbersListValue)],
          ),
        ));
    }
    if (payload.ikeVersions != null) {
      result
        ..add(const _i11.XmlElementName('IkeVersionSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ikeVersions!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i8.IkeVersionsListValue)],
          ),
        ));
    }
    if (payload.startupAction != null) {
      result
        ..add(const _i11.XmlElementName('StartupAction'))
        ..add(serializers.serialize(
          payload.startupAction!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.logOptions != null) {
      result
        ..add(const _i11.XmlElementName('LogOptions'))
        ..add(serializers.serialize(
          payload.logOptions!,
          specifiedType: const FullType(_i9.VpnTunnelLogOptions),
        ));
    }
    return result;
  }
}
