// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.credit_specification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'credit_specification_request.g.dart';

/// The credit option for CPU usage of a T instance.
abstract class CreditSpecificationRequest
    with _i1.AWSEquatable<CreditSpecificationRequest>
    implements
        Built<CreditSpecificationRequest, CreditSpecificationRequestBuilder> {
  /// The credit option for CPU usage of a T instance.
  factory CreditSpecificationRequest({required String cpuCredits}) {
    return _$CreditSpecificationRequest._(cpuCredits: cpuCredits);
  }

  /// The credit option for CPU usage of a T instance.
  factory CreditSpecificationRequest.build(
          [void Function(CreditSpecificationRequestBuilder) updates]) =
      _$CreditSpecificationRequest;

  const CreditSpecificationRequest._();

  static const List<_i2.SmithySerializer> serializers = [
    CreditSpecificationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreditSpecificationRequestBuilder b) {}

  /// The credit option for CPU usage of a T instance.
  ///
  /// Valid values: `standard` | `unlimited`
  String get cpuCredits;
  @override
  List<Object?> get props => [cpuCredits];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreditSpecificationRequest');
    helper.add(
      'cpuCredits',
      cpuCredits,
    );
    return helper.toString();
  }
}

class CreditSpecificationRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreditSpecificationRequest> {
  const CreditSpecificationRequestEc2QuerySerializer()
      : super('CreditSpecificationRequest');

  @override
  Iterable<Type> get types => const [
        CreditSpecificationRequest,
        _$CreditSpecificationRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreditSpecificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreditSpecificationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
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
    final payload = (object as CreditSpecificationRequest);
    final result = <Object?>[
      const _i2.XmlElementName(
        'CreditSpecificationRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('CpuCredits'))
      ..add(serializers.serialize(
        payload.cpuCredits,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
