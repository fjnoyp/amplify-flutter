// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.unsuccessful_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_item_error.dart'
    as _i2;

part 'unsuccessful_item.g.dart';

/// Information about items that were not successfully processed in a batch call.
abstract class UnsuccessfulItem
    with _i1.AWSEquatable<UnsuccessfulItem>
    implements Built<UnsuccessfulItem, UnsuccessfulItemBuilder> {
  /// Information about items that were not successfully processed in a batch call.
  factory UnsuccessfulItem({
    _i2.UnsuccessfulItemError? error,
    String? resourceId,
  }) {
    return _$UnsuccessfulItem._(
      error: error,
      resourceId: resourceId,
    );
  }

  /// Information about items that were not successfully processed in a batch call.
  factory UnsuccessfulItem.build(
      [void Function(UnsuccessfulItemBuilder) updates]) = _$UnsuccessfulItem;

  const UnsuccessfulItem._();

  static const List<_i3.SmithySerializer> serializers = [
    UnsuccessfulItemEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnsuccessfulItemBuilder b) {}

  /// Information about the error.
  _i2.UnsuccessfulItemError? get error;

  /// The ID of the resource.
  String? get resourceId;
  @override
  List<Object?> get props => [
        error,
        resourceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UnsuccessfulItem');
    helper.add(
      'error',
      error,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    return helper.toString();
  }
}

class UnsuccessfulItemEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<UnsuccessfulItem> {
  const UnsuccessfulItemEc2QuerySerializer() : super('UnsuccessfulItem');

  @override
  Iterable<Type> get types => const [
        UnsuccessfulItem,
        _$UnsuccessfulItem,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  UnsuccessfulItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnsuccessfulItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'error':
          if (value != null) {
            result.error.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.UnsuccessfulItemError),
            ) as _i2.UnsuccessfulItemError));
          }
          break;
        case 'resourceId':
          if (value != null) {
            result.resourceId = (serializers.deserialize(
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
    final payload = (object as UnsuccessfulItem);
    final result = <Object?>[
      const _i3.XmlElementName(
        'UnsuccessfulItemResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.error != null) {
      result
        ..add(const _i3.XmlElementName('Error'))
        ..add(serializers.serialize(
          payload.error!,
          specifiedType: const FullType(_i2.UnsuccessfulItemError),
        ));
    }
    if (payload.resourceId != null) {
      result
        ..add(const _i3.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          payload.resourceId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
