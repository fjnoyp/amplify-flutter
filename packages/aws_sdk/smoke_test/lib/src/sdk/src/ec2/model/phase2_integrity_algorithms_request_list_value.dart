// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.phase2_integrity_algorithms_request_list_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'phase2_integrity_algorithms_request_list_value.g.dart';

/// Specifies the integrity algorithm for the VPN tunnel for phase 2 IKE negotiations.
abstract class Phase2IntegrityAlgorithmsRequestListValue
    with
        _i1.AWSEquatable<Phase2IntegrityAlgorithmsRequestListValue>
    implements
        Built<Phase2IntegrityAlgorithmsRequestListValue,
            Phase2IntegrityAlgorithmsRequestListValueBuilder> {
  /// Specifies the integrity algorithm for the VPN tunnel for phase 2 IKE negotiations.
  factory Phase2IntegrityAlgorithmsRequestListValue({String? value}) {
    return _$Phase2IntegrityAlgorithmsRequestListValue._(value: value);
  }

  /// Specifies the integrity algorithm for the VPN tunnel for phase 2 IKE negotiations.
  factory Phase2IntegrityAlgorithmsRequestListValue.build(
      [void Function(Phase2IntegrityAlgorithmsRequestListValueBuilder)
          updates]) = _$Phase2IntegrityAlgorithmsRequestListValue;

  const Phase2IntegrityAlgorithmsRequestListValue._();

  static const List<_i2.SmithySerializer> serializers = [
    Phase2IntegrityAlgorithmsRequestListValueEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(Phase2IntegrityAlgorithmsRequestListValueBuilder b) {}

  /// The integrity algorithm.
  String? get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'Phase2IntegrityAlgorithmsRequestListValue');
    helper.add(
      'value',
      value,
    );
    return helper.toString();
  }
}

class Phase2IntegrityAlgorithmsRequestListValueEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<Phase2IntegrityAlgorithmsRequestListValue> {
  const Phase2IntegrityAlgorithmsRequestListValueEc2QuerySerializer()
      : super('Phase2IntegrityAlgorithmsRequestListValue');

  @override
  Iterable<Type> get types => const [
        Phase2IntegrityAlgorithmsRequestListValue,
        _$Phase2IntegrityAlgorithmsRequestListValue,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Phase2IntegrityAlgorithmsRequestListValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Phase2IntegrityAlgorithmsRequestListValueBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Value':
          if (value != null) {
            result.value = (serializers.deserialize(
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
    final payload = (object as Phase2IntegrityAlgorithmsRequestListValue);
    final result = <Object?>[
      const _i2.XmlElementName(
        'Phase2IntegrityAlgorithmsRequestListValueResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.value != null) {
      result
        ..add(const _i2.XmlElementName('Value'))
        ..add(serializers.serialize(
          payload.value!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
