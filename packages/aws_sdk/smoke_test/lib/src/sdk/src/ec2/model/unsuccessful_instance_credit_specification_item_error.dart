// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.unsuccessful_instance_credit_specification_item_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_instance_credit_specification_error_code.dart'
    as _i2;

part 'unsuccessful_instance_credit_specification_item_error.g.dart';

/// Information about the error for the burstable performance instance whose credit option for CPU usage was not modified.
abstract class UnsuccessfulInstanceCreditSpecificationItemError
    with
        _i1.AWSEquatable<UnsuccessfulInstanceCreditSpecificationItemError>
    implements
        Built<UnsuccessfulInstanceCreditSpecificationItemError,
            UnsuccessfulInstanceCreditSpecificationItemErrorBuilder> {
  /// Information about the error for the burstable performance instance whose credit option for CPU usage was not modified.
  factory UnsuccessfulInstanceCreditSpecificationItemError({
    _i2.UnsuccessfulInstanceCreditSpecificationErrorCode? code,
    String? message,
  }) {
    return _$UnsuccessfulInstanceCreditSpecificationItemError._(
      code: code,
      message: message,
    );
  }

  /// Information about the error for the burstable performance instance whose credit option for CPU usage was not modified.
  factory UnsuccessfulInstanceCreditSpecificationItemError.build(
      [void Function(UnsuccessfulInstanceCreditSpecificationItemErrorBuilder)
          updates]) = _$UnsuccessfulInstanceCreditSpecificationItemError;

  const UnsuccessfulInstanceCreditSpecificationItemError._();

  static const List<_i3.SmithySerializer> serializers = [
    UnsuccessfulInstanceCreditSpecificationItemErrorEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      UnsuccessfulInstanceCreditSpecificationItemErrorBuilder b) {}

  /// The error code.
  _i2.UnsuccessfulInstanceCreditSpecificationErrorCode? get code;

  /// The applicable error message.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'UnsuccessfulInstanceCreditSpecificationItemError');
    helper.add(
      'code',
      code,
    );
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class UnsuccessfulInstanceCreditSpecificationItemErrorEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        UnsuccessfulInstanceCreditSpecificationItemError> {
  const UnsuccessfulInstanceCreditSpecificationItemErrorEc2QuerySerializer()
      : super('UnsuccessfulInstanceCreditSpecificationItemError');

  @override
  Iterable<Type> get types => const [
        UnsuccessfulInstanceCreditSpecificationItemError,
        _$UnsuccessfulInstanceCreditSpecificationItemError,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  UnsuccessfulInstanceCreditSpecificationItemError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnsuccessfulInstanceCreditSpecificationItemErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'code':
          if (value != null) {
            result.code = (serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i2.UnsuccessfulInstanceCreditSpecificationErrorCode),
            ) as _i2.UnsuccessfulInstanceCreditSpecificationErrorCode);
          }
          break;
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
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
    final payload =
        (object as UnsuccessfulInstanceCreditSpecificationItemError);
    final result = <Object?>[
      const _i3.XmlElementName(
        'UnsuccessfulInstanceCreditSpecificationItemErrorResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.code != null) {
      result
        ..add(const _i3.XmlElementName('Code'))
        ..add(serializers.serialize(
          payload.code!,
          specifiedType: const FullType.nullable(
              _i2.UnsuccessfulInstanceCreditSpecificationErrorCode),
        ));
    }
    if (payload.message != null) {
      result
        ..add(const _i3.XmlElementName('Message'))
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
