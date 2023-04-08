// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_metadata_options_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/http_tokens_state.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_endpoint_state.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_options_state.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_protocol_state.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_tags_state.dart'
    as _i6;

part 'instance_metadata_options_response.g.dart';

/// The metadata options for the instance.
abstract class InstanceMetadataOptionsResponse
    with
        _i1.AWSEquatable<InstanceMetadataOptionsResponse>
    implements
        Built<InstanceMetadataOptionsResponse,
            InstanceMetadataOptionsResponseBuilder> {
  /// The metadata options for the instance.
  factory InstanceMetadataOptionsResponse({
    _i2.InstanceMetadataOptionsState? state,
    _i3.HttpTokensState? httpTokens,
    int? httpPutResponseHopLimit,
    _i4.InstanceMetadataEndpointState? httpEndpoint,
    _i5.InstanceMetadataProtocolState? httpProtocolIpv6,
    _i6.InstanceMetadataTagsState? instanceMetadataTags,
  }) {
    httpPutResponseHopLimit ??= 0;
    return _$InstanceMetadataOptionsResponse._(
      state: state,
      httpTokens: httpTokens,
      httpPutResponseHopLimit: httpPutResponseHopLimit,
      httpEndpoint: httpEndpoint,
      httpProtocolIpv6: httpProtocolIpv6,
      instanceMetadataTags: instanceMetadataTags,
    );
  }

  /// The metadata options for the instance.
  factory InstanceMetadataOptionsResponse.build(
          [void Function(InstanceMetadataOptionsResponseBuilder) updates]) =
      _$InstanceMetadataOptionsResponse;

  const InstanceMetadataOptionsResponse._();

  static const List<_i7.SmithySerializer> serializers = [
    InstanceMetadataOptionsResponseEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceMetadataOptionsResponseBuilder b) {
    b.httpPutResponseHopLimit = 0;
  }

  /// The state of the metadata option changes.
  ///
  /// `pending` \- The metadata options are being updated and the instance is not ready to process metadata traffic with the new selection.
  ///
  /// `applied` \- The metadata options have been successfully applied on the instance.
  _i2.InstanceMetadataOptionsState? get state;

  /// The state of token usage for your instance metadata requests.
  ///
  /// If the state is `optional`, you can choose to retrieve instance metadata with or without a session token on your request. If you retrieve the IAM role credentials without a token, the version 1.0 role credentials are returned. If you retrieve the IAM role credentials using a valid session token, the version 2.0 role credentials are returned.
  ///
  /// If the state is `required`, you must send a session token with any instance metadata retrieval requests. In this state, retrieving the IAM role credentials always returns the version 2.0 credentials; the version 1.0 credentials are not available.
  ///
  /// Default: `optional`
  _i3.HttpTokensState? get httpTokens;

  /// The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel.
  ///
  /// Default: 1
  ///
  /// Possible values: Integers from 1 to 64
  int get httpPutResponseHopLimit;

  /// Indicates whether the HTTP metadata endpoint on your instances is enabled or disabled.
  ///
  /// If the value is `disabled`, you cannot access your instance metadata.
  _i4.InstanceMetadataEndpointState? get httpEndpoint;

  /// Indicates whether the IPv6 endpoint for the instance metadata service is enabled or disabled.
  _i5.InstanceMetadataProtocolState? get httpProtocolIpv6;

  /// Indicates whether access to instance tags from the instance metadata is enabled or disabled. For more information, see [Work with instance tags using the instance metadata](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS).
  _i6.InstanceMetadataTagsState? get instanceMetadataTags;
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
        newBuiltValueToStringHelper('InstanceMetadataOptionsResponse');
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

class InstanceMetadataOptionsResponseEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<InstanceMetadataOptionsResponse> {
  const InstanceMetadataOptionsResponseEc2QuerySerializer()
      : super('InstanceMetadataOptionsResponse');

  @override
  Iterable<Type> get types => const [
        InstanceMetadataOptionsResponse,
        _$InstanceMetadataOptionsResponse,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceMetadataOptionsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceMetadataOptionsResponseBuilder();
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
              specifiedType: const FullType(_i2.InstanceMetadataOptionsState),
            ) as _i2.InstanceMetadataOptionsState);
          }
          break;
        case 'httpTokens':
          if (value != null) {
            result.httpTokens = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.HttpTokensState),
            ) as _i3.HttpTokensState);
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
              specifiedType: const FullType(_i4.InstanceMetadataEndpointState),
            ) as _i4.InstanceMetadataEndpointState);
          }
          break;
        case 'httpProtocolIpv6':
          if (value != null) {
            result.httpProtocolIpv6 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.InstanceMetadataProtocolState),
            ) as _i5.InstanceMetadataProtocolState);
          }
          break;
        case 'instanceMetadataTags':
          if (value != null) {
            result.instanceMetadataTags = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.InstanceMetadataTagsState),
            ) as _i6.InstanceMetadataTagsState);
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
    final payload = (object as InstanceMetadataOptionsResponse);
    final result = <Object?>[
      const _i7.XmlElementName(
        'InstanceMetadataOptionsResponseResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.state != null) {
      result
        ..add(const _i7.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType:
              const FullType.nullable(_i2.InstanceMetadataOptionsState),
        ));
    }
    if (payload.httpTokens != null) {
      result
        ..add(const _i7.XmlElementName('HttpTokens'))
        ..add(serializers.serialize(
          payload.httpTokens!,
          specifiedType: const FullType.nullable(_i3.HttpTokensState),
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
          specifiedType:
              const FullType.nullable(_i4.InstanceMetadataEndpointState),
        ));
    }
    if (payload.httpProtocolIpv6 != null) {
      result
        ..add(const _i7.XmlElementName('HttpProtocolIpv6'))
        ..add(serializers.serialize(
          payload.httpProtocolIpv6!,
          specifiedType:
              const FullType.nullable(_i5.InstanceMetadataProtocolState),
        ));
    }
    if (payload.instanceMetadataTags != null) {
      result
        ..add(const _i7.XmlElementName('InstanceMetadataTags'))
        ..add(serializers.serialize(
          payload.instanceMetadataTags!,
          specifiedType: const FullType.nullable(_i6.InstanceMetadataTagsState),
        ));
    }
    return result;
  }
}
