// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_console_output_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_console_output_result.g.dart';

abstract class GetConsoleOutputResult
    with _i1.AWSEquatable<GetConsoleOutputResult>
    implements Built<GetConsoleOutputResult, GetConsoleOutputResultBuilder> {
  factory GetConsoleOutputResult({
    String? instanceId,
    String? output,
    DateTime? timestamp,
  }) {
    return _$GetConsoleOutputResult._(
      instanceId: instanceId,
      output: output,
      timestamp: timestamp,
    );
  }

  factory GetConsoleOutputResult.build(
          [void Function(GetConsoleOutputResultBuilder) updates]) =
      _$GetConsoleOutputResult;

  const GetConsoleOutputResult._();

  /// Constructs a [GetConsoleOutputResult] from a [payload] and [response].
  factory GetConsoleOutputResult.fromResponse(
    GetConsoleOutputResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    GetConsoleOutputResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetConsoleOutputResultBuilder b) {}

  /// The ID of the instance.
  String? get instanceId;

  /// The console output, base64-encoded. If you are using a command line tool, the tool decodes the output for you.
  String? get output;

  /// The time at which the output was last updated.
  DateTime? get timestamp;
  @override
  List<Object?> get props => [
        instanceId,
        output,
        timestamp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetConsoleOutputResult');
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'output',
      output,
    );
    helper.add(
      'timestamp',
      timestamp,
    );
    return helper.toString();
  }
}

class GetConsoleOutputResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<GetConsoleOutputResult> {
  const GetConsoleOutputResultEc2QuerySerializer()
      : super('GetConsoleOutputResult');

  @override
  Iterable<Type> get types => const [
        GetConsoleOutputResult,
        _$GetConsoleOutputResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetConsoleOutputResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetConsoleOutputResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'output':
          if (value != null) {
            result.output = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'timestamp':
          if (value != null) {
            result.timestamp = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
    final payload = (object as GetConsoleOutputResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'GetConsoleOutputResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceId != null) {
      result
        ..add(const _i2.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.output != null) {
      result
        ..add(const _i2.XmlElementName('Output'))
        ..add(serializers.serialize(
          payload.output!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.timestamp != null) {
      result
        ..add(const _i2.XmlElementName('Timestamp'))
        ..add(serializers.serialize(
          payload.timestamp!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result;
  }
}
