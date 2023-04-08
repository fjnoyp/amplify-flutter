// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.path_statement_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/packet_header_statement_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/resource_statement_request.dart'
    as _i3;

part 'path_statement_request.g.dart';

/// Describes a path statement.
abstract class PathStatementRequest
    with _i1.AWSEquatable<PathStatementRequest>
    implements Built<PathStatementRequest, PathStatementRequestBuilder> {
  /// Describes a path statement.
  factory PathStatementRequest({
    _i2.PacketHeaderStatementRequest? packetHeaderStatement,
    _i3.ResourceStatementRequest? resourceStatement,
  }) {
    return _$PathStatementRequest._(
      packetHeaderStatement: packetHeaderStatement,
      resourceStatement: resourceStatement,
    );
  }

  /// Describes a path statement.
  factory PathStatementRequest.build(
          [void Function(PathStatementRequestBuilder) updates]) =
      _$PathStatementRequest;

  const PathStatementRequest._();

  static const List<_i4.SmithySerializer> serializers = [
    PathStatementRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PathStatementRequestBuilder b) {}

  /// The packet header statement.
  _i2.PacketHeaderStatementRequest? get packetHeaderStatement;

  /// The resource statement.
  _i3.ResourceStatementRequest? get resourceStatement;
  @override
  List<Object?> get props => [
        packetHeaderStatement,
        resourceStatement,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PathStatementRequest');
    helper.add(
      'packetHeaderStatement',
      packetHeaderStatement,
    );
    helper.add(
      'resourceStatement',
      resourceStatement,
    );
    return helper.toString();
  }
}

class PathStatementRequestEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<PathStatementRequest> {
  const PathStatementRequestEc2QuerySerializer()
      : super('PathStatementRequest');

  @override
  Iterable<Type> get types => const [
        PathStatementRequest,
        _$PathStatementRequest,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PathStatementRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PathStatementRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'PacketHeaderStatement':
          if (value != null) {
            result.packetHeaderStatement.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PacketHeaderStatementRequest),
            ) as _i2.PacketHeaderStatementRequest));
          }
          break;
        case 'ResourceStatement':
          if (value != null) {
            result.resourceStatement.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ResourceStatementRequest),
            ) as _i3.ResourceStatementRequest));
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
    final payload = (object as PathStatementRequest);
    final result = <Object?>[
      const _i4.XmlElementName(
        'PathStatementRequestResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.packetHeaderStatement != null) {
      result
        ..add(const _i4.XmlElementName('PacketHeaderStatement'))
        ..add(serializers.serialize(
          payload.packetHeaderStatement!,
          specifiedType: const FullType(_i2.PacketHeaderStatementRequest),
        ));
    }
    if (payload.resourceStatement != null) {
      result
        ..add(const _i4.XmlElementName('ResourceStatement'))
        ..add(serializers.serialize(
          payload.resourceStatement!,
          specifiedType: const FullType(_i3.ResourceStatementRequest),
        ));
    }
    return result;
  }
}
