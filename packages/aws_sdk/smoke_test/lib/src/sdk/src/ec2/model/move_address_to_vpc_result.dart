// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.move_address_to_vpc_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/status.dart' as _i2;

part 'move_address_to_vpc_result.g.dart';

abstract class MoveAddressToVpcResult
    with _i1.AWSEquatable<MoveAddressToVpcResult>
    implements Built<MoveAddressToVpcResult, MoveAddressToVpcResultBuilder> {
  factory MoveAddressToVpcResult({
    String? allocationId,
    _i2.Status? status,
  }) {
    return _$MoveAddressToVpcResult._(
      allocationId: allocationId,
      status: status,
    );
  }

  factory MoveAddressToVpcResult.build(
          [void Function(MoveAddressToVpcResultBuilder) updates]) =
      _$MoveAddressToVpcResult;

  const MoveAddressToVpcResult._();

  /// Constructs a [MoveAddressToVpcResult] from a [payload] and [response].
  factory MoveAddressToVpcResult.fromResponse(
    MoveAddressToVpcResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    MoveAddressToVpcResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MoveAddressToVpcResultBuilder b) {}

  /// The allocation ID for the Elastic IP address.
  String? get allocationId;

  /// The status of the move of the IP address.
  _i2.Status? get status;
  @override
  List<Object?> get props => [
        allocationId,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MoveAddressToVpcResult');
    helper.add(
      'allocationId',
      allocationId,
    );
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class MoveAddressToVpcResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<MoveAddressToVpcResult> {
  const MoveAddressToVpcResultEc2QuerySerializer()
      : super('MoveAddressToVpcResult');

  @override
  Iterable<Type> get types => const [
        MoveAddressToVpcResult,
        _$MoveAddressToVpcResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  MoveAddressToVpcResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MoveAddressToVpcResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'allocationId':
          if (value != null) {
            result.allocationId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Status),
            ) as _i2.Status);
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
    final payload = (object as MoveAddressToVpcResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'MoveAddressToVpcResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.allocationId != null) {
      result
        ..add(const _i3.XmlElementName('AllocationId'))
        ..add(serializers.serialize(
          payload.allocationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i2.Status),
        ));
    }
    return result;
  }
}
