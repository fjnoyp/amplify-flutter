// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.private_dns_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'private_dns_details.g.dart';

/// Information about the Private DNS name for interface endpoints.
abstract class PrivateDnsDetails
    with _i1.AWSEquatable<PrivateDnsDetails>
    implements Built<PrivateDnsDetails, PrivateDnsDetailsBuilder> {
  /// Information about the Private DNS name for interface endpoints.
  factory PrivateDnsDetails({String? privateDnsName}) {
    return _$PrivateDnsDetails._(privateDnsName: privateDnsName);
  }

  /// Information about the Private DNS name for interface endpoints.
  factory PrivateDnsDetails.build(
      [void Function(PrivateDnsDetailsBuilder) updates]) = _$PrivateDnsDetails;

  const PrivateDnsDetails._();

  static const List<_i2.SmithySerializer> serializers = [
    PrivateDnsDetailsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PrivateDnsDetailsBuilder b) {}

  /// The private DNS name assigned to the VPC endpoint service.
  String? get privateDnsName;
  @override
  List<Object?> get props => [privateDnsName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PrivateDnsDetails');
    helper.add(
      'privateDnsName',
      privateDnsName,
    );
    return helper.toString();
  }
}

class PrivateDnsDetailsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PrivateDnsDetails> {
  const PrivateDnsDetailsEc2QuerySerializer() : super('PrivateDnsDetails');

  @override
  Iterable<Type> get types => const [
        PrivateDnsDetails,
        _$PrivateDnsDetails,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PrivateDnsDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrivateDnsDetailsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'privateDnsName':
          if (value != null) {
            result.privateDnsName = (serializers.deserialize(
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
    final payload = (object as PrivateDnsDetails);
    final result = <Object?>[
      const _i2.XmlElementName(
        'PrivateDnsDetailsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.privateDnsName != null) {
      result
        ..add(const _i2.XmlElementName('PrivateDnsName'))
        ..add(serializers.serialize(
          payload.privateDnsName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
