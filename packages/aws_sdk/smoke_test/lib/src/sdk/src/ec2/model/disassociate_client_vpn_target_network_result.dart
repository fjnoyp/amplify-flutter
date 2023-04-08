// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disassociate_client_vpn_target_network_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/association_status.dart'
    as _i2;

part 'disassociate_client_vpn_target_network_result.g.dart';

abstract class DisassociateClientVpnTargetNetworkResult
    with
        _i1.AWSEquatable<DisassociateClientVpnTargetNetworkResult>
    implements
        Built<DisassociateClientVpnTargetNetworkResult,
            DisassociateClientVpnTargetNetworkResultBuilder> {
  factory DisassociateClientVpnTargetNetworkResult({
    String? associationId,
    _i2.AssociationStatus? status,
  }) {
    return _$DisassociateClientVpnTargetNetworkResult._(
      associationId: associationId,
      status: status,
    );
  }

  factory DisassociateClientVpnTargetNetworkResult.build(
      [void Function(DisassociateClientVpnTargetNetworkResultBuilder)
          updates]) = _$DisassociateClientVpnTargetNetworkResult;

  const DisassociateClientVpnTargetNetworkResult._();

  /// Constructs a [DisassociateClientVpnTargetNetworkResult] from a [payload] and [response].
  factory DisassociateClientVpnTargetNetworkResult.fromResponse(
    DisassociateClientVpnTargetNetworkResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DisassociateClientVpnTargetNetworkResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisassociateClientVpnTargetNetworkResultBuilder b) {}

  /// The ID of the target network association.
  String? get associationId;

  /// The current state of the target network association.
  _i2.AssociationStatus? get status;
  @override
  List<Object?> get props => [
        associationId,
        status,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisassociateClientVpnTargetNetworkResult');
    helper.add(
      'associationId',
      associationId,
    );
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class DisassociateClientVpnTargetNetworkResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DisassociateClientVpnTargetNetworkResult> {
  const DisassociateClientVpnTargetNetworkResultEc2QuerySerializer()
      : super('DisassociateClientVpnTargetNetworkResult');

  @override
  Iterable<Type> get types => const [
        DisassociateClientVpnTargetNetworkResult,
        _$DisassociateClientVpnTargetNetworkResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateClientVpnTargetNetworkResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateClientVpnTargetNetworkResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'associationId':
          if (value != null) {
            result.associationId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'status':
          if (value != null) {
            result.status.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AssociationStatus),
            ) as _i2.AssociationStatus));
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
    final payload = (object as DisassociateClientVpnTargetNetworkResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DisassociateClientVpnTargetNetworkResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.associationId != null) {
      result
        ..add(const _i3.XmlElementName('AssociationId'))
        ..add(serializers.serialize(
          payload.associationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType(_i2.AssociationStatus),
        ));
    }
    return result;
  }
}
