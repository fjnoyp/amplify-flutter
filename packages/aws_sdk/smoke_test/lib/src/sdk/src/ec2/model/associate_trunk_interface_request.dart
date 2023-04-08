// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.associate_trunk_interface_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'associate_trunk_interface_request.g.dart';

abstract class AssociateTrunkInterfaceRequest
    with
        _i1.HttpInput<AssociateTrunkInterfaceRequest>,
        _i2.AWSEquatable<AssociateTrunkInterfaceRequest>
    implements
        Built<AssociateTrunkInterfaceRequest,
            AssociateTrunkInterfaceRequestBuilder> {
  factory AssociateTrunkInterfaceRequest({
    required String branchInterfaceId,
    required String trunkInterfaceId,
    int? vlanId,
    int? greKey,
    String? clientToken,
    bool? dryRun,
  }) {
    vlanId ??= 0;
    greKey ??= 0;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientToken ??= _i2.uuid(secure: true);
    }
    dryRun ??= false;
    return _$AssociateTrunkInterfaceRequest._(
      branchInterfaceId: branchInterfaceId,
      trunkInterfaceId: trunkInterfaceId,
      vlanId: vlanId,
      greKey: greKey,
      clientToken: clientToken,
      dryRun: dryRun,
    );
  }

  factory AssociateTrunkInterfaceRequest.build(
          [void Function(AssociateTrunkInterfaceRequestBuilder) updates]) =
      _$AssociateTrunkInterfaceRequest;

  const AssociateTrunkInterfaceRequest._();

  factory AssociateTrunkInterfaceRequest.fromRequest(
    AssociateTrunkInterfaceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    AssociateTrunkInterfaceRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateTrunkInterfaceRequestBuilder b) {
    b.vlanId = 0;
    b.greKey = 0;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientToken = _i2.uuid(secure: true);
    }
    b.dryRun = false;
  }

  /// The ID of the branch network interface.
  String get branchInterfaceId;

  /// The ID of the trunk network interface.
  String get trunkInterfaceId;

  /// The ID of the VLAN. This applies to the VLAN protocol.
  int get vlanId;

  /// The application key. This applies to the GRE protocol.
  int get greKey;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  AssociateTrunkInterfaceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        branchInterfaceId,
        trunkInterfaceId,
        vlanId,
        greKey,
        clientToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssociateTrunkInterfaceRequest');
    helper.add(
      'branchInterfaceId',
      branchInterfaceId,
    );
    helper.add(
      'trunkInterfaceId',
      trunkInterfaceId,
    );
    helper.add(
      'vlanId',
      vlanId,
    );
    helper.add(
      'greKey',
      greKey,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class AssociateTrunkInterfaceRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AssociateTrunkInterfaceRequest> {
  const AssociateTrunkInterfaceRequestEc2QuerySerializer()
      : super('AssociateTrunkInterfaceRequest');

  @override
  Iterable<Type> get types => const [
        AssociateTrunkInterfaceRequest,
        _$AssociateTrunkInterfaceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateTrunkInterfaceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateTrunkInterfaceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'BranchInterfaceId':
          result.branchInterfaceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TrunkInterfaceId':
          result.trunkInterfaceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'VlanId':
          result.vlanId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'GreKey':
          result.greKey = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as AssociateTrunkInterfaceRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'AssociateTrunkInterfaceRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('BranchInterfaceId'))
      ..add(serializers.serialize(
        payload.branchInterfaceId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('TrunkInterfaceId'))
      ..add(serializers.serialize(
        payload.trunkInterfaceId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('VlanId'))
      ..add(serializers.serialize(
        payload.vlanId,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i1.XmlElementName('GreKey'))
      ..add(serializers.serialize(
        payload.greKey,
        specifiedType: const FullType(int),
      ));
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
