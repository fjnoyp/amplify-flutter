// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.restore_address_to_classic_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/status.dart' as _i2;

part 'restore_address_to_classic_result.g.dart';

abstract class RestoreAddressToClassicResult
    with
        _i1.AWSEquatable<RestoreAddressToClassicResult>
    implements
        Built<RestoreAddressToClassicResult,
            RestoreAddressToClassicResultBuilder> {
  factory RestoreAddressToClassicResult({
    String? publicIp,
    _i2.Status? status,
  }) {
    return _$RestoreAddressToClassicResult._(
      publicIp: publicIp,
      status: status,
    );
  }

  factory RestoreAddressToClassicResult.build(
          [void Function(RestoreAddressToClassicResultBuilder) updates]) =
      _$RestoreAddressToClassicResult;

  const RestoreAddressToClassicResult._();

  /// Constructs a [RestoreAddressToClassicResult] from a [payload] and [response].
  factory RestoreAddressToClassicResult.fromResponse(
    RestoreAddressToClassicResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    RestoreAddressToClassicResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestoreAddressToClassicResultBuilder b) {}

  /// The Elastic IP address.
  String? get publicIp;

  /// The move status for the IP address.
  _i2.Status? get status;
  @override
  List<Object?> get props => [
        publicIp,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RestoreAddressToClassicResult');
    helper.add(
      'publicIp',
      publicIp,
    );
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class RestoreAddressToClassicResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<RestoreAddressToClassicResult> {
  const RestoreAddressToClassicResultEc2QuerySerializer()
      : super('RestoreAddressToClassicResult');

  @override
  Iterable<Type> get types => const [
        RestoreAddressToClassicResult,
        _$RestoreAddressToClassicResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RestoreAddressToClassicResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestoreAddressToClassicResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'publicIp':
          if (value != null) {
            result.publicIp = (serializers.deserialize(
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
    final payload = (object as RestoreAddressToClassicResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'RestoreAddressToClassicResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.publicIp != null) {
      result
        ..add(const _i3.XmlElementName('PublicIp'))
        ..add(serializers.serialize(
          payload.publicIp!,
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
