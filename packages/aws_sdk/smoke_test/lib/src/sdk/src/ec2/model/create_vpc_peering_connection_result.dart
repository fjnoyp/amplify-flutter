// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_vpc_peering_connection_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection.dart'
    as _i2;

part 'create_vpc_peering_connection_result.g.dart';

abstract class CreateVpcPeeringConnectionResult
    with
        _i1.AWSEquatable<CreateVpcPeeringConnectionResult>
    implements
        Built<CreateVpcPeeringConnectionResult,
            CreateVpcPeeringConnectionResultBuilder> {
  factory CreateVpcPeeringConnectionResult(
      {_i2.VpcPeeringConnection? vpcPeeringConnection}) {
    return _$CreateVpcPeeringConnectionResult._(
        vpcPeeringConnection: vpcPeeringConnection);
  }

  factory CreateVpcPeeringConnectionResult.build(
          [void Function(CreateVpcPeeringConnectionResultBuilder) updates]) =
      _$CreateVpcPeeringConnectionResult;

  const CreateVpcPeeringConnectionResult._();

  /// Constructs a [CreateVpcPeeringConnectionResult] from a [payload] and [response].
  factory CreateVpcPeeringConnectionResult.fromResponse(
    CreateVpcPeeringConnectionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateVpcPeeringConnectionResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVpcPeeringConnectionResultBuilder b) {}

  /// Information about the VPC peering connection.
  _i2.VpcPeeringConnection? get vpcPeeringConnection;
  @override
  List<Object?> get props => [vpcPeeringConnection];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateVpcPeeringConnectionResult');
    helper.add(
      'vpcPeeringConnection',
      vpcPeeringConnection,
    );
    return helper.toString();
  }
}

class CreateVpcPeeringConnectionResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateVpcPeeringConnectionResult> {
  const CreateVpcPeeringConnectionResultEc2QuerySerializer()
      : super('CreateVpcPeeringConnectionResult');

  @override
  Iterable<Type> get types => const [
        CreateVpcPeeringConnectionResult,
        _$CreateVpcPeeringConnectionResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpcPeeringConnectionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpcPeeringConnectionResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'vpcPeeringConnection':
          if (value != null) {
            result.vpcPeeringConnection.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.VpcPeeringConnection),
            ) as _i2.VpcPeeringConnection));
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
    final payload = (object as CreateVpcPeeringConnectionResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateVpcPeeringConnectionResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.vpcPeeringConnection != null) {
      result
        ..add(const _i3.XmlElementName('VpcPeeringConnection'))
        ..add(serializers.serialize(
          payload.vpcPeeringConnection!,
          specifiedType: const FullType(_i2.VpcPeeringConnection),
        ));
    }
    return result;
  }
}
