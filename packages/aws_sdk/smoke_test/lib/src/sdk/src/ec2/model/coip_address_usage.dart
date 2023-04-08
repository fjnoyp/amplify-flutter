// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.coip_address_usage; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'coip_address_usage.g.dart';

/// Describes address usage for a customer-owned address pool.
abstract class CoipAddressUsage
    with _i1.AWSEquatable<CoipAddressUsage>
    implements Built<CoipAddressUsage, CoipAddressUsageBuilder> {
  /// Describes address usage for a customer-owned address pool.
  factory CoipAddressUsage({
    String? allocationId,
    String? awsAccountId,
    String? awsService,
    String? coIp,
  }) {
    return _$CoipAddressUsage._(
      allocationId: allocationId,
      awsAccountId: awsAccountId,
      awsService: awsService,
      coIp: coIp,
    );
  }

  /// Describes address usage for a customer-owned address pool.
  factory CoipAddressUsage.build(
      [void Function(CoipAddressUsageBuilder) updates]) = _$CoipAddressUsage;

  const CoipAddressUsage._();

  static const List<_i2.SmithySerializer> serializers = [
    CoipAddressUsageEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CoipAddressUsageBuilder b) {}

  /// The allocation ID of the address.
  String? get allocationId;

  /// The Amazon Web Services account ID.
  String? get awsAccountId;

  /// The Amazon Web Services service.
  String? get awsService;

  /// The customer-owned IP address.
  String? get coIp;
  @override
  List<Object?> get props => [
        allocationId,
        awsAccountId,
        awsService,
        coIp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CoipAddressUsage');
    helper.add(
      'allocationId',
      allocationId,
    );
    helper.add(
      'awsAccountId',
      awsAccountId,
    );
    helper.add(
      'awsService',
      awsService,
    );
    helper.add(
      'coIp',
      coIp,
    );
    return helper.toString();
  }
}

class CoipAddressUsageEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CoipAddressUsage> {
  const CoipAddressUsageEc2QuerySerializer() : super('CoipAddressUsage');

  @override
  Iterable<Type> get types => const [
        CoipAddressUsage,
        _$CoipAddressUsage,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CoipAddressUsage deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CoipAddressUsageBuilder();
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
        case 'awsAccountId':
          if (value != null) {
            result.awsAccountId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'awsService':
          if (value != null) {
            result.awsService = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'coIp':
          if (value != null) {
            result.coIp = (serializers.deserialize(
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
    final payload = (object as CoipAddressUsage);
    final result = <Object?>[
      const _i2.XmlElementName(
        'CoipAddressUsageResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.allocationId != null) {
      result
        ..add(const _i2.XmlElementName('AllocationId'))
        ..add(serializers.serialize(
          payload.allocationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.awsAccountId != null) {
      result
        ..add(const _i2.XmlElementName('AwsAccountId'))
        ..add(serializers.serialize(
          payload.awsAccountId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.awsService != null) {
      result
        ..add(const _i2.XmlElementName('AwsService'))
        ..add(serializers.serialize(
          payload.awsService!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.coIp != null) {
      result
        ..add(const _i2.XmlElementName('CoIp'))
        ..add(serializers.serialize(
          payload.coIp!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
