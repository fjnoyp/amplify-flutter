// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_instance_uefi_data_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_instance_uefi_data_result.g.dart';

abstract class GetInstanceUefiDataResult
    with _i1.AWSEquatable<GetInstanceUefiDataResult>
    implements
        Built<GetInstanceUefiDataResult, GetInstanceUefiDataResultBuilder> {
  factory GetInstanceUefiDataResult({
    String? instanceId,
    String? uefiData,
  }) {
    return _$GetInstanceUefiDataResult._(
      instanceId: instanceId,
      uefiData: uefiData,
    );
  }

  factory GetInstanceUefiDataResult.build(
          [void Function(GetInstanceUefiDataResultBuilder) updates]) =
      _$GetInstanceUefiDataResult;

  const GetInstanceUefiDataResult._();

  /// Constructs a [GetInstanceUefiDataResult] from a [payload] and [response].
  factory GetInstanceUefiDataResult.fromResponse(
    GetInstanceUefiDataResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    GetInstanceUefiDataResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetInstanceUefiDataResultBuilder b) {}

  /// The ID of the instance from which to retrieve the UEFI data.
  String? get instanceId;

  /// Base64 representation of the non-volatile UEFI variable store.
  String? get uefiData;
  @override
  List<Object?> get props => [
        instanceId,
        uefiData,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetInstanceUefiDataResult');
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'uefiData',
      uefiData,
    );
    return helper.toString();
  }
}

class GetInstanceUefiDataResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<GetInstanceUefiDataResult> {
  const GetInstanceUefiDataResultEc2QuerySerializer()
      : super('GetInstanceUefiDataResult');

  @override
  Iterable<Type> get types => const [
        GetInstanceUefiDataResult,
        _$GetInstanceUefiDataResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetInstanceUefiDataResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetInstanceUefiDataResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'uefiData':
          if (value != null) {
            result.uefiData = (serializers.deserialize(
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
    final payload = (object as GetInstanceUefiDataResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'GetInstanceUefiDataResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceId != null) {
      result
        ..add(const _i2.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.uefiData != null) {
      result
        ..add(const _i2.XmlElementName('UefiData'))
        ..add(serializers.serialize(
          payload.uefiData!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
