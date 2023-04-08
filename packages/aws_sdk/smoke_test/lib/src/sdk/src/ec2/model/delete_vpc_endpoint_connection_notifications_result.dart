// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_vpc_endpoint_connection_notifications_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_item.dart' as _i2;

part 'delete_vpc_endpoint_connection_notifications_result.g.dart';

abstract class DeleteVpcEndpointConnectionNotificationsResult
    with
        _i1.AWSEquatable<DeleteVpcEndpointConnectionNotificationsResult>
    implements
        Built<DeleteVpcEndpointConnectionNotificationsResult,
            DeleteVpcEndpointConnectionNotificationsResultBuilder> {
  factory DeleteVpcEndpointConnectionNotificationsResult(
      {List<_i2.UnsuccessfulItem>? unsuccessful}) {
    return _$DeleteVpcEndpointConnectionNotificationsResult._(
        unsuccessful:
            unsuccessful == null ? null : _i3.BuiltList(unsuccessful));
  }

  factory DeleteVpcEndpointConnectionNotificationsResult.build(
      [void Function(DeleteVpcEndpointConnectionNotificationsResultBuilder)
          updates]) = _$DeleteVpcEndpointConnectionNotificationsResult;

  const DeleteVpcEndpointConnectionNotificationsResult._();

  /// Constructs a [DeleteVpcEndpointConnectionNotificationsResult] from a [payload] and [response].
  factory DeleteVpcEndpointConnectionNotificationsResult.fromResponse(
    DeleteVpcEndpointConnectionNotificationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DeleteVpcEndpointConnectionNotificationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteVpcEndpointConnectionNotificationsResultBuilder b) {}

  /// Information about the notifications that could not be deleted successfully.
  _i3.BuiltList<_i2.UnsuccessfulItem>? get unsuccessful;
  @override
  List<Object?> get props => [unsuccessful];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteVpcEndpointConnectionNotificationsResult');
    helper.add(
      'unsuccessful',
      unsuccessful,
    );
    return helper.toString();
  }
}

class DeleteVpcEndpointConnectionNotificationsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<
        DeleteVpcEndpointConnectionNotificationsResult> {
  const DeleteVpcEndpointConnectionNotificationsResultEc2QuerySerializer()
      : super('DeleteVpcEndpointConnectionNotificationsResult');

  @override
  Iterable<Type> get types => const [
        DeleteVpcEndpointConnectionNotificationsResult,
        _$DeleteVpcEndpointConnectionNotificationsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteVpcEndpointConnectionNotificationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteVpcEndpointConnectionNotificationsResultBuilder();
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
    final payload = (object as DeleteVpcEndpointConnectionNotificationsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DeleteVpcEndpointConnectionNotificationsResultResponse',
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
