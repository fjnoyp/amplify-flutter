// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_instance_metadata_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_http_tokens_state.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_endpoint_state.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_protocol_ipv6.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_tags_state.dart'
    as _i5;

part 'launch_template_instance_metadata_options_request.g.dart';

/// The metadata options for the instance. For more information, see [Instance metadata and user data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) in the _Amazon Elastic Compute Cloud User Guide_.
abstract class LaunchTemplateInstanceMetadataOptionsRequest
    with
        _i1.AWSEquatable<LaunchTemplateInstanceMetadataOptionsRequest>
    implements
        Built<LaunchTemplateInstanceMetadataOptionsRequest,
            LaunchTemplateInstanceMetadataOptionsRequestBuilder> {
  /// The metadata options for the instance. For more information, see [Instance metadata and user data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) in the _Amazon Elastic Compute Cloud User Guide_.
  factory LaunchTemplateInstanceMetadataOptionsRequest({
    _i2.LaunchTemplateHttpTokensState? httpTokens,
    int? httpPutResponseHopLimit,
    _i3.LaunchTemplateInstanceMetadataEndpointState? httpEndpoint,
    _i4.LaunchTemplateInstanceMetadataProtocolIpv6? httpProtocolIpv6,
    _i5.LaunchTemplateInstanceMetadataTagsState? instanceMetadataTags,
  }) {
    httpPutResponseHopLimit ??= 0;
    return _$LaunchTemplateInstanceMetadataOptionsRequest._(
      httpTokens: httpTokens,
      httpPutResponseHopLimit: httpPutResponseHopLimit,
      httpEndpoint: httpEndpoint,
      httpProtocolIpv6: httpProtocolIpv6,
      instanceMetadataTags: instanceMetadataTags,
    );
  }

  /// The metadata options for the instance. For more information, see [Instance metadata and user data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) in the _Amazon Elastic Compute Cloud User Guide_.
  factory LaunchTemplateInstanceMetadataOptionsRequest.build(
      [void Function(LaunchTemplateInstanceMetadataOptionsRequestBuilder)
          updates]) = _$LaunchTemplateInstanceMetadataOptionsRequest;

  const LaunchTemplateInstanceMetadataOptionsRequest._();

  static const List<_i6.SmithySerializer> serializers = [
    LaunchTemplateInstanceMetadataOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateInstanceMetadataOptionsRequestBuilder b) {
    b.httpPutResponseHopLimit = 0;
  }

  /// The state of token usage for your instance metadata requests. If the parameter is not specified in the request, the default state is `optional`.
  ///
  /// If the state is `optional`, you can choose to retrieve instance metadata with or without a signed token header on your request. If you retrieve the IAM role credentials without a token, the version 1.0 role credentials are returned. If you retrieve the IAM role credentials using a valid signed token, the version 2.0 role credentials are returned.
  ///
  /// If the state is `required`, you must send a signed token header with any instance metadata retrieval requests. In this state, retrieving the IAM role credentials always returns the version 2.0 credentials; the version 1.0 credentials are not available.
  _i2.LaunchTemplateHttpTokensState? get httpTokens;

  /// The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel.
  ///
  /// Default: `1`
  ///
  /// Possible values: Integers from 1 to 64
  int get httpPutResponseHopLimit;

  /// Enables or disables the HTTP metadata endpoint on your instances. If the parameter is not specified, the default state is `enabled`.
  ///
  /// If you specify a value of `disabled`, you will not be able to access your instance metadata.
  _i3.LaunchTemplateInstanceMetadataEndpointState? get httpEndpoint;

  /// Enables or disables the IPv6 endpoint for the instance metadata service.
  ///
  /// Default: `disabled`
  _i4.LaunchTemplateInstanceMetadataProtocolIpv6? get httpProtocolIpv6;

  /// Set to `enabled` to allow access to instance tags from the instance metadata. Set to `disabled` to turn off access to instance tags from the instance metadata. For more information, see [Work with instance tags using the instance metadata](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS).
  ///
  /// Default: `disabled`
  _i5.LaunchTemplateInstanceMetadataTagsState? get instanceMetadataTags;
  @override
  List<Object?> get props => [
        httpTokens,
        httpPutResponseHopLimit,
        httpEndpoint,
        httpProtocolIpv6,
        instanceMetadataTags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'LaunchTemplateInstanceMetadataOptionsRequest');
    helper.add(
      'httpTokens',
      httpTokens,
    );
    helper.add(
      'httpPutResponseHopLimit',
      httpPutResponseHopLimit,
    );
    helper.add(
      'httpEndpoint',
      httpEndpoint,
    );
    helper.add(
      'httpProtocolIpv6',
      httpProtocolIpv6,
    );
    helper.add(
      'instanceMetadataTags',
      instanceMetadataTags,
    );
    return helper.toString();
  }
}

