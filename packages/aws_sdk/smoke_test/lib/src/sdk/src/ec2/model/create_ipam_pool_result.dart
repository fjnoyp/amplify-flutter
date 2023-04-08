// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_ipam_pool_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool.dart' as _i2;

part 'create_ipam_pool_result.g.dart';

abstract class CreateIpamPoolResult
    with _i1.AWSEquatable<CreateIpamPoolResult>
    implements Built<CreateIpamPoolResult, CreateIpamPoolResultBuilder> {
  factory CreateIpamPoolResult({_i2.IpamPool? ipamPool}) {
    return _$CreateIpamPoolResult._(ipamPool: ipamPool);
  }

  factory CreateIpamPoolResult.build(
          [void Function(CreateIpamPoolResultBuilder) updates]) =
      _$CreateIpamPoolResult;

  const CreateIpamPoolResult._();

  /// Constructs a [CreateIpamPoolResult] from a [payload] and [response].
  factory CreateIpamPoolResult.fromResponse(
    CreateIpamPoolResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateIpamPoolResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateIpamPoolResultBuilder b) {}

  /// Information about the IPAM pool created.
  _i2.IpamPool? get ipamPool;
  @override
  List<Object?> get props => [ipamPool];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateIpamPoolResult');
    helper.add(
      'ipamPool',
      ipamPool,
    );
    return helper.toString();
  }
}

class CreateIpamPoolResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateIpamPoolResult> {
  const CreateIpamPoolResultEc2QuerySerializer()
      : super('CreateIpamPoolResult');

  @override
  Iterable<Type> get types => const [
        CreateIpamPoolResult,
        _$CreateIpamPoolResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateIpamPoolResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateIpamPoolResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ipamPool':
          if (value != null) {
            result.ipamPool.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.IpamPool),
            ) as _i2.IpamPool));
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
    final payload = (object as CreateIpamPoolResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateIpamPoolResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ipamPool != null) {
      result
        ..add(const _i3.XmlElementName('IpamPool'))
        ..add(serializers.serialize(
          payload.ipamPool!,
          specifiedType: const FullType(_i2.IpamPool),
        ));
    }
    return result;
  }
}
