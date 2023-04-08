// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_transit_gateway_policy_table_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table.dart'
    as _i2;

part 'create_transit_gateway_policy_table_result.g.dart';

abstract class CreateTransitGatewayPolicyTableResult
    with
        _i1.AWSEquatable<CreateTransitGatewayPolicyTableResult>
    implements
        Built<CreateTransitGatewayPolicyTableResult,
            CreateTransitGatewayPolicyTableResultBuilder> {
  factory CreateTransitGatewayPolicyTableResult(
      {_i2.TransitGatewayPolicyTable? transitGatewayPolicyTable}) {
    return _$CreateTransitGatewayPolicyTableResult._(
        transitGatewayPolicyTable: transitGatewayPolicyTable);
  }

  factory CreateTransitGatewayPolicyTableResult.build(
      [void Function(CreateTransitGatewayPolicyTableResultBuilder)
          updates]) = _$CreateTransitGatewayPolicyTableResult;

  const CreateTransitGatewayPolicyTableResult._();

  /// Constructs a [CreateTransitGatewayPolicyTableResult] from a [payload] and [response].
  factory CreateTransitGatewayPolicyTableResult.fromResponse(
    CreateTransitGatewayPolicyTableResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateTransitGatewayPolicyTableResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTransitGatewayPolicyTableResultBuilder b) {}

  /// Describes the created transit gateway policy table.
  _i2.TransitGatewayPolicyTable? get transitGatewayPolicyTable;
  @override
  List<Object?> get props => [transitGatewayPolicyTable];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTransitGatewayPolicyTableResult');
    helper.add(
      'transitGatewayPolicyTable',
      transitGatewayPolicyTable,
    );
    return helper.toString();
  }
}

class CreateTransitGatewayPolicyTableResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<CreateTransitGatewayPolicyTableResult> {
  const CreateTransitGatewayPolicyTableResultEc2QuerySerializer()
      : super('CreateTransitGatewayPolicyTableResult');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayPolicyTableResult,
        _$CreateTransitGatewayPolicyTableResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayPolicyTableResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayPolicyTableResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayPolicyTable':
          if (value != null) {
            result.transitGatewayPolicyTable.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TransitGatewayPolicyTable),
            ) as _i2.TransitGatewayPolicyTable));
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
    final payload = (object as CreateTransitGatewayPolicyTableResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateTransitGatewayPolicyTableResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayPolicyTable != null) {
      result
        ..add(const _i3.XmlElementName('TransitGatewayPolicyTable'))
        ..add(serializers.serialize(
          payload.transitGatewayPolicyTable!,
          specifiedType: const FullType(_i2.TransitGatewayPolicyTable),
        ));
    }
    return result;
  }
}
