// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.phase2_integrity_algorithms_list_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'phase2_integrity_algorithms_list_value.g.dart';

/// The integrity algorithm for phase 2 IKE negotiations.
abstract class Phase2IntegrityAlgorithmsListValue
    with
        _i1.AWSEquatable<Phase2IntegrityAlgorithmsListValue>
    implements
        Built<Phase2IntegrityAlgorithmsListValue,
            Phase2IntegrityAlgorithmsListValueBuilder> {
  /// The integrity algorithm for phase 2 IKE negotiations.
  factory Phase2IntegrityAlgorithmsListValue({String? value}) {
    return _$Phase2IntegrityAlgorithmsListValue._(value: value);
  }

  /// The integrity algorithm for phase 2 IKE negotiations.
  factory Phase2IntegrityAlgorithmsListValue.build(
          [void Function(Phase2IntegrityAlgorithmsListValueBuilder) updates]) =
      _$Phase2IntegrityAlgorithmsListValue;

  const Phase2IntegrityAlgorithmsListValue._();

  static const List<_i2.SmithySerializer> serializers = [
    Phase2IntegrityAlgorithmsListValueEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(Phase2IntegrityAlgorithmsListValueBuilder b) {}

  /// The integrity algorithm.
  String? get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('Phase2IntegrityAlgorithmsListValue');
    helper.add(
      'value',
      value,
    );
    return helper.toString();
  }
}

class Phase2IntegrityAlgorithmsListValueEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<Phase2IntegrityAlgorithmsListValue> {
  const Phase2IntegrityAlgorithmsListValueEc2QuerySerializer()
      : super('Phase2IntegrityAlgorithmsListValue');

  @override
  Iterable<Type> get types => const [
        Phase2IntegrityAlgorithmsListValue,
        _$Phase2IntegrityAlgorithmsListValue,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Phase2IntegrityAlgorithmsListValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Phase2IntegrityAlgorithmsListValueBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'value':
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
    final payload = (object as Phase2IntegrityAlgorithmsListValue);
    final result = <Object?>[
      const _i2.XmlElementName(
        'Phase2IntegrityAlgorithmsListValueResponse',
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
