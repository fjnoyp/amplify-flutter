// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_ipam_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam.dart' as _i2;

part 'create_ipam_result.g.dart';

abstract class CreateIpamResult
    with _i1.AWSEquatable<CreateIpamResult>
    implements Built<CreateIpamResult, CreateIpamResultBuilder> {
  factory CreateIpamResult({_i2.Ipam? ipam}) {
    return _$CreateIpamResult._(ipam: ipam);
  }

  factory CreateIpamResult.build(
      [void Function(CreateIpamResultBuilder) updates]) = _$CreateIpamResult;

  const CreateIpamResult._();

  /// Constructs a [CreateIpamResult] from a [payload] and [response].
  factory CreateIpamResult.fromResponse(
    CreateIpamResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateIpamResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateIpamResultBuilder b) {}

  /// Information about the IPAM created.
  _i2.Ipam? get ipam;
  @override
  List<Object?> get props => [ipam];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateIpamResult');
    helper.add(
      'ipam',
      ipam,
    );
    return helper.toString();
  }
}

class CreateIpamResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateIpamResult> {
  const CreateIpamResultEc2QuerySerializer() : super('CreateIpamResult');

  @override
  Iterable<Type> get types => const [
        CreateIpamResult,
        _$CreateIpamResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateIpamResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateIpamResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ipam':
          if (value != null) {
            result.ipam.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Ipam),
            ) as _i2.Ipam));
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
    final payload = (object as CreateIpamResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateIpamResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ipam != null) {
      result
        ..add(const _i3.XmlElementName('Ipam'))
        ..add(serializers.serialize(
          payload.ipam!,
          specifiedType: const FullType(_i2.Ipam),
        ));
    }
    return result;
  }
}
