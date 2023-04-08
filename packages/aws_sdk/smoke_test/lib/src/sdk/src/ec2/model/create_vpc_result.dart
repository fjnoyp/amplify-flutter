// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_vpc_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc.dart' as _i2;

part 'create_vpc_result.g.dart';

abstract class CreateVpcResult
    with _i1.AWSEquatable<CreateVpcResult>
    implements Built<CreateVpcResult, CreateVpcResultBuilder> {
  factory CreateVpcResult({_i2.Vpc? vpc}) {
    return _$CreateVpcResult._(vpc: vpc);
  }

  factory CreateVpcResult.build(
      [void Function(CreateVpcResultBuilder) updates]) = _$CreateVpcResult;

  const CreateVpcResult._();

  /// Constructs a [CreateVpcResult] from a [payload] and [response].
  factory CreateVpcResult.fromResponse(
    CreateVpcResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateVpcResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVpcResultBuilder b) {}

  /// Information about the VPC.
  _i2.Vpc? get vpc;
  @override
  List<Object?> get props => [vpc];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateVpcResult');
    helper.add(
      'vpc',
      vpc,
    );
    return helper.toString();
  }
}

class CreateVpcResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateVpcResult> {
  const CreateVpcResultEc2QuerySerializer() : super('CreateVpcResult');

  @override
  Iterable<Type> get types => const [
        CreateVpcResult,
        _$CreateVpcResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpcResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpcResultBuilder();
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
    final payload = (object as CreateVpcResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateVpcResultResponse',
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
