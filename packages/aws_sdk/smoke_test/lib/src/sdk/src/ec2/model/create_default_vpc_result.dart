// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_default_vpc_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc.dart' as _i2;

part 'create_default_vpc_result.g.dart';

abstract class CreateDefaultVpcResult
    with _i1.AWSEquatable<CreateDefaultVpcResult>
    implements Built<CreateDefaultVpcResult, CreateDefaultVpcResultBuilder> {
  factory CreateDefaultVpcResult({_i2.Vpc? vpc}) {
    return _$CreateDefaultVpcResult._(vpc: vpc);
  }

  factory CreateDefaultVpcResult.build(
          [void Function(CreateDefaultVpcResultBuilder) updates]) =
      _$CreateDefaultVpcResult;

  const CreateDefaultVpcResult._();

  /// Constructs a [CreateDefaultVpcResult] from a [payload] and [response].
  factory CreateDefaultVpcResult.fromResponse(
    CreateDefaultVpcResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateDefaultVpcResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateDefaultVpcResultBuilder b) {}

  /// Information about the VPC.
  _i2.Vpc? get vpc;
  @override
  List<Object?> get props => [vpc];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateDefaultVpcResult');
    helper.add(
      'vpc',
      vpc,
    );
    return helper.toString();
  }
}

class CreateDefaultVpcResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateDefaultVpcResult> {
  const CreateDefaultVpcResultEc2QuerySerializer()
      : super('CreateDefaultVpcResult');

  @override
  Iterable<Type> get types => const [
        CreateDefaultVpcResult,
        _$CreateDefaultVpcResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateDefaultVpcResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateDefaultVpcResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'vpc':
          if (value != null) {
            result.vpc.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Vpc),
            ) as _i2.Vpc));
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
    final payload = (object as CreateDefaultVpcResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateDefaultVpcResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.vpc != null) {
      result
        ..add(const _i3.XmlElementName('Vpc'))
        ..add(serializers.serialize(
          payload.vpc!,
          specifiedType: const FullType(_i2.Vpc),
        ));
    }
    return result;
  }
}
