// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_flow_logs_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_item.dart' as _i2;

part 'create_flow_logs_result.g.dart';

abstract class CreateFlowLogsResult
    with _i1.AWSEquatable<CreateFlowLogsResult>
    implements Built<CreateFlowLogsResult, CreateFlowLogsResultBuilder> {
  factory CreateFlowLogsResult({
    String? clientToken,
    List<String>? flowLogIds,
    List<_i2.UnsuccessfulItem>? unsuccessful,
  }) {
    return _$CreateFlowLogsResult._(
      clientToken: clientToken,
      flowLogIds: flowLogIds == null ? null : _i3.BuiltList(flowLogIds),
      unsuccessful: unsuccessful == null ? null : _i3.BuiltList(unsuccessful),
    );
  }

  factory CreateFlowLogsResult.build(
          [void Function(CreateFlowLogsResultBuilder) updates]) =
      _$CreateFlowLogsResult;

  const CreateFlowLogsResult._();

  /// Constructs a [CreateFlowLogsResult] from a [payload] and [response].
  factory CreateFlowLogsResult.fromResponse(
    CreateFlowLogsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    CreateFlowLogsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateFlowLogsResultBuilder b) {}

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
  String? get clientToken;

  /// The IDs of the flow logs.
  _i3.BuiltList<String>? get flowLogIds;

  /// Information about the flow logs that could not be created successfully.
  _i3.BuiltList<_i2.UnsuccessfulItem>? get unsuccessful;
  @override
  List<Object?> get props => [
        clientToken,
        flowLogIds,
        unsuccessful,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateFlowLogsResult');
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'flowLogIds',
      flowLogIds,
    );
    helper.add(
      'unsuccessful',
      unsuccessful,
    );
    return helper.toString();
  }
}

class CreateFlowLogsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<CreateFlowLogsResult> {
  const CreateFlowLogsResultEc2QuerySerializer()
      : super('CreateFlowLogsResult');

  @override
  Iterable<Type> get types => const [
        CreateFlowLogsResult,
        _$CreateFlowLogsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateFlowLogsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateFlowLogsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'clientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'flowLogIdSet':
          if (value != null) {
            result.flowLogIds.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
          }
          break;
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
    final payload = (object as CreateFlowLogsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'CreateFlowLogsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.clientToken != null) {
      result
        ..add(const _i4.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.flowLogIds != null) {
      result
        ..add(const _i4.XmlElementName('FlowLogIdSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.flowLogIds!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
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
