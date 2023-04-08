// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_vpn_tunnel_options_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i10;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/ike_versions_request_list_value.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_dh_group_numbers_request_list_value.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_encryption_algorithms_request_list_value.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_integrity_algorithms_request_list_value.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_dh_group_numbers_request_list_value.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_encryption_algorithms_request_list_value.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_integrity_algorithms_request_list_value.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_tunnel_log_options_specification.dart'
    as _i9;

part 'modify_vpn_tunnel_options_specification.g.dart';

/// The Amazon Web Services Site-to-Site VPN tunnel options to modify.
abstract class ModifyVpnTunnelOptionsSpecification
    with
        _i1.AWSEquatable<ModifyVpnTunnelOptionsSpecification>
    implements
        Built<ModifyVpnTunnelOptionsSpecification,
            ModifyVpnTunnelOptionsSpecificationBuilder> {
  /// The Amazon Web Services Site-to-Site VPN tunnel options to modify.
  factory ModifyVpnTunnelOptionsSpecification({
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
    List<_i2.Phase1EncryptionAlgorithmsRequestListValue>?
        phase1EncryptionAlgorithms,
    List<_i3.Phase2EncryptionAlgorithmsRequestListValue>?
        phase2EncryptionAlgorithms,
    List<_i4.Phase1IntegrityAlgorithmsRequestListValue>?
        phase1IntegrityAlgorithms,
    List<_i5.Phase2IntegrityAlgorithmsRequestListValue>?
        phase2IntegrityAlgorithms,
    List<_i6.Phase1DhGroupNumbersRequestListValue>? phase1DhGroupNumbers,
    List<_i7.Phase2DhGroupNumbersRequestListValue>? phase2DhGroupNumbers,
    List<_i8.IkeVersionsRequestListValue>? ikeVersions,
    String? startupAction,
    _i9.VpnTunnelLogOptionsSpecification? logOptions,
  }) {
    phase1LifetimeSeconds ??= 0;
    phase2LifetimeSeconds ??= 0;
    rekeyMarginTimeSeconds ??= 0;
    rekeyFuzzPercentage ??= 0;
    replayWindowSize ??= 0;
    dpdTimeoutSeconds ??= 0;
    return _$ModifyVpnTunnelOptionsSpecification._(
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

  /// The Amazon Web Services Site-to-Site VPN tunnel options to modify.
  factory ModifyVpnTunnelOptionsSpecification.build(
          [void Function(ModifyVpnTunnelOptionsSpecificationBuilder) updates]) =
      _$ModifyVpnTunnelOptionsSpecification;

  const ModifyVpnTunnelOptionsSpecification._();

  static const List<_i11.SmithySerializer> serializers = [
    ModifyVpnTunnelOptionsSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpnTunnelOptionsSpecificationBuilder b) {
    b.phase1LifetimeSeconds = 0;
    b.phase2LifetimeSeconds = 0;
    b.rekeyMarginTimeSeconds = 0;
    b.rekeyFuzzPercentage = 0;
    b.replayWindowSize = 0;
    b.dpdTimeoutSeconds = 0;
  }

  /// The range of inside IPv4 addresses for the tunnel. Any specified CIDR blocks must be unique across all VPN connections that use the same virtual private gateway.
  ///
  /// Constraints: A size /30 CIDR block from the `169.254.0.0/16` range. The following CIDR blocks are reserved and cannot be used:
  ///
  /// *   `169.254.0.0/30`
  ///
  /// *   `169.254.1.0/30`
  ///
  /// *   `169.254.2.0/30`
  ///
  /// *   `169.254.3.0/30`
  ///
  /// *   `169.254.4.0/30`
  ///
  /// *   `169.254.5.0/30`
  ///
  /// *   `169.254.169.252/30`
  String? get tunnelInsideCidr;

  /// The range of inside IPv6 addresses for the tunnel. Any specified CIDR blocks must be unique across all VPN connections that use the same transit gateway.
  ///
  /// Constraints: A size /126 CIDR block from the local `fd00::/8` range.
  String? get tunnelInsideIpv6Cidr;

  /// The pre-shared key (PSK) to establish initial authentication between the virtual private gateway and the customer gateway.
  ///
  /// Constraints: Allowed characters are alphanumeric characters, periods (.), and underscores (_). Must be between 8 and 64 characters in length and cannot start with zero (0).
  String? get preSharedKey;

  /// The lifetime for phase 1 of the IKE negotiation, in seconds.
  ///
  /// Constraints: A value between 900 and 28,800.
  ///
  /// Default: `28800`
  int get phase1LifetimeSeconds;

  /// The lifetime for phase 2 of the IKE negotiation, in seconds.
  ///
  /// Constraints: A value between 900 and 3,600. The value must be less than the value for `Phase1LifetimeSeconds`.
  ///
  /// Default: `3600`
  int get phase2LifetimeSeconds;

  /// The margin time, in seconds, before the phase 2 lifetime expires, during which the Amazon Web Services side of the VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for `RekeyFuzzPercentage`.
  ///
  /// Constraints: A value between 60 and half of `Phase2LifetimeSeconds`.
  ///
  /// Default: `540`
  int get rekeyMarginTimeSeconds;

  /// The percentage of the rekey window (determined by `RekeyMarginTimeSeconds`) during which the rekey time is randomly selected.
  ///
  /// Constraints: A value between 0 and 100.
  ///
  /// Default: `100`
  int get rekeyFuzzPercentage;

  /// The number of packets in an IKE replay window.
  ///
  /// Constraints: A value between 64 and 2048.
  ///
  /// Default: `1024`
  int get replayWindowSize;

  /// The number of seconds after which a DPD timeout occurs.
  ///
  /// Constraints: A value greater than or equal to 30.
  ///
  /// Default: `30`
  int get dpdTimeoutSeconds;

  /// The action to take after DPD timeout occurs. Specify `restart` to restart the IKE initiation. Specify `clear` to end the IKE session.
  ///
  /// Valid Values: `clear` | `none` | `restart`
  ///
  /// Default: `clear`
  String? get dpdTimeoutAction;

  /// One or more encryption algorithms that are permitted for the VPN tunnel for phase 1 IKE negotiations.
  ///
  /// Valid values: `AES128` | `AES256` | `AES128-GCM-16` | `AES256-GCM-16`
  _i10.BuiltList<_i2.Phase1EncryptionAlgorithmsRequestListValue>?
      get phase1EncryptionAlgorithms;

  /// One or more encryption algorithms that are permitted for the VPN tunnel for phase 2 IKE negotiations.
  ///
  /// Valid values: `AES128` | `AES256` | `AES128-GCM-16` | `AES256-GCM-16`
  _i10.BuiltList<_i3.Phase2EncryptionAlgorithmsRequestListValue>?
      get phase2EncryptionAlgorithms;

  /// One or more integrity algorithms that are permitted for the VPN tunnel for phase 1 IKE negotiations.
  ///
  /// Valid values: `SHA1` | `SHA2-256` | `SHA2-384` | `SHA2-512`
  _i10.BuiltList<_i4.Phase1IntegrityAlgorithmsRequestListValue>?
      get phase1IntegrityAlgorithms;

  /// One or more integrity algorithms that are permitted for the VPN tunnel for phase 2 IKE negotiations.
  ///
  /// Valid values: `SHA1` | `SHA2-256` | `SHA2-384` | `SHA2-512`
  _i10.BuiltList<_i5.Phase2IntegrityAlgorithmsRequestListValue>?
      get phase2IntegrityAlgorithms;

  /// One or more Diffie-Hellman group numbers that are permitted for the VPN tunnel for phase 1 IKE negotiations.
  ///
  /// Valid values: `2` | `14` | `15` | `16` | `17` | `18` | `19` | `20` | `21` | `22` | `23` | `24`
  _i10.BuiltList<_i6.Phase1DhGroupNumbersRequestListValue>?
      get phase1DhGroupNumbers;

  /// One or more Diffie-Hellman group numbers that are permitted for the VPN tunnel for phase 2 IKE negotiations.
  ///
  /// Valid values: `2` | `5` | `14` | `15` | `16` | `17` | `18` | `19` | `20` | `21` | `22` | `23` | `24`
  _i10.BuiltList<_i7.Phase2DhGroupNumbersRequestListValue>?
      get phase2DhGroupNumbers;

  /// The IKE versions that are permitted for the VPN tunnel.
  ///
  /// Valid values: `ikev1` | `ikev2`
  _i10.BuiltList<_i8.IkeVersionsRequestListValue>? get ikeVersions;

  /// The action to take when the establishing the tunnel for the VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify `start` for Amazon Web Services to initiate the IKE negotiation.
  ///
  /// Valid Values: `add` | `start`
  ///
  /// Default: `add`
  String? get startupAction;

  /// Options for logging VPN tunnel activity.
  _i9.VpnTunnelLogOptionsSpecification? get logOptions;
  @override
  List<Object?> get props => [
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
    final helper =
        newBuiltValueToStringHelper('ModifyVpnTunnelOptionsSpecification');
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

class ModifyVpnTunnelOptionsSpecificationEc2QuerySerializer extends _i11
    .StructuredSmithySerializer<ModifyVpnTunnelOptionsSpecification> {
  const ModifyVpnTunnelOptionsSpecificationEc2QuerySerializer()
      : super('ModifyVpnTunnelOptionsSpecification');

  @override
  Iterable<Type> get types => const [
        ModifyVpnTunnelOptionsSpecification,
        _$ModifyVpnTunnelOptionsSpecification,
      ];
  @override
  Iterable<_i11.ShapeId> get supportedProtocols => const [
        _i11.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpnTunnelOptionsSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpnTunnelOptionsSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TunnelInsideCidr':
          if (value != null) {
            result.tunnelInsideCidr = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TunnelInsideIpv6Cidr':
          if (value != null) {
            result.tunnelInsideIpv6Cidr = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PreSharedKey':
          if (value != null) {
            result.preSharedKey = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Phase1LifetimeSeconds':
          result.phase1LifetimeSeconds = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'Phase2LifetimeSeconds':
          result.phase2LifetimeSeconds = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'RekeyMarginTimeSeconds':
          result.rekeyMarginTimeSeconds = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'RekeyFuzzPercentage':
          result.rekeyFuzzPercentage = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'ReplayWindowSize':
          result.replayWindowSize = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'DPDTimeoutSeconds':
          result.dpdTimeoutSeconds = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'DPDTimeoutAction':
          if (value != null) {
            result.dpdTimeoutAction = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Phase1EncryptionAlgorithm':
          if (value != null) {
            result.phase1EncryptionAlgorithms.replace(
                (const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i2.Phase1EncryptionAlgorithmsRequestListValue)],
              ),
            ) as _i10.BuiltList<
                    _i2.Phase1EncryptionAlgorithmsRequestListValue>));
          }
          break;
        case 'Phase2EncryptionAlgorithm':
          if (value != null) {
            result.phase2EncryptionAlgorithms.replace(
                (const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i3.Phase2EncryptionAlgorithmsRequestListValue)],
              ),
            ) as _i10.BuiltList<
                    _i3.Phase2EncryptionAlgorithmsRequestListValue>));
          }
          break;
        case 'Phase1IntegrityAlgorithm':
          if (value != null) {
            result.phase1IntegrityAlgorithms.replace(
                (const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i4.Phase1IntegrityAlgorithmsRequestListValue)],
              ),
            ) as _i10
                    .BuiltList<_i4.Phase1IntegrityAlgorithmsRequestListValue>));
          }
          break;
        case 'Phase2IntegrityAlgorithm':
          if (value != null) {
            result.phase2IntegrityAlgorithms.replace(
                (const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i5.Phase2IntegrityAlgorithmsRequestListValue)],
              ),
            ) as _i10
                    .BuiltList<_i5.Phase2IntegrityAlgorithmsRequestListValue>));
          }
          break;
        case 'Phase1DHGroupNumber':
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
                [FullType(_i6.Phase1DhGroupNumbersRequestListValue)],
              ),
            ) as _i10.BuiltList<_i6.Phase1DhGroupNumbersRequestListValue>));
          }
          break;
        case 'Phase2DHGroupNumber':
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
                [FullType(_i7.Phase2DhGroupNumbersRequestListValue)],
              ),
            ) as _i10.BuiltList<_i7.Phase2DhGroupNumbersRequestListValue>));
          }
          break;
        case 'IKEVersion':
          if (value != null) {
            result.ikeVersions.replace((const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i8.IkeVersionsRequestListValue)],
              ),
            ) as _i10.BuiltList<_i8.IkeVersionsRequestListValue>));
          }
          break;
        case 'StartupAction':
          if (value != null) {
            result.startupAction = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LogOptions':
          if (value != null) {
            result.logOptions.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i9.VpnTunnelLogOptionsSpecification),
            ) as _i9.VpnTunnelLogOptionsSpecification));
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
    final payload = (object as ModifyVpnTunnelOptionsSpecification);
    final result = <Object?>[
      const _i11.XmlElementName(
        'ModifyVpnTunnelOptionsSpecificationResponse',
        _i11.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
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
      ..add(const _i11.XmlElementName('DPDTimeoutSeconds'))
      ..add(serializers.serialize(
        payload.dpdTimeoutSeconds,
        specifiedType: const FullType(int),
      ));
    if (payload.dpdTimeoutAction != null) {
      result
        ..add(const _i11.XmlElementName('DPDTimeoutAction'))
        ..add(serializers.serialize(
          payload.dpdTimeoutAction!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.phase1EncryptionAlgorithms != null) {
      result
        ..add(const _i11.XmlElementName('Phase1EncryptionAlgorithm'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.phase1EncryptionAlgorithms!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i2.Phase1EncryptionAlgorithmsRequestListValue)],
          ),
        ));
    }
    if (payload.phase2EncryptionAlgorithms != null) {
      result
        ..add(const _i11.XmlElementName('Phase2EncryptionAlgorithm'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.phase2EncryptionAlgorithms!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i3.Phase2EncryptionAlgorithmsRequestListValue)],
          ),
        ));
    }
    if (payload.phase1IntegrityAlgorithms != null) {
      result
        ..add(const _i11.XmlElementName('Phase1IntegrityAlgorithm'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.phase1IntegrityAlgorithms!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i4.Phase1IntegrityAlgorithmsRequestListValue)],
          ),
        ));
    }
    if (payload.phase2IntegrityAlgorithms != null) {
      result
        ..add(const _i11.XmlElementName('Phase2IntegrityAlgorithm'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.phase2IntegrityAlgorithms!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i5.Phase2IntegrityAlgorithmsRequestListValue)],
          ),
        ));
    }
    if (payload.phase1DhGroupNumbers != null) {
      result
        ..add(const _i11.XmlElementName('Phase1DHGroupNumber'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.phase1DhGroupNumbers!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i6.Phase1DhGroupNumbersRequestListValue)],
          ),
        ));
    }
    if (payload.phase2DhGroupNumbers != null) {
      result
        ..add(const _i11.XmlElementName('Phase2DHGroupNumber'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.phase2DhGroupNumbers!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i7.Phase2DhGroupNumbersRequestListValue)],
          ),
        ));
    }
    if (payload.ikeVersions != null) {
      result
        ..add(const _i11.XmlElementName('IKEVersion'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ikeVersions!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i8.IkeVersionsRequestListValue)],
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
          specifiedType: const FullType(_i9.VpnTunnelLogOptionsSpecification),
        ));
    }
    return result;
  }
}
