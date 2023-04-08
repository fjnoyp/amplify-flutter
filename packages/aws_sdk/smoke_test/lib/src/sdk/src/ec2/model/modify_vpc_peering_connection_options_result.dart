// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_vpc_peering_connection_options_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/peering_connection_options.dart'
    as _i2;

part 'modify_vpc_peering_connection_options_result.g.dart';

abstract class ModifyVpcPeeringConnectionOptionsResult
    with
        _i1.AWSEquatable<ModifyVpcPeeringConnectionOptionsResult>
    implements
        Built<ModifyVpcPeeringConnectionOptionsResult,
            ModifyVpcPeeringConnectionOptionsResultBuilder> {
  factory ModifyVpcPeeringConnectionOptionsResult({
    _i2.PeeringConnectionOptions? accepterPeeringConnectionOptions,
    _i2.PeeringConnectionOptions? requesterPeeringConnectionOptions,
  }) {
    return _$ModifyVpcPeeringConnectionOptionsResult._(
      accepterPeeringConnectionOptions: accepterPeeringConnectionOptions,
      requesterPeeringConnectionOptions: requesterPeeringConnectionOptions,
    );
  }

  factory ModifyVpcPeeringConnectionOptionsResult.build(
      [void Function(ModifyVpcPeeringConnectionOptionsResultBuilder)
          updates]) = _$ModifyVpcPeeringConnectionOptionsResult;

  const ModifyVpcPeeringConnectionOptionsResult._();

  /// Constructs a [ModifyVpcPeeringConnectionOptionsResult] from a [payload] and [response].
  factory ModifyVpcPeeringConnectionOptionsResult.fromResponse(
    ModifyVpcPeeringConnectionOptionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ModifyVpcPeeringConnectionOptionsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpcPeeringConnectionOptionsResultBuilder b) {}

  /// Information about the VPC peering connection options for the accepter VPC.
  _i2.PeeringConnectionOptions? get accepterPeeringConnectionOptions;

  /// Information about the VPC peering connection options for the requester VPC.
  _i2.PeeringConnectionOptions? get requesterPeeringConnectionOptions;
  @override
  List<Object?> get props => [
        accepterPeeringConnectionOptions,
        requesterPeeringConnectionOptions,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyVpcPeeringConnectionOptionsResult');
    helper.add(
      'accepterPeeringConnectionOptions',
      accepterPeeringConnectionOptions,
    );
    helper.add(
      'requesterPeeringConnectionOptions',
      requesterPeeringConnectionOptions,
    );
    return helper.toString();
  }
}

class ModifyVpcPeeringConnectionOptionsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<ModifyVpcPeeringConnectionOptionsResult> {
  const ModifyVpcPeeringConnectionOptionsResultEc2QuerySerializer()
      : super('ModifyVpcPeeringConnectionOptionsResult');

  @override
  Iterable<Type> get types => const [
        ModifyVpcPeeringConnectionOptionsResult,
        _$ModifyVpcPeeringConnectionOptionsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpcPeeringConnectionOptionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpcPeeringConnectionOptionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'accepterPeeringConnectionOptions':
          if (value != null) {
            result.accepterPeeringConnectionOptions
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PeeringConnectionOptions),
            ) as _i2.PeeringConnectionOptions));
          }
          break;
        case 'requesterPeeringConnectionOptions':
          if (value != null) {
            result.requesterPeeringConnectionOptions
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PeeringConnectionOptions),
            ) as _i2.PeeringConnectionOptions));
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
    final payload = (object as ModifyVpcPeeringConnectionOptionsResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ModifyVpcPeeringConnectionOptionsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.accepterPeeringConnectionOptions != null) {
      result
        ..add(const _i3.XmlElementName('AccepterPeeringConnectionOptions'))
        ..add(serializers.serialize(
          payload.accepterPeeringConnectionOptions!,
          specifiedType: const FullType(_i2.PeeringConnectionOptions),
        ));
    }
    if (payload.requesterPeeringConnectionOptions != null) {
      result
        ..add(const _i3.XmlElementName('RequesterPeeringConnectionOptions'))
        ..add(serializers.serialize(
          payload.requesterPeeringConnectionOptions!,
          specifiedType: const FullType(_i2.PeeringConnectionOptions),
        ));
    }
    return result;
  }
}
