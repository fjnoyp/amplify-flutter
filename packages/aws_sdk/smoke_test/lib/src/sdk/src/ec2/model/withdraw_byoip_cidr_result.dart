// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.withdraw_byoip_cidr_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/byoip_cidr.dart' as _i2;

part 'withdraw_byoip_cidr_result.g.dart';

abstract class WithdrawByoipCidrResult
    with _i1.AWSEquatable<WithdrawByoipCidrResult>
    implements Built<WithdrawByoipCidrResult, WithdrawByoipCidrResultBuilder> {
  factory WithdrawByoipCidrResult({_i2.ByoipCidr? byoipCidr}) {
    return _$WithdrawByoipCidrResult._(byoipCidr: byoipCidr);
  }

  factory WithdrawByoipCidrResult.build(
          [void Function(WithdrawByoipCidrResultBuilder) updates]) =
      _$WithdrawByoipCidrResult;

  const WithdrawByoipCidrResult._();

  /// Constructs a [WithdrawByoipCidrResult] from a [payload] and [response].
  factory WithdrawByoipCidrResult.fromResponse(
    WithdrawByoipCidrResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    WithdrawByoipCidrResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(WithdrawByoipCidrResultBuilder b) {}

  /// Information about the address pool.
  _i2.ByoipCidr? get byoipCidr;
  @override
  List<Object?> get props => [byoipCidr];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('WithdrawByoipCidrResult');
    helper.add(
      'byoipCidr',
      byoipCidr,
    );
    return helper.toString();
  }
}

class WithdrawByoipCidrResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<WithdrawByoipCidrResult> {
  const WithdrawByoipCidrResultEc2QuerySerializer()
      : super('WithdrawByoipCidrResult');

  @override
  Iterable<Type> get types => const [
        WithdrawByoipCidrResult,
        _$WithdrawByoipCidrResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  WithdrawByoipCidrResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WithdrawByoipCidrResultBuilder();
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
    final payload = (object as WithdrawByoipCidrResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'WithdrawByoipCidrResultResponse',
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
