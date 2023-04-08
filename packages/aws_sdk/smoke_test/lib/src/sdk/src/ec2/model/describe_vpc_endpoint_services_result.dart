// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_vpc_endpoint_services_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/service_detail.dart' as _i2;

part 'describe_vpc_endpoint_services_result.g.dart';

/// Contains the output of DescribeVpcEndpointServices.
abstract class DescribeVpcEndpointServicesResult
    with
        _i1.AWSEquatable<DescribeVpcEndpointServicesResult>
    implements
        Built<DescribeVpcEndpointServicesResult,
            DescribeVpcEndpointServicesResultBuilder> {
  /// Contains the output of DescribeVpcEndpointServices.
  factory DescribeVpcEndpointServicesResult({
    List<String>? serviceNames,
    List<_i2.ServiceDetail>? serviceDetails,
    String? nextToken,
  }) {
    return _$DescribeVpcEndpointServicesResult._(
      serviceNames: serviceNames == null ? null : _i3.BuiltList(serviceNames),
      serviceDetails:
          serviceDetails == null ? null : _i3.BuiltList(serviceDetails),
      nextToken: nextToken,
    );
  }

  /// Contains the output of DescribeVpcEndpointServices.
  factory DescribeVpcEndpointServicesResult.build(
          [void Function(DescribeVpcEndpointServicesResultBuilder) updates]) =
      _$DescribeVpcEndpointServicesResult;

  const DescribeVpcEndpointServicesResult._();

  /// Constructs a [DescribeVpcEndpointServicesResult] from a [payload] and [response].
  factory DescribeVpcEndpointServicesResult.fromResponse(
    DescribeVpcEndpointServicesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeVpcEndpointServicesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpcEndpointServicesResultBuilder b) {}

  /// A list of supported services.
  _i3.BuiltList<String>? get serviceNames;

  /// Information about the service.
  _i3.BuiltList<_i2.ServiceDetail>? get serviceDetails;

  /// The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
  String? get nextToken;
  @override
  List<Object?> get props => [
        serviceNames,
        serviceDetails,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeVpcEndpointServicesResult');
    helper.add(
      'serviceNames',
      serviceNames,
    );
    helper.add(
      'serviceDetails',
      serviceDetails,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeVpcEndpointServicesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeVpcEndpointServicesResult> {
  const DescribeVpcEndpointServicesResultEc2QuerySerializer()
      : super('DescribeVpcEndpointServicesResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpcEndpointServicesResult,
        _$DescribeVpcEndpointServicesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcEndpointServicesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcEndpointServicesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'serviceNameSet':
          if (value != null) {
            result.serviceNames.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
          }
          break;
        case 'serviceDetailSet':
          if (value != null) {
            result.serviceDetails.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ServiceDetail)],
              ),
            ) as _i3.BuiltList<_i2.ServiceDetail>));
          }
          break;
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
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
    final payload = (object as DescribeVpcEndpointServicesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeVpcEndpointServicesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.serviceNames != null) {
      result
        ..add(const _i4.XmlElementName('ServiceNameSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.serviceNames!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.serviceDetails != null) {
      result
        ..add(const _i4.XmlElementName('ServiceDetailSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.serviceDetails!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ServiceDetail)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
