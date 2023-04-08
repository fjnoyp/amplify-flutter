// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.deprovision_byoip_cidr_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/byoip_cidr.dart' as _i2;

part 'deprovision_byoip_cidr_result.g.dart';

abstract class DeprovisionByoipCidrResult
    with _i1.AWSEquatable<DeprovisionByoipCidrResult>
    implements
        Built<DeprovisionByoipCidrResult, DeprovisionByoipCidrResultBuilder> {
  factory DeprovisionByoipCidrResult({_i2.ByoipCidr? byoipCidr}) {
    return _$DeprovisionByoipCidrResult._(byoipCidr: byoipCidr);
  }

  factory DeprovisionByoipCidrResult.build(
          [void Function(DeprovisionByoipCidrResultBuilder) updates]) =
      _$DeprovisionByoipCidrResult;

  const DeprovisionByoipCidrResult._();

  /// Constructs a [DeprovisionByoipCidrResult] from a [payload] and [response].
  factory DeprovisionByoipCidrResult.fromResponse(
    DeprovisionByoipCidrResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeprovisionByoipCidrResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeprovisionByoipCidrResultBuilder b) {}

  /// Information about the address range.
  _i2.ByoipCidr? get byoipCidr;
  @override
  List<Object?> get props => [byoipCidr];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeprovisionByoipCidrResult');
    helper.add(
      'byoipCidr',
      byoipCidr,
    );
    return helper.toString();
  }
}

class DeprovisionByoipCidrResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DeprovisionByoipCidrResult> {
  const DeprovisionByoipCidrResultEc2QuerySerializer()
      : super('DeprovisionByoipCidrResult');

  @override
  Iterable<Type> get types => const [
        DeprovisionByoipCidrResult,
        _$DeprovisionByoipCidrResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeprovisionByoipCidrResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeprovisionByoipCidrResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'byoipCidr':
          if (value != null) {
            result.byoipCidr.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ByoipCidr),
            ) as _i2.ByoipCidr));
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
    final payload = (object as DeprovisionByoipCidrResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeprovisionByoipCidrResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.byoipCidr != null) {
      result
        ..add(const _i3.XmlElementName('ByoipCidr'))
        ..add(serializers.serialize(
          payload.byoipCidr!,
          specifiedType: const FullType(_i2.ByoipCidr),
        ));
    }
    return result;
  }
}
