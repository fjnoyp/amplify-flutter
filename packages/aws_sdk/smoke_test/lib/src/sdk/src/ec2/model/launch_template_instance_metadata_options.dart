// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_instance_metadata_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_http_tokens_state.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_endpoint_state.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_options_state.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_protocol_ipv6.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_tags_state.dart'
    as _i6;

part 'launch_template_instance_metadata_options.g.dart';

/// The metadata options for the instance. For more information, see [Instance metadata and user data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) in the _Amazon Elastic Compute Cloud User Guide_.
abstract class LaunchTemplateInstanceMetadataOptions
    with
        _i1.AWSEquatable<LaunchTemplateInstanceMetadataOptions>
    implements
        Built<LaunchTemplateInstanceMetadataOptions,
            LaunchTemplateInstanceMetadataOptionsBuilder> {
  /// The metadata options for the instance. For more information, see [Instance metadata and user data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) in the _Amazon Elastic Compute Cloud User Guide_.
  factory LaunchTemplateInstanceMetadataOptions({
    _i2.LaunchTemplateInstanceMetadataOptionsState? state,
    _i3.LaunchTemplateHttpTokensState? httpTokens,
    int? httpPutResponseHopLimit,
    _i4.LaunchTemplateInstanceMetadataEndpointState? httpEndpoint,
    _i5.LaunchTemplateInstanceMetadataProtocolIpv6? httpProtocolIpv6,
    _i6.LaunchTemplateInstanceMetadataTagsState? instanceMetadataTags,
  }) {
    httpPutResponseHopLimit ??= 0;
    return _$LaunchTemplateInstanceMetadataOptions._(
      state: state,
      httpTokens: httpTokens,
      httpPutResponseHopLimit: httpPutResponseHopLimit,
      httpEndpoint: httpEndpoint,
      httpProtocolIpv6: httpProtocolIpv6,
      instanceMetadataTags: instanceMetadataTags,
    );
  }

  /// The metadata options for the instance. For more information, see [Instance metadata and user data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) in the _Amazon Elastic Compute Cloud User Guide_.
  factory LaunchTemplateInstanceMetadataOptions.build(
      [void Function(LaunchTemplateInstanceMetadataOptionsBuilder)
          updates]) = _$LaunchTemplateInstanceMetadataOptions;

  const LaunchTemplateInstanceMetadataOptions._();

  static const List<_i7.SmithySerializer> serializers = [
    LaunchTemplateInstanceMetadataOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateInstanceMetadataOptionsBuilder b) {
    b.httpPutResponseHopLimit = 0;
  }

  /// The state of the metadata option changes.
  ///
  /// `pending` \- The metadata options are being updated and the instance is not ready to process metadata traffic with the new selection.
  ///
  /// `applied` \- The metadata options have been successfully applied on the instance.
  _i2.LaunchTemplateInstanceMetadataOptionsState? get state;

  /// The state of token usage for your instance metadata requests. If the parameter is not specified in the request, the default state is `optional`.
  ///
  /// If the state is `optional`, you can choose to retrieve instance metadata with or without a signed token header on your request. If you retrieve the IAM role credentials without a token, the version 1.0 role credentials are returned. If you retrieve the IAM role credentials using a valid signed token, the version 2.0 role credentials are returned.
  ///
  /// If the state is `required`, you must send a signed token header with any instance metadata retrieval requests. In this state, retrieving the IAM role credentials always returns the version 2.0 credentials; the version 1.0 credentials are not available.
  _i3.LaunchTemplateHttpTokensState? get httpTokens;

  /// The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel.
  ///
  /// Default: 1
  ///
  /// Possible values: Integers from 1 to 64
  int get httpPutResponseHopLimit;

  /// Enables or disables the HTTP metadata endpoint on your instances. If the parameter is not specified, the default state is `enabled`.
  ///
  /// If you specify a value of `disabled`, you will not be able to access your instance metadata.
  _i4.LaunchTemplateInstanceMetadataEndpointState? get httpEndpoint;

  /// Enables or disables the IPv6 endpoint for the instance metadata service.
  ///
  /// Default: `disabled`
  _i5.LaunchTemplateInstanceMetadataProtocolIpv6? get httpProtocolIpv6;

  /// Set to `enabled` to allow access to instance tags from the instance metadata. Set to `disabled` to turn off access to instance tags from the instance metadata. For more information, see [Work with instance tags using the instance metadata](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS).
  ///
  /// Default: `disabled`
  _i6.LaunchTemplateInstanceMetadataTagsState? get instanceMetadataTags;
  @override
  List<Object?> get props => [
        state,
        httpTokens,
        httpPutResponseHopLimit,
        httpEndpoint,
        httpProtocolIpv6,
        instanceMetadataTags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateInstanceMetadataOptions');
    helper.add(
      'state',
      state,
    );
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

class LaunchTemplateInstanceMetadataOptionsEc2QuerySerializer extends _i7
    .StructuredSmithySerializer<LaunchTemplateInstanceMetadataOptions> {
  const LaunchTemplateInstanceMetadataOptionsEc2QuerySerializer()
      : super('LaunchTemplateInstanceMetadataOptions');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateInstanceMetadataOptions,
        _$LaunchTemplateInstanceMetadataOptions,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateInstanceMetadataOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateInstanceMetadataOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i2.LaunchTemplateInstanceMetadataOptionsState),
            ) as _i2.LaunchTemplateInstanceMetadataOptionsState);
          }
          break;
        case 'httpTokens':
          if (value != null) {
            result.httpTokens = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.LaunchTemplateHttpTokensState),
            ) as _i3.LaunchTemplateHttpTokensState);
          }
          break;
        case 'httpPutResponseHopLimit':
          result.httpPutResponseHopLimit = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'httpEndpoint':
          if (value != null) {
            result.httpEndpoint = (serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i4.LaunchTemplateInstanceMetadataEndpointState),
            ) as _i4.LaunchTemplateInstanceMetadataEndpointState);
          }
          break;
        case 'httpProtocolIpv6':
          if (value != null) {
            result.httpProtocolIpv6 = (serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i5.LaunchTemplateInstanceMetadataProtocolIpv6),
            ) as _i5.LaunchTemplateInstanceMetadataProtocolIpv6);
          }
          break;
        case 'instanceMetadataTags':
          if (value != null) {
            result.instanceMetadataTags = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i6.LaunchTemplateInstanceMetadataTagsState),
            ) as _i6.LaunchTemplateInstanceMetadataTagsState);
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
    final payload = (object as LaunchTemplateInstanceMetadataOptions);
    final result = <Object?>[
      const _i7.XmlElementName(
        'LaunchTemplateInstanceMetadataOptionsResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.state != null) {
      result
        ..add(const _i7.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(
              _i2.LaunchTemplateInstanceMetadataOptionsState),
        ));
    }
    if (payload.httpTokens != null) {
      result
        ..add(const _i7.XmlElementName('HttpTokens'))
        ..add(serializers.serialize(
          payload.httpTokens!,
          specifiedType:
              const FullType.nullable(_i3.LaunchTemplateHttpTokensState),
        ));
    }
    result
      ..add(const _i7.XmlElementName('HttpPutResponseHopLimit'))
      ..add(serializers.serialize(
        payload.httpPutResponseHopLimit,
        specifiedType: const FullType(int),
      ));
    if (payload.httpEndpoint != null) {
      result
        ..add(const _i7.XmlElementName('HttpEndpoint'))
        ..add(serializers.serialize(
          payload.httpEndpoint!,
          specifiedType: const FullType.nullable(
              _i4.LaunchTemplateInstanceMetadataEndpointState),
        ));
    }
    if (payload.httpProtocolIpv6 != null) {
      result
        ..add(const _i7.XmlElementName('HttpProtocolIpv6'))
        ..add(serializers.serialize(
          payload.httpProtocolIpv6!,
          specifiedType: const FullType.nullable(
              _i5.LaunchTemplateInstanceMetadataProtocolIpv6),
        ));
    }
    if (payload.instanceMetadataTags != null) {
      result
        ..add(const _i7.XmlElementName('InstanceMetadataTags'))
        ..add(serializers.serialize(
          payload.instanceMetadataTags!,
          specifiedType: const FullType.nullable(
              _i6.LaunchTemplateInstanceMetadataTagsState),
        ));
    }
    return result;
  }
}