class LaunchTemplateInstanceMetadataOptionsRequestEc2QuerySerializer extends _i6
    .StructuredSmithySerializer<LaunchTemplateInstanceMetadataOptionsRequest> {
  const LaunchTemplateInstanceMetadataOptionsRequestEc2QuerySerializer()
      : super('LaunchTemplateInstanceMetadataOptionsRequest');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateInstanceMetadataOptionsRequest,
        _$LaunchTemplateInstanceMetadataOptionsRequest,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateInstanceMetadataOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateInstanceMetadataOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'HttpTokens':
          if (value != null) {
            result.httpTokens = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.LaunchTemplateHttpTokensState),
            ) as _i2.LaunchTemplateHttpTokensState);
          }
          break;
        case 'HttpPutResponseHopLimit':
          result.httpPutResponseHopLimit = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'HttpEndpoint':
          if (value != null) {
            result.httpEndpoint = (serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i3.LaunchTemplateInstanceMetadataEndpointState),
            ) as _i3.LaunchTemplateInstanceMetadataEndpointState);
          }
          break;
        case 'HttpProtocolIpv6':
          if (value != null) {
            result.httpProtocolIpv6 = (serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i4.LaunchTemplateInstanceMetadataProtocolIpv6),
            ) as _i4.LaunchTemplateInstanceMetadataProtocolIpv6);
          }
          break;
        case 'InstanceMetadataTags':
          if (value != null) {
            result.instanceMetadataTags = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i5.LaunchTemplateInstanceMetadataTagsState),
            ) as _i5.LaunchTemplateInstanceMetadataTagsState);
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
    final payload = (object as LaunchTemplateInstanceMetadataOptionsRequest);
    final result = <Object?>[
      const _i6.XmlElementName(
        'LaunchTemplateInstanceMetadataOptionsRequestResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.httpTokens != null) {
      result
        ..add(const _i6.XmlElementName('HttpTokens'))
        ..add(serializers.serialize(
          payload.httpTokens!,
          specifiedType:
              const FullType.nullable(_i2.LaunchTemplateHttpTokensState),
        ));
    }
    result
      ..add(const _i6.XmlElementName('HttpPutResponseHopLimit'))
      ..add(serializers.serialize(
        payload.httpPutResponseHopLimit,
        specifiedType: const FullType(int),
      ));
    if (payload.httpEndpoint != null) {
      result
        ..add(const _i6.XmlElementName('HttpEndpoint'))
        ..add(serializers.serialize(
          payload.httpEndpoint!,
          specifiedType: const FullType.nullable(
              _i3.LaunchTemplateInstanceMetadataEndpointState),
        ));
    }
    if (payload.httpProtocolIpv6 != null) {
      result
        ..add(const _i6.XmlElementName('HttpProtocolIpv6'))
        ..add(serializers.serialize(
          payload.httpProtocolIpv6!,
          specifiedType: const FullType.nullable(
              _i4.LaunchTemplateInstanceMetadataProtocolIpv6),
        ));
    }
    if (payload.instanceMetadataTags != null) {
      result
        ..add(const _i6.XmlElementName('InstanceMetadataTags'))
        ..add(serializers.serialize(
          payload.instanceMetadataTags!,
          specifiedType: const FullType.nullable(
              _i5.LaunchTemplateInstanceMetadataTagsState),
        ));
    }
    return result;
  }
}
