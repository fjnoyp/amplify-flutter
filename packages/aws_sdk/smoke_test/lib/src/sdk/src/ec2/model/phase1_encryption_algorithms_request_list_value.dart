// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.phase1_encryption_algorithms_request_list_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'phase1_encryption_algorithms_request_list_value.g.dart';

/// Specifies the encryption algorithm for the VPN tunnel for phase 1 IKE negotiations.
abstract class Phase1EncryptionAlgorithmsRequestListValue
    with
        _i1.AWSEquatable<Phase1EncryptionAlgorithmsRequestListValue>
    implements
        Built<Phase1EncryptionAlgorithmsRequestListValue,
            Phase1EncryptionAlgorithmsRequestListValueBuilder> {
  /// Specifies the encryption algorithm for the VPN tunnel for phase 1 IKE negotiations.
  factory Phase1EncryptionAlgorithmsRequestListValue({String? value}) {
    return _$Phase1EncryptionAlgorithmsRequestListValue._(value: value);
  }

  /// Specifies the encryption algorithm for the VPN tunnel for phase 1 IKE negotiations.
  factory Phase1EncryptionAlgorithmsRequestListValue.build(
      [void Function(Phase1EncryptionAlgorithmsRequestListValueBuilder)
          updates]) = _$Phase1EncryptionAlgorithmsRequestListValue;

  const Phase1EncryptionAlgorithmsRequestListValue._();

  static const List<_i2.SmithySerializer> serializers = [
    Phase1EncryptionAlgorithmsRequestListValueEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(Phase1EncryptionAlgorithmsRequestListValueBuilder b) {}

  /// The value for the encryption algorithm.
  String? get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'Phase1EncryptionAlgorithmsRequestListValue');
    helper.add(
      'value',
      value,
    );
    return helper.toString();
  }
}

class Phase1EncryptionAlgorithmsRequestListValueEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<Phase1EncryptionAlgorithmsRequestListValue> {
  const Phase1EncryptionAlgorithmsRequestListValueEc2QuerySerializer()
      : super('Phase1EncryptionAlgorithmsRequestListValue');

  @override
  Iterable<Type> get types => const [
        Phase1EncryptionAlgorithmsRequestListValue,
        _$Phase1EncryptionAlgorithmsRequestListValue,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Phase1EncryptionAlgorithmsRequestListValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Phase1EncryptionAlgorithmsRequestListValueBuilder();
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
    final payload = (object as Phase1EncryptionAlgorithmsRequestListValue);
    final result = <Object?>[
      const _i2.XmlElementName(
        'Phase1EncryptionAlgorithmsRequestListValueResponse',
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
