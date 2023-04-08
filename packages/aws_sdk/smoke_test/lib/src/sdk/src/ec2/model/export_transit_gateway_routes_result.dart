// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.export_transit_gateway_routes_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'export_transit_gateway_routes_result.g.dart';

abstract class ExportTransitGatewayRoutesResult
    with
        _i1.AWSEquatable<ExportTransitGatewayRoutesResult>
    implements
        Built<ExportTransitGatewayRoutesResult,
            ExportTransitGatewayRoutesResultBuilder> {
  factory ExportTransitGatewayRoutesResult({String? s3Location}) {
    return _$ExportTransitGatewayRoutesResult._(s3Location: s3Location);
  }

  factory ExportTransitGatewayRoutesResult.build(
          [void Function(ExportTransitGatewayRoutesResultBuilder) updates]) =
      _$ExportTransitGatewayRoutesResult;

  const ExportTransitGatewayRoutesResult._();

  /// Constructs a [ExportTransitGatewayRoutesResult] from a [payload] and [response].
  factory ExportTransitGatewayRoutesResult.fromResponse(
    ExportTransitGatewayRoutesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    ExportTransitGatewayRoutesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExportTransitGatewayRoutesResultBuilder b) {}

  /// The URL of the exported file in Amazon S3. For example, s3://_bucket_name_/VPCTransitGateway/TransitGatewayRouteTables/_file_name_.
  String? get s3Location;
  @override
  List<Object?> get props => [s3Location];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ExportTransitGatewayRoutesResult');
    helper.add(
      's3Location',
      s3Location,
    );
    return helper.toString();
  }
}

class ExportTransitGatewayRoutesResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ExportTransitGatewayRoutesResult> {
  const ExportTransitGatewayRoutesResultEc2QuerySerializer()
      : super('ExportTransitGatewayRoutesResult');

  @override
  Iterable<Type> get types => const [
        ExportTransitGatewayRoutesResult,
        _$ExportTransitGatewayRoutesResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ExportTransitGatewayRoutesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportTransitGatewayRoutesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 's3Location':
          if (value != null) {
            result.s3Location = (serializers.deserialize(
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
    final payload = (object as ExportTransitGatewayRoutesResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ExportTransitGatewayRoutesResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.s3Location != null) {
      result
        ..add(const _i2.XmlElementName('S3Location'))
        ..add(serializers.serialize(
          payload.s3Location!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
