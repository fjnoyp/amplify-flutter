// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_default_credit_specification_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_family_credit_specification.dart'
    as _i2;

part 'modify_default_credit_specification_result.g.dart';

abstract class ModifyDefaultCreditSpecificationResult
    with
        _i1.AWSEquatable<ModifyDefaultCreditSpecificationResult>
    implements
        Built<ModifyDefaultCreditSpecificationResult,
            ModifyDefaultCreditSpecificationResultBuilder> {
  factory ModifyDefaultCreditSpecificationResult(
      {_i2.InstanceFamilyCreditSpecification?
          instanceFamilyCreditSpecification}) {
    return _$ModifyDefaultCreditSpecificationResult._(
        instanceFamilyCreditSpecification: instanceFamilyCreditSpecification);
  }

  factory ModifyDefaultCreditSpecificationResult.build(
      [void Function(ModifyDefaultCreditSpecificationResultBuilder)
          updates]) = _$ModifyDefaultCreditSpecificationResult;

  const ModifyDefaultCreditSpecificationResult._();

  /// Constructs a [ModifyDefaultCreditSpecificationResult] from a [payload] and [response].
  factory ModifyDefaultCreditSpecificationResult.fromResponse(
    ModifyDefaultCreditSpecificationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ModifyDefaultCreditSpecificationResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyDefaultCreditSpecificationResultBuilder b) {}

  /// The default credit option for CPU usage of the instance family.
  _i2.InstanceFamilyCreditSpecification? get instanceFamilyCreditSpecification;
  @override
  List<Object?> get props => [instanceFamilyCreditSpecification];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyDefaultCreditSpecificationResult');
    helper.add(
      'instanceFamilyCreditSpecification',
      instanceFamilyCreditSpecification,
    );
    return helper.toString();
  }
}

class ModifyDefaultCreditSpecificationResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<ModifyDefaultCreditSpecificationResult> {
  const ModifyDefaultCreditSpecificationResultEc2QuerySerializer()
      : super('ModifyDefaultCreditSpecificationResult');

  @override
  Iterable<Type> get types => const [
        ModifyDefaultCreditSpecificationResult,
        _$ModifyDefaultCreditSpecificationResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyDefaultCreditSpecificationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyDefaultCreditSpecificationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceFamilyCreditSpecification':
          if (value != null) {
            result.instanceFamilyCreditSpecification
                .replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.InstanceFamilyCreditSpecification),
            ) as _i2.InstanceFamilyCreditSpecification));
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
    final payload = (object as ModifyDefaultCreditSpecificationResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ModifyDefaultCreditSpecificationResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceFamilyCreditSpecification != null) {
      result
        ..add(const _i3.XmlElementName('InstanceFamilyCreditSpecification'))
        ..add(serializers.serialize(
          payload.instanceFamilyCreditSpecification!,
          specifiedType: const FullType(_i2.InstanceFamilyCreditSpecification),
        ));
    }
    return result;
  }
}
