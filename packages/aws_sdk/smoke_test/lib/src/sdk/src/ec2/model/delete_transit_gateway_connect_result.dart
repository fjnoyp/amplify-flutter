// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_transit_gateway_connect_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect.dart'
    as _i2;

part 'delete_transit_gateway_connect_result.g.dart';

abstract class DeleteTransitGatewayConnectResult
    with
        _i1.AWSEquatable<DeleteTransitGatewayConnectResult>
    implements
        Built<DeleteTransitGatewayConnectResult,
            DeleteTransitGatewayConnectResultBuilder> {
  factory DeleteTransitGatewayConnectResult(
      {_i2.TransitGatewayConnect? transitGatewayConnect}) {
    return _$DeleteTransitGatewayConnectResult._(
        transitGatewayConnect: transitGatewayConnect);
  }

  factory DeleteTransitGatewayConnectResult.build(
          [void Function(DeleteTransitGatewayConnectResultBuilder) updates]) =
      _$DeleteTransitGatewayConnectResult;

  const DeleteTransitGatewayConnectResult._();

  /// Constructs a [DeleteTransitGatewayConnectResult] from a [payload] and [response].
  factory DeleteTransitGatewayConnectResult.fromResponse(
    DeleteTransitGatewayConnectResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeleteTransitGatewayConnectResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTransitGatewayConnectResultBuilder b) {}

  /// Information about the deleted Connect attachment.
  _i2.TransitGatewayConnect? get transitGatewayConnect;
  @override
  List<Object?> get props => [transitGatewayConnect];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTransitGatewayConnectResult');
    helper.add(
      'transitGatewayConnect',
      transitGatewayConnect,
    );
    return helper.toString();
  }
}

class DeleteTransitGatewayConnectResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DeleteTransitGatewayConnectResult> {
  const DeleteTransitGatewayConnectResultEc2QuerySerializer()
      : super('DeleteTransitGatewayConnectResult');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayConnectResult,
        _$DeleteTransitGatewayConnectResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayConnectResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayConnectResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayConnect':
          if (value != null) {
            result.transitGatewayConnect.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TransitGatewayConnect),
            ) as _i2.TransitGatewayConnect));
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
    final payload = (object as DeleteTransitGatewayConnectResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteTransitGatewayConnectResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayConnect != null) {
      result
        ..add(const _i3.XmlElementName('TransitGatewayConnect'))
        ..add(serializers.serialize(
          payload.transitGatewayConnect!,
          specifiedType: const FullType(_i2.TransitGatewayConnect),
        ));
    }
    return result;
  }
}
