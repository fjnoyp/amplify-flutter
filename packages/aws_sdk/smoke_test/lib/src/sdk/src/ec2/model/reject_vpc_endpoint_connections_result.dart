// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.reject_vpc_endpoint_connections_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_item.dart' as _i2;

part 'reject_vpc_endpoint_connections_result.g.dart';

abstract class RejectVpcEndpointConnectionsResult
    with
        _i1.AWSEquatable<RejectVpcEndpointConnectionsResult>
    implements
        Built<RejectVpcEndpointConnectionsResult,
            RejectVpcEndpointConnectionsResultBuilder> {
  factory RejectVpcEndpointConnectionsResult(
      {List<_i2.UnsuccessfulItem>? unsuccessful}) {
    return _$RejectVpcEndpointConnectionsResult._(
        unsuccessful:
            unsuccessful == null ? null : _i3.BuiltList(unsuccessful));
  }

  factory RejectVpcEndpointConnectionsResult.build(
          [void Function(RejectVpcEndpointConnectionsResultBuilder) updates]) =
      _$RejectVpcEndpointConnectionsResult;

  const RejectVpcEndpointConnectionsResult._();

  /// Constructs a [RejectVpcEndpointConnectionsResult] from a [payload] and [response].
  factory RejectVpcEndpointConnectionsResult.fromResponse(
    RejectVpcEndpointConnectionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    RejectVpcEndpointConnectionsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RejectVpcEndpointConnectionsResultBuilder b) {}

  /// Information about the endpoints that were not rejected, if applicable.
  _i3.BuiltList<_i2.UnsuccessfulItem>? get unsuccessful;
  @override
  List<Object?> get props => [unsuccessful];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RejectVpcEndpointConnectionsResult');
    helper.add(
      'unsuccessful',
      unsuccessful,
    );
    return helper.toString();
  }
}

class RejectVpcEndpointConnectionsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<RejectVpcEndpointConnectionsResult> {
  const RejectVpcEndpointConnectionsResultEc2QuerySerializer()
      : super('RejectVpcEndpointConnectionsResult');

  @override
  Iterable<Type> get types => const [
        RejectVpcEndpointConnectionsResult,
        _$RejectVpcEndpointConnectionsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RejectVpcEndpointConnectionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RejectVpcEndpointConnectionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'unsuccessful':
          if (value != null) {
            result.unsuccessful.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.UnsuccessfulItem)],
              ),
            ) as _i3.BuiltList<_i2.UnsuccessfulItem>));
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
    final payload = (object as RejectVpcEndpointConnectionsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'RejectVpcEndpointConnectionsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.unsuccessful != null) {
      result
        ..add(const _i4.XmlElementName('Unsuccessful'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.unsuccessful!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.UnsuccessfulItem)],
          ),
        ));
    }
    return result;
  }
}
