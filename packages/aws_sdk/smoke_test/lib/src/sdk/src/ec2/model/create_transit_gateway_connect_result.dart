// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_transit_gateway_connect_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect.dart'
    as _i2;

part 'create_transit_gateway_connect_result.g.dart';

abstract class CreateTransitGatewayConnectResult
    with
        _i1.AWSEquatable<CreateTransitGatewayConnectResult>
    implements
        Built<CreateTransitGatewayConnectResult,
            CreateTransitGatewayConnectResultBuilder> {
  factory CreateTransitGatewayConnectResult(
      {_i2.TransitGatewayConnect? transitGatewayConnect}) {
    return _$CreateTransitGatewayConnectResult._(
        transitGatewayConnect: transitGatewayConnect);
  }

  factory CreateTransitGatewayConnectResult.build(
          [void Function(CreateTransitGatewayConnectResultBuilder) updates]) =
      _$CreateTransitGatewayConnectResult;

  const CreateTransitGatewayConnectResult._();

  /// Constructs a [CreateTransitGatewayConnectResult] from a [payload] and [response].
  factory CreateTransitGatewayConnectResult.fromResponse(
    CreateTransitGatewayConnectResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateTransitGatewayConnectResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTransitGatewayConnectResultBuilder b) {}

  /// Information about the Connect attachment.
  _i2.TransitGatewayConnect? get transitGatewayConnect;
  @override
  List<Object?> get props => [transitGatewayConnect];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTransitGatewayConnectResult');
    helper.add(
      'transitGatewayConnect',
      transitGatewayConnect,
    );
    return helper.toString();
  }
}

class CreateTransitGatewayConnectResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateTransitGatewayConnectResult> {
  const CreateTransitGatewayConnectResultEc2QuerySerializer()
      : super('CreateTransitGatewayConnectResult');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayConnectResult,
        _$CreateTransitGatewayConnectResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayConnectResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayConnectResultBuilder();
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
    final payload = (object as CreateTransitGatewayConnectResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateTransitGatewayConnectResultResponse',
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
