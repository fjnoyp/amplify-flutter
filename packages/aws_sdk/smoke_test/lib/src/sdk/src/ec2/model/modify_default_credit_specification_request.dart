// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_default_credit_specification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/unlimited_supported_instance_family.dart'
    as _i3;

part 'modify_default_credit_specification_request.g.dart';

abstract class ModifyDefaultCreditSpecificationRequest
    with
        _i1.HttpInput<ModifyDefaultCreditSpecificationRequest>,
        _i2.AWSEquatable<ModifyDefaultCreditSpecificationRequest>
    implements
        Built<ModifyDefaultCreditSpecificationRequest,
            ModifyDefaultCreditSpecificationRequestBuilder> {
  factory ModifyDefaultCreditSpecificationRequest({
    bool? dryRun,
    required _i3.UnlimitedSupportedInstanceFamily instanceFamily,
    required String cpuCredits,
  }) {
    dryRun ??= false;
    return _$ModifyDefaultCreditSpecificationRequest._(
      dryRun: dryRun,
      instanceFamily: instanceFamily,
      cpuCredits: cpuCredits,
    );
  }

  factory ModifyDefaultCreditSpecificationRequest.build(
      [void Function(ModifyDefaultCreditSpecificationRequestBuilder)
          updates]) = _$ModifyDefaultCreditSpecificationRequest;

  const ModifyDefaultCreditSpecificationRequest._();

  factory ModifyDefaultCreditSpecificationRequest.fromRequest(
    ModifyDefaultCreditSpecificationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyDefaultCreditSpecificationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyDefaultCreditSpecificationRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The instance family.
  _i3.UnlimitedSupportedInstanceFamily get instanceFamily;

  /// The credit option for CPU usage of the instance family.
  ///
  /// Valid Values: `standard` | `unlimited`
  String get cpuCredits;
  @override
  ModifyDefaultCreditSpecificationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        instanceFamily,
        cpuCredits,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyDefaultCreditSpecificationRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'instanceFamily',
      instanceFamily,
    );
    helper.add(
      'cpuCredits',
      cpuCredits,
    );
    return helper.toString();
  }
}

class ModifyDefaultCreditSpecificationRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyDefaultCreditSpecificationRequest> {
  const ModifyDefaultCreditSpecificationRequestEc2QuerySerializer()
      : super('ModifyDefaultCreditSpecificationRequest');

  @override
  Iterable<Type> get types => const [
        ModifyDefaultCreditSpecificationRequest,
        _$ModifyDefaultCreditSpecificationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyDefaultCreditSpecificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyDefaultCreditSpecificationRequestBuilder();
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
        case 'InstanceFamily':
          result.instanceFamily = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.UnlimitedSupportedInstanceFamily),
          ) as _i3.UnlimitedSupportedInstanceFamily);
          break;
        case 'CpuCredits':
          result.cpuCredits = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as ModifyDefaultCreditSpecificationRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyDefaultCreditSpecificationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('InstanceFamily'))
      ..add(serializers.serialize(
        payload.instanceFamily,
        specifiedType:
            const FullType.nullable(_i3.UnlimitedSupportedInstanceFamily),
      ));
    result
      ..add(const _i1.XmlElementName('CpuCredits'))
      ..add(serializers.serialize(
        payload.cpuCredits,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
