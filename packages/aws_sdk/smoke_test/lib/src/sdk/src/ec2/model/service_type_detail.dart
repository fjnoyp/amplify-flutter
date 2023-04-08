// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.service_type_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/service_type.dart' as _i2;

part 'service_type_detail.g.dart';

/// Describes the type of service for a VPC endpoint.
abstract class ServiceTypeDetail
    with _i1.AWSEquatable<ServiceTypeDetail>
    implements Built<ServiceTypeDetail, ServiceTypeDetailBuilder> {
  /// Describes the type of service for a VPC endpoint.
  factory ServiceTypeDetail({_i2.ServiceType? serviceType}) {
    return _$ServiceTypeDetail._(serviceType: serviceType);
  }

  /// Describes the type of service for a VPC endpoint.
  factory ServiceTypeDetail.build(
      [void Function(ServiceTypeDetailBuilder) updates]) = _$ServiceTypeDetail;

  const ServiceTypeDetail._();

  static const List<_i3.SmithySerializer> serializers = [
    ServiceTypeDetailEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServiceTypeDetailBuilder b) {}

  /// The type of service.
  _i2.ServiceType? get serviceType;
  @override
  List<Object?> get props => [serviceType];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ServiceTypeDetail');
    helper.add(
      'serviceType',
      serviceType,
    );
    return helper.toString();
  }
}

class ServiceTypeDetailEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ServiceTypeDetail> {
  const ServiceTypeDetailEc2QuerySerializer() : super('ServiceTypeDetail');

  @override
  Iterable<Type> get types => const [
        ServiceTypeDetail,
        _$ServiceTypeDetail,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ServiceTypeDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceTypeDetailBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'serviceType':
          if (value != null) {
            result.serviceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ServiceType),
            ) as _i2.ServiceType);
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
    final payload = (object as ServiceTypeDetail);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ServiceTypeDetailResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.serviceType != null) {
      result
        ..add(const _i3.XmlElementName('ServiceType'))
        ..add(serializers.serialize(
          payload.serviceType!,
          specifiedType: const FullType.nullable(_i2.ServiceType),
        ));
    }
    return result;
  }
}
