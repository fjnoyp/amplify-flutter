// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_vpc_endpoint_service_configurations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/service_configuration.dart'
    as _i2;

part 'describe_vpc_endpoint_service_configurations_result.g.dart';

abstract class DescribeVpcEndpointServiceConfigurationsResult
    with
        _i1.AWSEquatable<DescribeVpcEndpointServiceConfigurationsResult>
    implements
        Built<DescribeVpcEndpointServiceConfigurationsResult,
            DescribeVpcEndpointServiceConfigurationsResultBuilder> {
  factory DescribeVpcEndpointServiceConfigurationsResult({
    List<_i2.ServiceConfiguration>? serviceConfigurations,
    String? nextToken,
  }) {
    return _$DescribeVpcEndpointServiceConfigurationsResult._(
      serviceConfigurations: serviceConfigurations == null
          ? null
          : _i3.BuiltList(serviceConfigurations),
      nextToken: nextToken,
    );
  }

  factory DescribeVpcEndpointServiceConfigurationsResult.build(
      [void Function(DescribeVpcEndpointServiceConfigurationsResultBuilder)
          updates]) = _$DescribeVpcEndpointServiceConfigurationsResult;

  const DescribeVpcEndpointServiceConfigurationsResult._();

  /// Constructs a [DescribeVpcEndpointServiceConfigurationsResult] from a [payload] and [response].
  factory DescribeVpcEndpointServiceConfigurationsResult.fromResponse(
    DescribeVpcEndpointServiceConfigurationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeVpcEndpointServiceConfigurationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpcEndpointServiceConfigurationsResultBuilder b) {}

  /// Information about one or more services.
  _i3.BuiltList<_i2.ServiceConfiguration>? get serviceConfigurations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        serviceConfigurations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeVpcEndpointServiceConfigurationsResult');
    helper.add(
      'serviceConfigurations',
      serviceConfigurations,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeVpcEndpointServiceConfigurationsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<
        DescribeVpcEndpointServiceConfigurationsResult> {
  const DescribeVpcEndpointServiceConfigurationsResultEc2QuerySerializer()
      : super('DescribeVpcEndpointServiceConfigurationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpcEndpointServiceConfigurationsResult,
        _$DescribeVpcEndpointServiceConfigurationsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcEndpointServiceConfigurationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcEndpointServiceConfigurationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'serviceConfigurationSet':
          if (value != null) {
            result.serviceConfigurations
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ServiceConfiguration)],
              ),
            ) as _i3.BuiltList<_i2.ServiceConfiguration>));
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
    final payload = (object as DescribeVpcEndpointServiceConfigurationsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeVpcEndpointServiceConfigurationsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.serviceConfigurations != null) {
      result
        ..add(const _i4.XmlElementName('ServiceConfigurationSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.serviceConfigurations!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ServiceConfiguration)],
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
