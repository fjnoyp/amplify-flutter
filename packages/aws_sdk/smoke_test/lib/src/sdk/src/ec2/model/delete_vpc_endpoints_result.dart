// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_vpc_endpoints_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_item.dart' as _i2;

part 'delete_vpc_endpoints_result.g.dart';

/// Contains the output of DeleteVpcEndpoints.
abstract class DeleteVpcEndpointsResult
    with _i1.AWSEquatable<DeleteVpcEndpointsResult>
    implements
        Built<DeleteVpcEndpointsResult, DeleteVpcEndpointsResultBuilder> {
  /// Contains the output of DeleteVpcEndpoints.
  factory DeleteVpcEndpointsResult({List<_i2.UnsuccessfulItem>? unsuccessful}) {
    return _$DeleteVpcEndpointsResult._(
        unsuccessful:
            unsuccessful == null ? null : _i3.BuiltList(unsuccessful));
  }

  /// Contains the output of DeleteVpcEndpoints.
  factory DeleteVpcEndpointsResult.build(
          [void Function(DeleteVpcEndpointsResultBuilder) updates]) =
      _$DeleteVpcEndpointsResult;

  const DeleteVpcEndpointsResult._();

  /// Constructs a [DeleteVpcEndpointsResult] from a [payload] and [response].
  factory DeleteVpcEndpointsResult.fromResponse(
    DeleteVpcEndpointsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DeleteVpcEndpointsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteVpcEndpointsResultBuilder b) {}

  /// Information about the VPC endpoints that were not successfully deleted.
  _i3.BuiltList<_i2.UnsuccessfulItem>? get unsuccessful;
  @override
  List<Object?> get props => [unsuccessful];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteVpcEndpointsResult');
    helper.add(
      'unsuccessful',
      unsuccessful,
    );
    return helper.toString();
  }
}

class DeleteVpcEndpointsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DeleteVpcEndpointsResult> {
  const DeleteVpcEndpointsResultEc2QuerySerializer()
      : super('DeleteVpcEndpointsResult');

  @override
  Iterable<Type> get types => const [
        DeleteVpcEndpointsResult,
        _$DeleteVpcEndpointsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteVpcEndpointsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteVpcEndpointsResultBuilder();
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
    final payload = (object as DeleteVpcEndpointsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DeleteVpcEndpointsResultResponse',
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
