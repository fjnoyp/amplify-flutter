// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.icmp_type_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'icmp_type_code.g.dart';

/// Describes the ICMP type and code.
abstract class IcmpTypeCode
    with _i1.AWSEquatable<IcmpTypeCode>
    implements Built<IcmpTypeCode, IcmpTypeCodeBuilder> {
  /// Describes the ICMP type and code.
  factory IcmpTypeCode({
    int? code,
    int? type,
  }) {
    code ??= 0;
    type ??= 0;
    return _$IcmpTypeCode._(
      code: code,
      type: type,
    );
  }

  /// Describes the ICMP type and code.
  factory IcmpTypeCode.build([void Function(IcmpTypeCodeBuilder) updates]) =
      _$IcmpTypeCode;

  const IcmpTypeCode._();

  static const List<_i2.SmithySerializer> serializers = [
    IcmpTypeCodeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IcmpTypeCodeBuilder b) {
    b.code = 0;
    b.type = 0;
  }

  /// The ICMP code. A value of -1 means all codes for the specified ICMP type.
  int get code;

  /// The ICMP type. A value of -1 means all types.
  int get type;
  @override
  List<Object?> get props => [
        code,
        type,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IcmpTypeCode');
    helper.add(
      'code',
      code,
    );
    helper.add(
      'type',
      type,
    );
    return helper.toString();
  }
}

class IcmpTypeCodeEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<IcmpTypeCode> {
  const IcmpTypeCodeEc2QuerySerializer() : super('IcmpTypeCode');

  @override
  Iterable<Type> get types => const [
        IcmpTypeCode,
        _$IcmpTypeCode,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IcmpTypeCode deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IcmpTypeCodeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'code':
          result.code = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'type':
          result.type = (serializers.deserialize(
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
    final payload = (object as IcmpTypeCode);
    final result = <Object?>[
      const _i2.XmlElementName(
        'IcmpTypeCodeResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Code'))
      ..add(serializers.serialize(
        payload.code,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i2.XmlElementName('Type'))
      ..add(serializers.serialize(
        payload.type,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
