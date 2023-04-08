// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.export_client_vpn_client_certificate_revocation_list_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/client_certificate_revocation_list_status.dart'
    as _i2;

part 'export_client_vpn_client_certificate_revocation_list_result.g.dart';

abstract class ExportClientVpnClientCertificateRevocationListResult
    with
        _i1.AWSEquatable<ExportClientVpnClientCertificateRevocationListResult>
    implements
        Built<ExportClientVpnClientCertificateRevocationListResult,
            ExportClientVpnClientCertificateRevocationListResultBuilder> {
  factory ExportClientVpnClientCertificateRevocationListResult({
    String? certificateRevocationList,
    _i2.ClientCertificateRevocationListStatus? status,
  }) {
    return _$ExportClientVpnClientCertificateRevocationListResult._(
      certificateRevocationList: certificateRevocationList,
      status: status,
    );
  }

  factory ExportClientVpnClientCertificateRevocationListResult.build(
      [void Function(
              ExportClientVpnClientCertificateRevocationListResultBuilder)
          updates]) = _$ExportClientVpnClientCertificateRevocationListResult;

  const ExportClientVpnClientCertificateRevocationListResult._();

  /// Constructs a [ExportClientVpnClientCertificateRevocationListResult] from a [payload] and [response].
  factory ExportClientVpnClientCertificateRevocationListResult.fromResponse(
    ExportClientVpnClientCertificateRevocationListResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ExportClientVpnClientCertificateRevocationListResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      ExportClientVpnClientCertificateRevocationListResultBuilder b) {}

  /// Information about the client certificate revocation list.
  String? get certificateRevocationList;

  /// The current state of the client certificate revocation list.
  _i2.ClientCertificateRevocationListStatus? get status;
  @override
  List<Object?> get props => [
        certificateRevocationList,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ExportClientVpnClientCertificateRevocationListResult');
    helper.add(
      'certificateRevocationList',
      certificateRevocationList,
    );
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class ExportClientVpnClientCertificateRevocationListResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        ExportClientVpnClientCertificateRevocationListResult> {
  const ExportClientVpnClientCertificateRevocationListResultEc2QuerySerializer()
      : super('ExportClientVpnClientCertificateRevocationListResult');

  @override
  Iterable<Type> get types => const [
        ExportClientVpnClientCertificateRevocationListResult,
        _$ExportClientVpnClientCertificateRevocationListResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ExportClientVpnClientCertificateRevocationListResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ExportClientVpnClientCertificateRevocationListResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'certificateRevocationList':
          if (value != null) {
            result.certificateRevocationList = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'status':
          if (value != null) {
            result.status.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.ClientCertificateRevocationListStatus),
            ) as _i2.ClientCertificateRevocationListStatus));
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
        (object as ExportClientVpnClientCertificateRevocationListResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ExportClientVpnClientCertificateRevocationListResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.certificateRevocationList != null) {
      result
        ..add(const _i3.XmlElementName('CertificateRevocationList'))
        ..add(serializers.serialize(
          payload.certificateRevocationList!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType:
              const FullType(_i2.ClientCertificateRevocationListStatus),
        ));
    }
    return result;
  }
}
