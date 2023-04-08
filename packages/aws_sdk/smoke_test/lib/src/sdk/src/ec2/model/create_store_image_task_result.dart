// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_store_image_task_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'create_store_image_task_result.g.dart';

abstract class CreateStoreImageTaskResult
    with _i1.AWSEquatable<CreateStoreImageTaskResult>
    implements
        Built<CreateStoreImageTaskResult, CreateStoreImageTaskResultBuilder> {
  factory CreateStoreImageTaskResult({String? objectKey}) {
    return _$CreateStoreImageTaskResult._(objectKey: objectKey);
  }

  factory CreateStoreImageTaskResult.build(
          [void Function(CreateStoreImageTaskResultBuilder) updates]) =
      _$CreateStoreImageTaskResult;

  const CreateStoreImageTaskResult._();

  /// Constructs a [CreateStoreImageTaskResult] from a [payload] and [response].
  factory CreateStoreImageTaskResult.fromResponse(
    CreateStoreImageTaskResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    CreateStoreImageTaskResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateStoreImageTaskResultBuilder b) {}

  /// The name of the stored AMI object in the S3 bucket.
  String? get objectKey;
  @override
  List<Object?> get props => [objectKey];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateStoreImageTaskResult');
    helper.add(
      'objectKey',
      objectKey,
    );
    return helper.toString();
  }
}

class CreateStoreImageTaskResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateStoreImageTaskResult> {
  const CreateStoreImageTaskResultEc2QuerySerializer()
      : super('CreateStoreImageTaskResult');

  @override
  Iterable<Type> get types => const [
        CreateStoreImageTaskResult,
        _$CreateStoreImageTaskResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateStoreImageTaskResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateStoreImageTaskResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'objectKey':
          if (value != null) {
            result.objectKey = (serializers.deserialize(
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
    final payload = (object as CreateStoreImageTaskResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'CreateStoreImageTaskResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.objectKey != null) {
      result
        ..add(const _i2.XmlElementName('ObjectKey'))
        ..add(serializers.serialize(
          payload.objectKey!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
