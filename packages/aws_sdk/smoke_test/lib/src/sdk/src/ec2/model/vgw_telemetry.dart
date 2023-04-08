// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.vgw_telemetry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/telemetry_status.dart' as _i2;

part 'vgw_telemetry.g.dart';

/// Describes telemetry for a VPN tunnel.
abstract class VgwTelemetry
    with _i1.AWSEquatable<VgwTelemetry>
    implements Built<VgwTelemetry, VgwTelemetryBuilder> {
  /// Describes telemetry for a VPN tunnel.
  factory VgwTelemetry({
    int? acceptedRouteCount,
    DateTime? lastStatusChange,
    String? outsideIpAddress,
    _i2.TelemetryStatus? status,
    String? statusMessage,
    String? certificateArn,
  }) {
    acceptedRouteCount ??= 0;
    return _$VgwTelemetry._(
      acceptedRouteCount: acceptedRouteCount,
      lastStatusChange: lastStatusChange,
      outsideIpAddress: outsideIpAddress,
      status: status,
      statusMessage: statusMessage,
      certificateArn: certificateArn,
    );
  }

  /// Describes telemetry for a VPN tunnel.
  factory VgwTelemetry.build([void Function(VgwTelemetryBuilder) updates]) =
      _$VgwTelemetry;

  const VgwTelemetry._();

  static const List<_i3.SmithySerializer> serializers = [
    VgwTelemetryEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VgwTelemetryBuilder b) {
    b.acceptedRouteCount = 0;
  }

  /// The number of accepted routes.
  int get acceptedRouteCount;

  /// The date and time of the last change in status.
  DateTime? get lastStatusChange;

  /// The Internet-routable IP address of the virtual private gateway's outside interface.
  String? get outsideIpAddress;

  /// The status of the VPN tunnel.
  _i2.TelemetryStatus? get status;

  /// If an error occurs, a description of the error.
  String? get statusMessage;

  /// The Amazon Resource Name (ARN) of the VPN tunnel endpoint certificate.
  String? get certificateArn;
  @override
  List<Object?> get props => [
        acceptedRouteCount,
        lastStatusChange,
        outsideIpAddress,
        status,
        statusMessage,
        certificateArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VgwTelemetry');
    helper.add(
      'acceptedRouteCount',
      acceptedRouteCount,
    );
    helper.add(
      'lastStatusChange',
      lastStatusChange,
    );
    helper.add(
      'outsideIpAddress',
      outsideIpAddress,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'statusMessage',
      statusMessage,
    );
    helper.add(
      'certificateArn',
      certificateArn,
    );
    return helper.toString();
  }
}

class VgwTelemetryEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VgwTelemetry> {
  const VgwTelemetryEc2QuerySerializer() : super('VgwTelemetry');

  @override
  Iterable<Type> get types => const [
        VgwTelemetry,
        _$VgwTelemetry,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VgwTelemetry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VgwTelemetryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'acceptedRouteCount':
          result.acceptedRouteCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'lastStatusChange':
          if (value != null) {
            result.lastStatusChange = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'outsideIpAddress':
          if (value != null) {
            result.outsideIpAddress = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TelemetryStatus),
            ) as _i2.TelemetryStatus);
          }
          break;
        case 'statusMessage':
          if (value != null) {
            result.statusMessage = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'certificateArn':
          if (value != null) {
            result.certificateArn = (serializers.deserialize(
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
    final payload = (object as VgwTelemetry);
    final result = <Object?>[
      const _i3.XmlElementName(
        'VgwTelemetryResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('AcceptedRouteCount'))
      ..add(serializers.serialize(
        payload.acceptedRouteCount,
        specifiedType: const FullType(int),
      ));
    if (payload.lastStatusChange != null) {
      result
        ..add(const _i3.XmlElementName('LastStatusChange'))
        ..add(serializers.serialize(
          payload.lastStatusChange!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.outsideIpAddress != null) {
      result
        ..add(const _i3.XmlElementName('OutsideIpAddress'))
        ..add(serializers.serialize(
          payload.outsideIpAddress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i2.TelemetryStatus),
        ));
    }
    if (payload.statusMessage != null) {
      result
        ..add(const _i3.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          payload.statusMessage!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.certificateArn != null) {
      result
        ..add(const _i3.XmlElementName('CertificateArn'))
        ..add(serializers.serialize(
          payload.certificateArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
