// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_ipam_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam.dart' as _i2;

part 'modify_ipam_result.g.dart';

abstract class ModifyIpamResult
    with _i1.AWSEquatable<ModifyIpamResult>
    implements Built<ModifyIpamResult, ModifyIpamResultBuilder> {
  factory ModifyIpamResult({_i2.Ipam? ipam}) {
    return _$ModifyIpamResult._(ipam: ipam);
  }

  factory ModifyIpamResult.build(
      [void Function(ModifyIpamResultBuilder) updates]) = _$ModifyIpamResult;

  const ModifyIpamResult._();

  /// Constructs a [ModifyIpamResult] from a [payload] and [response].
  factory ModifyIpamResult.fromResponse(
    ModifyIpamResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ModifyIpamResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyIpamResultBuilder b) {}

  /// The results of the modification.
  _i2.Ipam? get ipam;
  @override
  List<Object?> get props => [ipam];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyIpamResult');
    helper.add(
      'ipam',
      ipam,
    );
    return helper.toString();
  }
}

class ModifyIpamResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ModifyIpamResult> {
  const ModifyIpamResultEc2QuerySerializer() : super('ModifyIpamResult');

  @override
  Iterable<Type> get types => const [
        ModifyIpamResult,
        _$ModifyIpamResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyIpamResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyIpamResultBuilder();
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
    final payload = (object as ModifyIpamResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ModifyIpamResultResponse',
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
