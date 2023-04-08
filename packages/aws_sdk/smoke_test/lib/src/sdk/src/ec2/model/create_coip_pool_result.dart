// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_coip_pool_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/coip_pool.dart' as _i2;

part 'create_coip_pool_result.g.dart';

abstract class CreateCoipPoolResult
    with _i1.AWSEquatable<CreateCoipPoolResult>
    implements Built<CreateCoipPoolResult, CreateCoipPoolResultBuilder> {
  factory CreateCoipPoolResult({_i2.CoipPool? coipPool}) {
    return _$CreateCoipPoolResult._(coipPool: coipPool);
  }

  factory CreateCoipPoolResult.build(
          [void Function(CreateCoipPoolResultBuilder) updates]) =
      _$CreateCoipPoolResult;

  const CreateCoipPoolResult._();

  /// Constructs a [CreateCoipPoolResult] from a [payload] and [response].
  factory CreateCoipPoolResult.fromResponse(
    CreateCoipPoolResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateCoipPoolResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateCoipPoolResultBuilder b) {}

  /// Describes a customer-owned address pool.
  _i2.CoipPool? get coipPool;
  @override
  List<Object?> get props => [coipPool];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateCoipPoolResult');
    helper.add(
      'coipPool',
      coipPool,
    );
    return helper.toString();
  }
}

class CreateCoipPoolResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateCoipPoolResult> {
  const CreateCoipPoolResultEc2QuerySerializer()
      : super('CreateCoipPoolResult');

  @override
  Iterable<Type> get types => const [
        CreateCoipPoolResult,
        _$CreateCoipPoolResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateCoipPoolResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCoipPoolResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'coipPool':
          if (value != null) {
            result.coipPool.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CoipPool),
            ) as _i2.CoipPool));
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
    final payload = (object as CreateCoipPoolResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateCoipPoolResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.coipPool != null) {
      result
        ..add(const _i3.XmlElementName('CoipPool'))
        ..add(serializers.serialize(
          payload.coipPool!,
          specifiedType: const FullType(_i2.CoipPool),
        ));
    }
    return result;
  }
}
