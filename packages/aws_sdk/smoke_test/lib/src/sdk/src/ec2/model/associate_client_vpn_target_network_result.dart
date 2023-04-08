// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.associate_client_vpn_target_network_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/association_status.dart'
    as _i2;

part 'associate_client_vpn_target_network_result.g.dart';

abstract class AssociateClientVpnTargetNetworkResult
    with
        _i1.AWSEquatable<AssociateClientVpnTargetNetworkResult>
    implements
        Built<AssociateClientVpnTargetNetworkResult,
            AssociateClientVpnTargetNetworkResultBuilder> {
  factory AssociateClientVpnTargetNetworkResult({
    String? associationId,
    _i2.AssociationStatus? status,
  }) {
    return _$AssociateClientVpnTargetNetworkResult._(
      associationId: associationId,
      status: status,
    );
  }

  factory AssociateClientVpnTargetNetworkResult.build(
      [void Function(AssociateClientVpnTargetNetworkResultBuilder)
          updates]) = _$AssociateClientVpnTargetNetworkResult;

  const AssociateClientVpnTargetNetworkResult._();

  /// Constructs a [AssociateClientVpnTargetNetworkResult] from a [payload] and [response].
  factory AssociateClientVpnTargetNetworkResult.fromResponse(
    AssociateClientVpnTargetNetworkResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    AssociateClientVpnTargetNetworkResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateClientVpnTargetNetworkResultBuilder b) {}

  /// The unique ID of the target network association.
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
        newBuiltValueToStringHelper('AssociateClientVpnTargetNetworkResult');
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

class AssociateClientVpnTargetNetworkResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<AssociateClientVpnTargetNetworkResult> {
  const AssociateClientVpnTargetNetworkResultEc2QuerySerializer()
      : super('AssociateClientVpnTargetNetworkResult');

  @override
  Iterable<Type> get types => const [
        AssociateClientVpnTargetNetworkResult,
        _$AssociateClientVpnTargetNetworkResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateClientVpnTargetNetworkResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateClientVpnTargetNetworkResultBuilder();
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
    final payload = (object as AssociateClientVpnTargetNetworkResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AssociateClientVpnTargetNetworkResultResponse',
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
