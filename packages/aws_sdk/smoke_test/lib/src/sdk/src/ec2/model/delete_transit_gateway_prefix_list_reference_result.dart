// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_transit_gateway_prefix_list_reference_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_prefix_list_reference.dart'
    as _i2;

part 'delete_transit_gateway_prefix_list_reference_result.g.dart';

abstract class DeleteTransitGatewayPrefixListReferenceResult
    with
        _i1.AWSEquatable<DeleteTransitGatewayPrefixListReferenceResult>
    implements
        Built<DeleteTransitGatewayPrefixListReferenceResult,
            DeleteTransitGatewayPrefixListReferenceResultBuilder> {
  factory DeleteTransitGatewayPrefixListReferenceResult(
      {_i2.TransitGatewayPrefixListReference?
          transitGatewayPrefixListReference}) {
    return _$DeleteTransitGatewayPrefixListReferenceResult._(
        transitGatewayPrefixListReference: transitGatewayPrefixListReference);
  }

  factory DeleteTransitGatewayPrefixListReferenceResult.build(
      [void Function(DeleteTransitGatewayPrefixListReferenceResultBuilder)
          updates]) = _$DeleteTransitGatewayPrefixListReferenceResult;

  const DeleteTransitGatewayPrefixListReferenceResult._();

  /// Constructs a [DeleteTransitGatewayPrefixListReferenceResult] from a [payload] and [response].
  factory DeleteTransitGatewayPrefixListReferenceResult.fromResponse(
    DeleteTransitGatewayPrefixListReferenceResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeleteTransitGatewayPrefixListReferenceResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTransitGatewayPrefixListReferenceResultBuilder b) {}

  /// Information about the deleted prefix list reference.
  _i2.TransitGatewayPrefixListReference? get transitGatewayPrefixListReference;
  @override
  List<Object?> get props => [transitGatewayPrefixListReference];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteTransitGatewayPrefixListReferenceResult');
    helper.add(
      'transitGatewayPrefixListReference',
      transitGatewayPrefixListReference,
    );
    return helper.toString();
  }
}

class DeleteTransitGatewayPrefixListReferenceResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        DeleteTransitGatewayPrefixListReferenceResult> {
  const DeleteTransitGatewayPrefixListReferenceResultEc2QuerySerializer()
      : super('DeleteTransitGatewayPrefixListReferenceResult');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayPrefixListReferenceResult,
        _$DeleteTransitGatewayPrefixListReferenceResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayPrefixListReferenceResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayPrefixListReferenceResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayPrefixListReference':
          if (value != null) {
            result.transitGatewayPrefixListReference
                .replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.TransitGatewayPrefixListReference),
            ) as _i2.TransitGatewayPrefixListReference));
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
    final payload = (object as DeleteTransitGatewayPrefixListReferenceResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteTransitGatewayPrefixListReferenceResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayPrefixListReference != null) {
      result
        ..add(const _i3.XmlElementName('TransitGatewayPrefixListReference'))
        ..add(serializers.serialize(
          payload.transitGatewayPrefixListReference!,
          specifiedType: const FullType(_i2.TransitGatewayPrefixListReference),
        ));
    }
    return result;
  }
}
