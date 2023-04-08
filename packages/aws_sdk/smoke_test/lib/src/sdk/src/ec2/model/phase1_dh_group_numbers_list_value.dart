// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.phase1_dh_group_numbers_list_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'phase1_dh_group_numbers_list_value.g.dart';

/// The Diffie-Hellmann group number for phase 1 IKE negotiations.
abstract class Phase1DhGroupNumbersListValue
    with
        _i1.AWSEquatable<Phase1DhGroupNumbersListValue>
    implements
        Built<Phase1DhGroupNumbersListValue,
            Phase1DhGroupNumbersListValueBuilder> {
  /// The Diffie-Hellmann group number for phase 1 IKE negotiations.
  factory Phase1DhGroupNumbersListValue({int? value}) {
    value ??= 0;
    return _$Phase1DhGroupNumbersListValue._(value: value);
  }

  /// The Diffie-Hellmann group number for phase 1 IKE negotiations.
  factory Phase1DhGroupNumbersListValue.build(
          [void Function(Phase1DhGroupNumbersListValueBuilder) updates]) =
      _$Phase1DhGroupNumbersListValue;

  const Phase1DhGroupNumbersListValue._();

  static const List<_i2.SmithySerializer> serializers = [
    Phase1DhGroupNumbersListValueEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(Phase1DhGroupNumbersListValueBuilder b) {
    b.value = 0;
  }

  /// The Diffie-Hellmann group number.
  int get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Phase1DhGroupNumbersListValue');
    helper.add(
      'value',
      value,
    );
    return helper.toString();
  }
}

class Phase1DhGroupNumbersListValueEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<Phase1DhGroupNumbersListValue> {
  const Phase1DhGroupNumbersListValueEc2QuerySerializer()
      : super('Phase1DhGroupNumbersListValue');

  @override
  Iterable<Type> get types => const [
        Phase1DhGroupNumbersListValue,
        _$Phase1DhGroupNumbersListValue,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Phase1DhGroupNumbersListValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Phase1DhGroupNumbersListValueBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'value':
          result.value = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as Phase1DhGroupNumbersListValue);
    final result = <Object?>[
      const _i2.XmlElementName(
        'Phase1DhGroupNumbersListValueResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Value'))
      ..add(serializers.serialize(
        payload.value,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
