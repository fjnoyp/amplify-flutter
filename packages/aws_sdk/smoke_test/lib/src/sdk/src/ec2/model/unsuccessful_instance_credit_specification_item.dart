// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.unsuccessful_instance_credit_specification_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_instance_credit_specification_item_error.dart'
    as _i2;

part 'unsuccessful_instance_credit_specification_item.g.dart';

/// Describes the burstable performance instance whose credit option for CPU usage was not modified.
abstract class UnsuccessfulInstanceCreditSpecificationItem
    with
        _i1.AWSEquatable<UnsuccessfulInstanceCreditSpecificationItem>
    implements
        Built<UnsuccessfulInstanceCreditSpecificationItem,
            UnsuccessfulInstanceCreditSpecificationItemBuilder> {
  /// Describes the burstable performance instance whose credit option for CPU usage was not modified.
  factory UnsuccessfulInstanceCreditSpecificationItem({
    String? instanceId,
    _i2.UnsuccessfulInstanceCreditSpecificationItemError? error,
  }) {
    return _$UnsuccessfulInstanceCreditSpecificationItem._(
      instanceId: instanceId,
      error: error,
    );
  }

  /// Describes the burstable performance instance whose credit option for CPU usage was not modified.
  factory UnsuccessfulInstanceCreditSpecificationItem.build(
      [void Function(UnsuccessfulInstanceCreditSpecificationItemBuilder)
          updates]) = _$UnsuccessfulInstanceCreditSpecificationItem;

  const UnsuccessfulInstanceCreditSpecificationItem._();

  static const List<_i3.SmithySerializer> serializers = [
    UnsuccessfulInstanceCreditSpecificationItemEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnsuccessfulInstanceCreditSpecificationItemBuilder b) {}

  /// The ID of the instance.
  String? get instanceId;

  /// The applicable error for the burstable performance instance whose credit option for CPU usage was not modified.
  _i2.UnsuccessfulInstanceCreditSpecificationItemError? get error;
  @override
  List<Object?> get props => [
        instanceId,
        error,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'UnsuccessfulInstanceCreditSpecificationItem');
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'error',
      error,
    );
    return helper.toString();
  }
}

class UnsuccessfulInstanceCreditSpecificationItemEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<UnsuccessfulInstanceCreditSpecificationItem> {
  const UnsuccessfulInstanceCreditSpecificationItemEc2QuerySerializer()
      : super('UnsuccessfulInstanceCreditSpecificationItem');

  @override
  Iterable<Type> get types => const [
        UnsuccessfulInstanceCreditSpecificationItem,
        _$UnsuccessfulInstanceCreditSpecificationItem,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  UnsuccessfulInstanceCreditSpecificationItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnsuccessfulInstanceCreditSpecificationItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'error':
          if (value != null) {
            result.error.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i2.UnsuccessfulInstanceCreditSpecificationItemError),
            ) as _i2.UnsuccessfulInstanceCreditSpecificationItemError));
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
    final payload = (object as UnsuccessfulInstanceCreditSpecificationItem);
    final result = <Object?>[
      const _i3.XmlElementName(
        'UnsuccessfulInstanceCreditSpecificationItemResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceId != null) {
      result
        ..add(const _i3.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.error != null) {
      result
        ..add(const _i3.XmlElementName('Error'))
        ..add(serializers.serialize(
          payload.error!,
          specifiedType: const FullType(
              _i2.UnsuccessfulInstanceCreditSpecificationItemError),
        ));
    }
    return result;
  }
}
