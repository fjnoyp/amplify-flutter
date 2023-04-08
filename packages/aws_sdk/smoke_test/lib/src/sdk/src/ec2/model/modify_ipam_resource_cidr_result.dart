// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_ipam_resource_cidr_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_cidr.dart'
    as _i2;

part 'modify_ipam_resource_cidr_result.g.dart';

abstract class ModifyIpamResourceCidrResult
    with
        _i1.AWSEquatable<ModifyIpamResourceCidrResult>
    implements
        Built<ModifyIpamResourceCidrResult,
            ModifyIpamResourceCidrResultBuilder> {
  factory ModifyIpamResourceCidrResult(
      {_i2.IpamResourceCidr? ipamResourceCidr}) {
    return _$ModifyIpamResourceCidrResult._(ipamResourceCidr: ipamResourceCidr);
  }

  factory ModifyIpamResourceCidrResult.build(
          [void Function(ModifyIpamResourceCidrResultBuilder) updates]) =
      _$ModifyIpamResourceCidrResult;

  const ModifyIpamResourceCidrResult._();

  /// Constructs a [ModifyIpamResourceCidrResult] from a [payload] and [response].
  factory ModifyIpamResourceCidrResult.fromResponse(
    ModifyIpamResourceCidrResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ModifyIpamResourceCidrResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyIpamResourceCidrResultBuilder b) {}

  /// The CIDR for an IPAM resource.
  _i2.IpamResourceCidr? get ipamResourceCidr;
  @override
  List<Object?> get props => [ipamResourceCidr];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyIpamResourceCidrResult');
    helper.add(
      'ipamResourceCidr',
      ipamResourceCidr,
    );
    return helper.toString();
  }
}

class ModifyIpamResourceCidrResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ModifyIpamResourceCidrResult> {
  const ModifyIpamResourceCidrResultEc2QuerySerializer()
      : super('ModifyIpamResourceCidrResult');

  @override
  Iterable<Type> get types => const [
        ModifyIpamResourceCidrResult,
        _$ModifyIpamResourceCidrResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyIpamResourceCidrResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyIpamResourceCidrResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ipamResourceCidr':
          if (value != null) {
            result.ipamResourceCidr.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.IpamResourceCidr),
            ) as _i2.IpamResourceCidr));
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
    final payload = (object as ModifyIpamResourceCidrResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ModifyIpamResourceCidrResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ipamResourceCidr != null) {
      result
        ..add(const _i3.XmlElementName('IpamResourceCidr'))
        ..add(serializers.serialize(
          payload.ipamResourceCidr!,
          specifiedType: const FullType(_i2.IpamResourceCidr),
        ));
    }
    return result;
  }
}
