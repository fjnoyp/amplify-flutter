// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_console_screenshot_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_console_screenshot_result.g.dart';

abstract class GetConsoleScreenshotResult
    with _i1.AWSEquatable<GetConsoleScreenshotResult>
    implements
        Built<GetConsoleScreenshotResult, GetConsoleScreenshotResultBuilder> {
  factory GetConsoleScreenshotResult({
    String? imageData,
    String? instanceId,
  }) {
    return _$GetConsoleScreenshotResult._(
      imageData: imageData,
      instanceId: instanceId,
    );
  }

  factory GetConsoleScreenshotResult.build(
          [void Function(GetConsoleScreenshotResultBuilder) updates]) =
      _$GetConsoleScreenshotResult;

  const GetConsoleScreenshotResult._();

  /// Constructs a [GetConsoleScreenshotResult] from a [payload] and [response].
  factory GetConsoleScreenshotResult.fromResponse(
    GetConsoleScreenshotResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    GetConsoleScreenshotResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetConsoleScreenshotResultBuilder b) {}

  /// The data that comprises the image.
  String? get imageData;

  /// The ID of the instance.
  String? get instanceId;
  @override
  List<Object?> get props => [
        imageData,
        instanceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetConsoleScreenshotResult');
    helper.add(
      'imageData',
      imageData,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    return helper.toString();
  }
}

class GetConsoleScreenshotResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<GetConsoleScreenshotResult> {
  const GetConsoleScreenshotResultEc2QuerySerializer()
      : super('GetConsoleScreenshotResult');

  @override
  Iterable<Type> get types => const [
        GetConsoleScreenshotResult,
        _$GetConsoleScreenshotResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetConsoleScreenshotResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetConsoleScreenshotResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'imageData':
          if (value != null) {
            result.imageData = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'instanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as GetConsoleScreenshotResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'GetConsoleScreenshotResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.imageData != null) {
      result
        ..add(const _i2.XmlElementName('ImageData'))
        ..add(serializers.serialize(
          payload.imageData!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceId != null) {
      result
        ..add(const _i2.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
