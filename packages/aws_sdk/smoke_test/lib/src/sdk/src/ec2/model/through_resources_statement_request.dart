// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.through_resources_statement_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/resource_statement_request.dart'
    as _i2;

part 'through_resources_statement_request.g.dart';

/// Describes a through resource statement.
abstract class ThroughResourcesStatementRequest
    with
        _i1.AWSEquatable<ThroughResourcesStatementRequest>
    implements
        Built<ThroughResourcesStatementRequest,
            ThroughResourcesStatementRequestBuilder> {
  /// Describes a through resource statement.
  factory ThroughResourcesStatementRequest(
      {_i2.ResourceStatementRequest? resourceStatement}) {
    return _$ThroughResourcesStatementRequest._(
        resourceStatement: resourceStatement);
  }

  /// Describes a through resource statement.
  factory ThroughResourcesStatementRequest.build(
          [void Function(ThroughResourcesStatementRequestBuilder) updates]) =
      _$ThroughResourcesStatementRequest;

  const ThroughResourcesStatementRequest._();

  static const List<_i3.SmithySerializer> serializers = [
    ThroughResourcesStatementRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ThroughResourcesStatementRequestBuilder b) {}

  /// The resource statement.
  _i2.ResourceStatementRequest? get resourceStatement;
  @override
  List<Object?> get props => [resourceStatement];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ThroughResourcesStatementRequest');
    helper.add(
      'resourceStatement',
      resourceStatement,
    );
    return helper.toString();
  }
}

class ThroughResourcesStatementRequestEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ThroughResourcesStatementRequest> {
  const ThroughResourcesStatementRequestEc2QuerySerializer()
      : super('ThroughResourcesStatementRequest');

  @override
  Iterable<Type> get types => const [
        ThroughResourcesStatementRequest,
        _$ThroughResourcesStatementRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ThroughResourcesStatementRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ThroughResourcesStatementRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ResourceStatement':
          if (value != null) {
            result.resourceStatement.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ResourceStatementRequest),
            ) as _i2.ResourceStatementRequest));
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
    final payload = (object as ThroughResourcesStatementRequest);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ThroughResourcesStatementRequestResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.resourceStatement != null) {
      result
        ..add(const _i3.XmlElementName('ResourceStatement'))
        ..add(serializers.serialize(
          payload.resourceStatement!,
          specifiedType: const FullType(_i2.ResourceStatementRequest),
        ));
    }
    return result;
  }
}
