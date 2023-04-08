// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.generate_service_last_accessed_details_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'generate_service_last_accessed_details_response.g.dart';

abstract class GenerateServiceLastAccessedDetailsResponse
    with
        _i1.AWSEquatable<GenerateServiceLastAccessedDetailsResponse>
    implements
        Built<GenerateServiceLastAccessedDetailsResponse,
            GenerateServiceLastAccessedDetailsResponseBuilder> {
  factory GenerateServiceLastAccessedDetailsResponse({String? jobId}) {
    return _$GenerateServiceLastAccessedDetailsResponse._(jobId: jobId);
  }

  factory GenerateServiceLastAccessedDetailsResponse.build(
      [void Function(GenerateServiceLastAccessedDetailsResponseBuilder)
          updates]) = _$GenerateServiceLastAccessedDetailsResponse;

  const GenerateServiceLastAccessedDetailsResponse._();

  /// Constructs a [GenerateServiceLastAccessedDetailsResponse] from a [payload] and [response].
  factory GenerateServiceLastAccessedDetailsResponse.fromResponse(
    GenerateServiceLastAccessedDetailsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    GenerateServiceLastAccessedDetailsResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GenerateServiceLastAccessedDetailsResponseBuilder b) {}

  /// The `JobId` that you can use in the GetServiceLastAccessedDetails or GetServiceLastAccessedDetailsWithEntities operations. The `JobId` returned by `GenerateServiceLastAccessedDetail` must be used by the same role within a session, or by the same user when used to call `GetServiceLastAccessedDetail`.
  String? get jobId;
  @override
  List<Object?> get props => [jobId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GenerateServiceLastAccessedDetailsResponse');
    helper.add(
      'jobId',
      jobId,
    );
    return helper.toString();
  }
}

class GenerateServiceLastAccessedDetailsResponseAwsQuerySerializer extends _i2
    .StructuredSmithySerializer<GenerateServiceLastAccessedDetailsResponse> {
  const GenerateServiceLastAccessedDetailsResponseAwsQuerySerializer()
      : super('GenerateServiceLastAccessedDetailsResponse');

  @override
  Iterable<Type> get types => const [
        GenerateServiceLastAccessedDetailsResponse,
        _$GenerateServiceLastAccessedDetailsResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GenerateServiceLastAccessedDetailsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GenerateServiceLastAccessedDetailsResponseBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'JobId':
          if (value != null) {
            result.jobId = (serializers.deserialize(
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
    final payload = (object as GenerateServiceLastAccessedDetailsResponse);
    final result = <Object?>[
      const _i2.XmlElementName(
        'GenerateServiceLastAccessedDetailsResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.jobId != null) {
      result
        ..add(const _i2.XmlElementName('JobId'))
        ..add(serializers.serialize(
          payload.jobId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
