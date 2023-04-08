// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_default_subnet_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet.dart' as _i2;

part 'create_default_subnet_result.g.dart';

abstract class CreateDefaultSubnetResult
    with _i1.AWSEquatable<CreateDefaultSubnetResult>
    implements
        Built<CreateDefaultSubnetResult, CreateDefaultSubnetResultBuilder> {
  factory CreateDefaultSubnetResult({_i2.Subnet? subnet}) {
    return _$CreateDefaultSubnetResult._(subnet: subnet);
  }

  factory CreateDefaultSubnetResult.build(
          [void Function(CreateDefaultSubnetResultBuilder) updates]) =
      _$CreateDefaultSubnetResult;

  const CreateDefaultSubnetResult._();

  /// Constructs a [CreateDefaultSubnetResult] from a [payload] and [response].
  factory CreateDefaultSubnetResult.fromResponse(
    CreateDefaultSubnetResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateDefaultSubnetResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateDefaultSubnetResultBuilder b) {}

  /// Information about the subnet.
  _i2.Subnet? get subnet;
  @override
  List<Object?> get props => [subnet];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateDefaultSubnetResult');
    helper.add(
      'subnet',
      subnet,
    );
    return helper.toString();
  }
}

class CreateDefaultSubnetResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateDefaultSubnetResult> {
  const CreateDefaultSubnetResultEc2QuerySerializer()
      : super('CreateDefaultSubnetResult');

  @override
  Iterable<Type> get types => const [
        CreateDefaultSubnetResult,
        _$CreateDefaultSubnetResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateDefaultSubnetResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateDefaultSubnetResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'subnet':
          if (value != null) {
            result.subnet.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Subnet),
            ) as _i2.Subnet));
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
    final payload = (object as CreateDefaultSubnetResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateDefaultSubnetResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.subnet != null) {
      result
        ..add(const _i3.XmlElementName('Subnet'))
        ..add(serializers.serialize(
          payload.subnet!,
          specifiedType: const FullType(_i2.Subnet),
        ));
    }
    return result;
  }
}
