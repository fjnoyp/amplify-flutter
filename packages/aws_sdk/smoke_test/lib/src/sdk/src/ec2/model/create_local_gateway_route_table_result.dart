// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_local_gateway_route_table_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table.dart'
    as _i2;

part 'create_local_gateway_route_table_result.g.dart';

abstract class CreateLocalGatewayRouteTableResult
    with
        _i1.AWSEquatable<CreateLocalGatewayRouteTableResult>
    implements
        Built<CreateLocalGatewayRouteTableResult,
            CreateLocalGatewayRouteTableResultBuilder> {
  factory CreateLocalGatewayRouteTableResult(
      {_i2.LocalGatewayRouteTable? localGatewayRouteTable}) {
    return _$CreateLocalGatewayRouteTableResult._(
        localGatewayRouteTable: localGatewayRouteTable);
  }

  factory CreateLocalGatewayRouteTableResult.build(
          [void Function(CreateLocalGatewayRouteTableResultBuilder) updates]) =
      _$CreateLocalGatewayRouteTableResult;

  const CreateLocalGatewayRouteTableResult._();

  /// Constructs a [CreateLocalGatewayRouteTableResult] from a [payload] and [response].
  factory CreateLocalGatewayRouteTableResult.fromResponse(
    CreateLocalGatewayRouteTableResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateLocalGatewayRouteTableResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateLocalGatewayRouteTableResultBuilder b) {}

  /// Describes a local gateway route table.
  _i2.LocalGatewayRouteTable? get localGatewayRouteTable;
  @override
  List<Object?> get props => [localGatewayRouteTable];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateLocalGatewayRouteTableResult');
    helper.add(
      'localGatewayRouteTable',
      localGatewayRouteTable,
    );
    return helper.toString();
  }
}

class CreateLocalGatewayRouteTableResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateLocalGatewayRouteTableResult> {
  const CreateLocalGatewayRouteTableResultEc2QuerySerializer()
      : super('CreateLocalGatewayRouteTableResult');

  @override
  Iterable<Type> get types => const [
        CreateLocalGatewayRouteTableResult,
        _$CreateLocalGatewayRouteTableResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateLocalGatewayRouteTableResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateLocalGatewayRouteTableResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'localGatewayRouteTable':
          if (value != null) {
            result.localGatewayRouteTable.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.LocalGatewayRouteTable),
            ) as _i2.LocalGatewayRouteTable));
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
    final payload = (object as CreateLocalGatewayRouteTableResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateLocalGatewayRouteTableResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.localGatewayRouteTable != null) {
      result
        ..add(const _i3.XmlElementName('LocalGatewayRouteTable'))
        ..add(serializers.serialize(
          payload.localGatewayRouteTable!,
          specifiedType: const FullType(_i2.LocalGatewayRouteTable),
        ));
    }
    return result;
  }
}
