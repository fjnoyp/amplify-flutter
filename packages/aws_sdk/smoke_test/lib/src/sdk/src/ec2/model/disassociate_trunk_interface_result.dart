// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disassociate_trunk_interface_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'disassociate_trunk_interface_result.g.dart';

abstract class DisassociateTrunkInterfaceResult
    with
        _i1.AWSEquatable<DisassociateTrunkInterfaceResult>
    implements
        Built<DisassociateTrunkInterfaceResult,
            DisassociateTrunkInterfaceResultBuilder> {
  factory DisassociateTrunkInterfaceResult({
    bool? return_,
    String? clientToken,
  }) {
    return_ ??= false;
    return _$DisassociateTrunkInterfaceResult._(
      return_: return_,
      clientToken: clientToken,
    );
  }

  factory DisassociateTrunkInterfaceResult.build(
          [void Function(DisassociateTrunkInterfaceResultBuilder) updates]) =
      _$DisassociateTrunkInterfaceResult;

  const DisassociateTrunkInterfaceResult._();

  /// Constructs a [DisassociateTrunkInterfaceResult] from a [payload] and [response].
  factory DisassociateTrunkInterfaceResult.fromResponse(
    DisassociateTrunkInterfaceResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    DisassociateTrunkInterfaceResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisassociateTrunkInterfaceResultBuilder b) {
    b.return_ = false;
  }

  /// Returns `true` if the request succeeds; otherwise, it returns an error.
  bool get return_;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  List<Object?> get props => [
        return_,
        clientToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisassociateTrunkInterfaceResult');
    helper.add(
      'return_',
      return_,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    return helper.toString();
  }
}

class DisassociateTrunkInterfaceResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DisassociateTrunkInterfaceResult> {
  const DisassociateTrunkInterfaceResultEc2QuerySerializer()
      : super('DisassociateTrunkInterfaceResult');

  @override
  Iterable<Type> get types => const [
        DisassociateTrunkInterfaceResult,
        _$DisassociateTrunkInterfaceResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateTrunkInterfaceResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateTrunkInterfaceResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'return':
          result.return_ = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'clientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as DisassociateTrunkInterfaceResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'DisassociateTrunkInterfaceResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        payload.return_,
        specifiedType: const FullType(bool),
      ));
    if (payload.clientToken != null) {
      result
        ..add(const _i2.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
