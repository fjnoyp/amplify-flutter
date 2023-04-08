// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_instance_capacity_reservation_attributes_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'modify_instance_capacity_reservation_attributes_result.g.dart';

abstract class ModifyInstanceCapacityReservationAttributesResult
    with
        _i1.AWSEquatable<ModifyInstanceCapacityReservationAttributesResult>
    implements
        Built<ModifyInstanceCapacityReservationAttributesResult,
            ModifyInstanceCapacityReservationAttributesResultBuilder> {
  factory ModifyInstanceCapacityReservationAttributesResult({bool? return_}) {
    return_ ??= false;
    return _$ModifyInstanceCapacityReservationAttributesResult._(
        return_: return_);
  }

  factory ModifyInstanceCapacityReservationAttributesResult.build(
      [void Function(ModifyInstanceCapacityReservationAttributesResultBuilder)
          updates]) = _$ModifyInstanceCapacityReservationAttributesResult;

  const ModifyInstanceCapacityReservationAttributesResult._();

  /// Constructs a [ModifyInstanceCapacityReservationAttributesResult] from a [payload] and [response].
  factory ModifyInstanceCapacityReservationAttributesResult.fromResponse(
    ModifyInstanceCapacityReservationAttributesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    ModifyInstanceCapacityReservationAttributesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      ModifyInstanceCapacityReservationAttributesResultBuilder b) {
    b.return_ = false;
  }

  /// Returns `true` if the request succeeds; otherwise, it returns an error.
  bool get return_;
  @override
  List<Object?> get props => [return_];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ModifyInstanceCapacityReservationAttributesResult');
    helper.add(
      'return_',
      return_,
    );
    return helper.toString();
  }
}

class ModifyInstanceCapacityReservationAttributesResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        ModifyInstanceCapacityReservationAttributesResult> {
  const ModifyInstanceCapacityReservationAttributesResultEc2QuerySerializer()
      : super('ModifyInstanceCapacityReservationAttributesResult');

  @override
  Iterable<Type> get types => const [
        ModifyInstanceCapacityReservationAttributesResult,
        _$ModifyInstanceCapacityReservationAttributesResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyInstanceCapacityReservationAttributesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyInstanceCapacityReservationAttributesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'return':
          result.return_ = (serializers.deserialize(
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
    final payload =
        (object as ModifyInstanceCapacityReservationAttributesResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ModifyInstanceCapacityReservationAttributesResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        payload.return_,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
