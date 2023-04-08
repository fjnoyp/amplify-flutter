// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_transit_gateway_prefix_list_reference_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_prefix_list_reference.dart'
    as _i2;

part 'modify_transit_gateway_prefix_list_reference_result.g.dart';

abstract class ModifyTransitGatewayPrefixListReferenceResult
    with
        _i1.AWSEquatable<ModifyTransitGatewayPrefixListReferenceResult>
    implements
        Built<ModifyTransitGatewayPrefixListReferenceResult,
            ModifyTransitGatewayPrefixListReferenceResultBuilder> {
  factory ModifyTransitGatewayPrefixListReferenceResult(
      {_i2.TransitGatewayPrefixListReference?
          transitGatewayPrefixListReference}) {
    return _$ModifyTransitGatewayPrefixListReferenceResult._(
        transitGatewayPrefixListReference: transitGatewayPrefixListReference);
  }

  factory ModifyTransitGatewayPrefixListReferenceResult.build(
      [void Function(ModifyTransitGatewayPrefixListReferenceResultBuilder)
          updates]) = _$ModifyTransitGatewayPrefixListReferenceResult;

  const ModifyTransitGatewayPrefixListReferenceResult._();

  /// Constructs a [ModifyTransitGatewayPrefixListReferenceResult] from a [payload] and [response].
  factory ModifyTransitGatewayPrefixListReferenceResult.fromResponse(
    ModifyTransitGatewayPrefixListReferenceResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ModifyTransitGatewayPrefixListReferenceResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyTransitGatewayPrefixListReferenceResultBuilder b) {}

  /// Information about the prefix list reference.
  _i2.TransitGatewayPrefixListReference? get transitGatewayPrefixListReference;
  @override
  List<Object?> get props => [transitGatewayPrefixListReference];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ModifyTransitGatewayPrefixListReferenceResult');
    helper.add(
      'transitGatewayPrefixListReference',
      transitGatewayPrefixListReference,
    );
    return helper.toString();
  }
}

class ModifyTransitGatewayPrefixListReferenceResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        ModifyTransitGatewayPrefixListReferenceResult> {
  const ModifyTransitGatewayPrefixListReferenceResultEc2QuerySerializer()
      : super('ModifyTransitGatewayPrefixListReferenceResult');

  @override
  Iterable<Type> get types => const [
        ModifyTransitGatewayPrefixListReferenceResult,
        _$ModifyTransitGatewayPrefixListReferenceResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyTransitGatewayPrefixListReferenceResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyTransitGatewayPrefixListReferenceResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayPrefixListReference':
          if (value != null) {
            result.transitGatewayPrefixListReference
                .replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.TransitGatewayPrefixListReference),
            ) as _i2.TransitGatewayPrefixListReference));
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
    final payload = (object as ModifyTransitGatewayPrefixListReferenceResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ModifyTransitGatewayPrefixListReferenceResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayPrefixListReference != null) {
      result
        ..add(const _i3.XmlElementName('TransitGatewayPrefixListReference'))
        ..add(serializers.serialize(
          payload.transitGatewayPrefixListReference!,
          specifiedType: const FullType(_i2.TransitGatewayPrefixListReference),
        ));
    }
    return result;
  }
}
