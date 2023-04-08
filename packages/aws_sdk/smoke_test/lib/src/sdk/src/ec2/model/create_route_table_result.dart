// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_route_table_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/route_table.dart' as _i2;

part 'create_route_table_result.g.dart';

abstract class CreateRouteTableResult
    with _i1.AWSEquatable<CreateRouteTableResult>
    implements Built<CreateRouteTableResult, CreateRouteTableResultBuilder> {
  factory CreateRouteTableResult({_i2.RouteTable? routeTable}) {
    return _$CreateRouteTableResult._(routeTable: routeTable);
  }

  factory CreateRouteTableResult.build(
          [void Function(CreateRouteTableResultBuilder) updates]) =
      _$CreateRouteTableResult;

  const CreateRouteTableResult._();

  /// Constructs a [CreateRouteTableResult] from a [payload] and [response].
  factory CreateRouteTableResult.fromResponse(
    CreateRouteTableResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateRouteTableResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateRouteTableResultBuilder b) {}

  /// Information about the route table.
  _i2.RouteTable? get routeTable;
  @override
  List<Object?> get props => [routeTable];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateRouteTableResult');
    helper.add(
      'routeTable',
      routeTable,
    );
    return helper.toString();
  }
}

class CreateRouteTableResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateRouteTableResult> {
  const CreateRouteTableResultEc2QuerySerializer()
      : super('CreateRouteTableResult');

  @override
  Iterable<Type> get types => const [
        CreateRouteTableResult,
        _$CreateRouteTableResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateRouteTableResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateRouteTableResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'routeTable':
          if (value != null) {
            result.routeTable.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.RouteTable),
            ) as _i2.RouteTable));
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
    final payload = (object as CreateRouteTableResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateRouteTableResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.routeTable != null) {
      result
        ..add(const _i3.XmlElementName('RouteTable'))
        ..add(serializers.serialize(
          payload.routeTable!,
          specifiedType: const FullType(_i2.RouteTable),
        ));
    }
    return result;
  }
}
