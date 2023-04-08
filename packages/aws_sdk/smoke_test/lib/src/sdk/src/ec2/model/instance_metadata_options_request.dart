// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_metadata_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/http_tokens_state.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_endpoint_state.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_protocol_state.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_tags_state.dart'
    as _i5;

part 'instance_metadata_options_request.g.dart';

/// The metadata options for the instance.
abstract class InstanceMetadataOptionsRequest
    with
        _i1.AWSEquatable<InstanceMetadataOptionsRequest>
    implements
        Built<InstanceMetadataOptionsRequest,
            InstanceMetadataOptionsRequestBuilder> {
  /// The metadata options for the instance.
  factory InstanceMetadataOptionsRequest({
    _i2.HttpTokensState? httpTokens,
    int? httpPutResponseHopLimit,
    _i3.InstanceMetadataEndpointState? httpEndpoint,
    _i4.InstanceMetadataProtocolState? httpProtocolIpv6,
    _i5.InstanceMetadataTagsState? instanceMetadataTags,
  }) {
    httpPutResponseHopLimit ??= 0;
    return _$InstanceMetadataOptionsRequest._(
      httpTokens: httpTokens,
      httpPutResponseHopLimit: httpPutResponseHopLimit,
      httpEndpoint: httpEndpoint,
      httpProtocolIpv6: httpProtocolIpv6,
      instanceMetadataTags: instanceMetadataTags,
    );
  }

  /// The metadata options for the instance.
  factory InstanceMetadataOptionsRequest.build(
          [void Function(InstanceMetadataOptionsRequestBuilder) updates]) =
      _$InstanceMetadataOptionsRequest;

  const InstanceMetadataOptionsRequest._();

  static const List<_i6.SmithySerializer> serializers = [
    InstanceMetadataOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceMetadataOptionsRequestBuilder b) {
    b.httpPutResponseHopLimit = 0;
  }

  /// The state of token usage for your instance metadata requests.
  ///
  /// If the state is `optional`, you can choose to retrieve instance metadata with or without a session token on your request. If you retrieve the IAM role credentials without a token, the version 1.0 role credentials are returned. If you retrieve the IAM role credentials using a valid session token, the version 2.0 role credentials are returned.
  ///
  /// If the state is `required`, you must send a session token with any instance metadata retrieval requests. In this state, retrieving the IAM role credentials always returns the version 2.0 credentials; the version 1.0 credentials are not available.
  ///
  /// Default: `optional`
  _i2.HttpTokensState? get httpTokens;

  /// The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel.
  ///
  /// Default: 1
  ///
  /// Possible values: Integers from 1 to 64
  int get httpPutResponseHopLimit;

  /// Enables or disables the HTTP metadata endpoint on your instances.
  ///
  /// If you specify a value of `disabled`, you cannot access your instance metadata.
  ///
  /// Default: `enabled`
  _i3.InstanceMetadataEndpointState? get httpEndpoint;

  /// Enables or disables the IPv6 endpoint for the instance metadata service.
  _i4.InstanceMetadataProtocolState? get httpProtocolIpv6;

  /// Set to `enabled` to allow access to instance tags from the instance metadata. Set to `disabled` to turn off access to instance tags from the instance metadata. For more information, see [Work with instance tags using the instance metadata](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS).
  ///
  /// Default: `disabled`
  _i5.InstanceMetadataTagsState? get instanceMetadataTags;
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
    final helper =
        newBuiltValueToStringHelper('InstanceMetadataOptionsRequest');
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

class InstanceMetadataOptionsRequestEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<InstanceMetadataOptionsRequest> {
  const InstanceMetadataOptionsRequestEc2QuerySerializer()
      : super('InstanceMetadataOptionsRequest');

  @override
  Iterable<Type> get types => const [
        InstanceMetadataOptionsRequest,
        _$InstanceMetadataOptionsRequest,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceMetadataOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceMetadataOptionsRequestBuilder();
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
              specifiedType: const FullType(_i2.HttpTokensState),
            ) as _i2.HttpTokensState);
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
              specifiedType: const FullType(_i3.InstanceMetadataEndpointState),
            ) as _i3.InstanceMetadataEndpointState);
          }
          break;
        case 'HttpProtocolIpv6':
          if (value != null) {
            result.httpProtocolIpv6 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.InstanceMetadataProtocolState),
            ) as _i4.InstanceMetadataProtocolState);
          }
          break;
        case 'InstanceMetadataTags':
          if (value != null) {
            result.instanceMetadataTags = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.InstanceMetadataTagsState),
            ) as _i5.InstanceMetadataTagsState);
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
    final payload = (object as InstanceMetadataOptionsRequest);
    final result = <Object?>[
      const _i6.XmlElementName(
        'InstanceMetadataOptionsRequestResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.httpTokens != null) {
      result
        ..add(const _i6.XmlElementName('HttpTokens'))
        ..add(serializers.serialize(
          payload.httpTokens!,
          specifiedType: const FullType.nullable(_i2.HttpTokensState),
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
          specifiedType:
              const FullType.nullable(_i3.InstanceMetadataEndpointState),
        ));
    }
    if (payload.httpProtocolIpv6 != null) {
      result
        ..add(const _i6.XmlElementName('HttpProtocolIpv6'))
        ..add(serializers.serialize(
          payload.httpProtocolIpv6!,
          specifiedType:
              const FullType.nullable(_i4.InstanceMetadataProtocolState),
        ));
    }
    if (payload.instanceMetadataTags != null) {
      result
        ..add(const _i6.XmlElementName('InstanceMetadataTags'))
        ..add(serializers.serialize(
          payload.instanceMetadataTags!,
          specifiedType: const FullType.nullable(_i5.InstanceMetadataTagsState),
        ));
    }
    return result;
  }
}
