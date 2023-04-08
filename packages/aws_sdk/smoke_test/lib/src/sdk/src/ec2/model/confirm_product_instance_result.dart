// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.confirm_product_instance_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'confirm_product_instance_result.g.dart';

abstract class ConfirmProductInstanceResult
    with
        _i1.AWSEquatable<ConfirmProductInstanceResult>
    implements
        Built<ConfirmProductInstanceResult,
            ConfirmProductInstanceResultBuilder> {
  factory ConfirmProductInstanceResult({
    String? ownerId,
    bool? return_,
  }) {
    return_ ??= false;
    return _$ConfirmProductInstanceResult._(
      ownerId: ownerId,
      return_: return_,
    );
  }

  factory ConfirmProductInstanceResult.build(
          [void Function(ConfirmProductInstanceResultBuilder) updates]) =
      _$ConfirmProductInstanceResult;

  const ConfirmProductInstanceResult._();

  /// Constructs a [ConfirmProductInstanceResult] from a [payload] and [response].
  factory ConfirmProductInstanceResult.fromResponse(
    ConfirmProductInstanceResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    ConfirmProductInstanceResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfirmProductInstanceResultBuilder b) {
    b.return_ = false;
  }

  /// The Amazon Web Services account ID of the instance owner. This is only present if the product code is attached to the instance.
  String? get ownerId;

  /// The return value of the request. Returns `true` if the specified product code is owned by the requester and associated with the specified instance.
  bool get return_;
  @override
  List<Object?> get props => [
        ownerId,
        return_,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfirmProductInstanceResult');
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'return_',
      return_,
    );
    return helper.toString();
  }
}

class ConfirmProductInstanceResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ConfirmProductInstanceResult> {
  const ConfirmProductInstanceResultEc2QuerySerializer()
      : super('ConfirmProductInstanceResult');

  @override
  Iterable<Type> get types => const [
        ConfirmProductInstanceResult,
        _$ConfirmProductInstanceResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ConfirmProductInstanceResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfirmProductInstanceResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ownerId':
          if (value != null) {
            result.ownerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
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
    final payload = (object as ConfirmProductInstanceResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ConfirmProductInstanceResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ownerId != null) {
      result
        ..add(const _i2.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        payload.return_,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
