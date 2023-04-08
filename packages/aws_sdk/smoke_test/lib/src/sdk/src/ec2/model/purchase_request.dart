// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.purchase_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'purchase_request.g.dart';

/// Describes a request to purchase Scheduled Instances.
abstract class PurchaseRequest
    with _i1.AWSEquatable<PurchaseRequest>
    implements Built<PurchaseRequest, PurchaseRequestBuilder> {
  /// Describes a request to purchase Scheduled Instances.
  factory PurchaseRequest({
    int? instanceCount,
    required String purchaseToken,
  }) {
    instanceCount ??= 0;
    return _$PurchaseRequest._(
      instanceCount: instanceCount,
      purchaseToken: purchaseToken,
    );
  }

  /// Describes a request to purchase Scheduled Instances.
  factory PurchaseRequest.build(
      [void Function(PurchaseRequestBuilder) updates]) = _$PurchaseRequest;

  const PurchaseRequest._();

  static const List<_i2.SmithySerializer> serializers = [
    PurchaseRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PurchaseRequestBuilder b) {
    b.instanceCount = 0;
  }

  /// The number of instances.
  int get instanceCount;

  /// The purchase token.
  String get purchaseToken;
  @override
  List<Object?> get props => [
        instanceCount,
        purchaseToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PurchaseRequest');
    helper.add(
      'instanceCount',
      instanceCount,
    );
    helper.add(
      'purchaseToken',
      purchaseToken,
    );
    return helper.toString();
  }
}

class PurchaseRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PurchaseRequest> {
  const PurchaseRequestEc2QuerySerializer() : super('PurchaseRequest');

  @override
  Iterable<Type> get types => const [
        PurchaseRequest,
        _$PurchaseRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PurchaseRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PurchaseRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'InstanceCount':
          result.instanceCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'PurchaseToken':
          result.purchaseToken = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as PurchaseRequest);
    final result = <Object?>[
      const _i2.XmlElementName(
        'PurchaseRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('InstanceCount'))
      ..add(serializers.serialize(
        payload.instanceCount,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i2.XmlElementName('PurchaseToken'))
      ..add(serializers.serialize(
        payload.purchaseToken,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
