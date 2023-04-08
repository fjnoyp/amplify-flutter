// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_instance_credit_specification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_credit_specification_request.dart'
    as _i3;

part 'modify_instance_credit_specification_request.g.dart';

abstract class ModifyInstanceCreditSpecificationRequest
    with
        _i1.HttpInput<ModifyInstanceCreditSpecificationRequest>,
        _i2.AWSEquatable<ModifyInstanceCreditSpecificationRequest>
    implements
        Built<ModifyInstanceCreditSpecificationRequest,
            ModifyInstanceCreditSpecificationRequestBuilder> {
  factory ModifyInstanceCreditSpecificationRequest({
    bool? dryRun,
    String? clientToken,
    required List<_i3.InstanceCreditSpecificationRequest>
        instanceCreditSpecifications,
  }) {
    dryRun ??= false;
    return _$ModifyInstanceCreditSpecificationRequest._(
      dryRun: dryRun,
      clientToken: clientToken,
      instanceCreditSpecifications: _i4.BuiltList(instanceCreditSpecifications),
    );
  }

  factory ModifyInstanceCreditSpecificationRequest.build(
      [void Function(ModifyInstanceCreditSpecificationRequestBuilder)
          updates]) = _$ModifyInstanceCreditSpecificationRequest;

  const ModifyInstanceCreditSpecificationRequest._();

  factory ModifyInstanceCreditSpecificationRequest.fromRequest(
    ModifyInstanceCreditSpecificationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyInstanceCreditSpecificationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyInstanceCreditSpecificationRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// A unique, case-sensitive token that you provide to ensure idempotency of your modification request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Information about the credit option for CPU usage.
  _i4.BuiltList<_i3.InstanceCreditSpecificationRequest>
      get instanceCreditSpecifications;
  @override
  ModifyInstanceCreditSpecificationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        clientToken,
        instanceCreditSpecifications,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyInstanceCreditSpecificationRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'instanceCreditSpecifications',
      instanceCreditSpecifications,
    );
    return helper.toString();
  }
}

class ModifyInstanceCreditSpecificationRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyInstanceCreditSpecificationRequest> {
  const ModifyInstanceCreditSpecificationRequestEc2QuerySerializer()
      : super('ModifyInstanceCreditSpecificationRequest');

  @override
  Iterable<Type> get types => const [
        ModifyInstanceCreditSpecificationRequest,
        _$ModifyInstanceCreditSpecificationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyInstanceCreditSpecificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyInstanceCreditSpecificationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'InstanceCreditSpecification':
          result.instanceCreditSpecifications
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.InstanceCreditSpecificationRequest)],
            ),
          ) as _i4.BuiltList<_i3.InstanceCreditSpecificationRequest>));
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
    final payload = (object as ModifyInstanceCreditSpecificationRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyInstanceCreditSpecificationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
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
      ..add(const _i1.XmlElementName('InstanceCreditSpecification'))
      ..add(const _i1.XmlBuiltListSerializer(
        memberName: 'item',
        indexer: _i1.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        payload.instanceCreditSpecifications,
        specifiedType: const FullType.nullable(
          _i4.BuiltList,
          [FullType(_i3.InstanceCreditSpecificationRequest)],
        ),
      ));
    return result;
  }
}
