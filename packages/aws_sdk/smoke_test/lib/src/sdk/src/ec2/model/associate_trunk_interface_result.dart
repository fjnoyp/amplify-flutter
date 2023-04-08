// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.associate_trunk_interface_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/trunk_interface_association.dart'
    as _i2;

part 'associate_trunk_interface_result.g.dart';

abstract class AssociateTrunkInterfaceResult
    with
        _i1.AWSEquatable<AssociateTrunkInterfaceResult>
    implements
        Built<AssociateTrunkInterfaceResult,
            AssociateTrunkInterfaceResultBuilder> {
  factory AssociateTrunkInterfaceResult({
    _i2.TrunkInterfaceAssociation? interfaceAssociation,
    String? clientToken,
  }) {
    return _$AssociateTrunkInterfaceResult._(
      interfaceAssociation: interfaceAssociation,
      clientToken: clientToken,
    );
  }

  factory AssociateTrunkInterfaceResult.build(
          [void Function(AssociateTrunkInterfaceResultBuilder) updates]) =
      _$AssociateTrunkInterfaceResult;

  const AssociateTrunkInterfaceResult._();

  /// Constructs a [AssociateTrunkInterfaceResult] from a [payload] and [response].
  factory AssociateTrunkInterfaceResult.fromResponse(
    AssociateTrunkInterfaceResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    AssociateTrunkInterfaceResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateTrunkInterfaceResultBuilder b) {}

  /// Information about the association between the trunk network interface and branch network interface.
  _i2.TrunkInterfaceAssociation? get interfaceAssociation;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  List<Object?> get props => [
        interfaceAssociation,
        clientToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssociateTrunkInterfaceResult');
    helper.add(
      'interfaceAssociation',
      interfaceAssociation,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    return helper.toString();
  }
}

class AssociateTrunkInterfaceResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AssociateTrunkInterfaceResult> {
  const AssociateTrunkInterfaceResultEc2QuerySerializer()
      : super('AssociateTrunkInterfaceResult');

  @override
  Iterable<Type> get types => const [
        AssociateTrunkInterfaceResult,
        _$AssociateTrunkInterfaceResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateTrunkInterfaceResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateTrunkInterfaceResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'interfaceAssociation':
          if (value != null) {
            result.interfaceAssociation.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TrunkInterfaceAssociation),
            ) as _i2.TrunkInterfaceAssociation));
          }
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
    final payload = (object as AssociateTrunkInterfaceResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AssociateTrunkInterfaceResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.interfaceAssociation != null) {
      result
        ..add(const _i3.XmlElementName('InterfaceAssociation'))
        ..add(serializers.serialize(
          payload.interfaceAssociation!,
          specifiedType: const FullType(_i2.TrunkInterfaceAssociation),
        ));
    }
    if (payload.clientToken != null) {
      result
        ..add(const _i3.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
