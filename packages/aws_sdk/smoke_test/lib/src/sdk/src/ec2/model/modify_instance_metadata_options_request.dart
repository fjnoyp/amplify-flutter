// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_instance_metadata_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/http_tokens_state.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_endpoint_state.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_protocol_state.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_tags_state.dart'
    as _i6;

part 'modify_instance_metadata_options_request.g.dart';

abstract class ModifyInstanceMetadataOptionsRequest
    with
        _i1.HttpInput<ModifyInstanceMetadataOptionsRequest>,
        _i2.AWSEquatable<ModifyInstanceMetadataOptionsRequest>
    implements
        Built<ModifyInstanceMetadataOptionsRequest,
            ModifyInstanceMetadataOptionsRequestBuilder> {
  factory ModifyInstanceMetadataOptionsRequest({
    required String instanceId,
    _i3.HttpTokensState? httpTokens,
    int? httpPutResponseHopLimit,
    _i4.InstanceMetadataEndpointState? httpEndpoint,
    bool? dryRun,
    _i5.InstanceMetadataProtocolState? httpProtocolIpv6,
    _i6.InstanceMetadataTagsState? instanceMetadataTags,
  }) {
    httpPutResponseHopLimit ??= 0;
    dryRun ??= false;
    return _$ModifyInstanceMetadataOptionsRequest._(
      instanceId: instanceId,
      httpTokens: httpTokens,
      httpPutResponseHopLimit: httpPutResponseHopLimit,
      httpEndpoint: httpEndpoint,
      dryRun: dryRun,
      httpProtocolIpv6: httpProtocolIpv6,
      instanceMetadataTags: instanceMetadataTags,
    );
  }

  factory ModifyInstanceMetadataOptionsRequest.build(
      [void Function(ModifyInstanceMetadataOptionsRequestBuilder)
          updates]) = _$ModifyInstanceMetadataOptionsRequest;

  const ModifyInstanceMetadataOptionsRequest._();

  factory ModifyInstanceMetadataOptionsRequest.fromRequest(
    ModifyInstanceMetadataOptionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyInstanceMetadataOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyInstanceMetadataOptionsRequestBuilder b) {
    b.httpPutResponseHopLimit = 0;
    b.dryRun = false;
  }

  /// The ID of the instance.
  String get instanceId;

  /// The state of token usage for your instance metadata requests. If the parameter is not specified in the request, the default state is `optional`.
  ///
  /// If the state is `optional`, you can choose to retrieve instance metadata with or without a session token on your request. If you retrieve the IAM role credentials without a token, the version 1.0 role credentials are returned. If you retrieve the IAM role credentials using a valid session token, the version 2.0 role credentials are returned.
  ///
  /// If the state is `required`, you must send a session token with any instance metadata retrieval requests. In this state, retrieving the IAM role credentials always returns the version 2.0 credentials; the version 1.0 credentials are not available.
  _i3.HttpTokensState? get httpTokens;

  /// The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. If no parameter is specified, the existing state is maintained.
  ///
  /// Possible values: Integers from 1 to 64
  int get httpPutResponseHopLimit;

  /// Enables or disables the HTTP metadata endpoint on your instances. If this parameter is not specified, the existing state is maintained.
  ///
  /// If you specify a value of `disabled`, you cannot access your instance metadata.
  _i4.InstanceMetadataEndpointState? get httpEndpoint;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Enables or disables the IPv6 endpoint for the instance metadata service. This setting applies only if you have enabled the HTTP metadata endpoint.
  _i5.InstanceMetadataProtocolState? get httpProtocolIpv6;

  /// Set to `enabled` to allow access to instance tags from the instance metadata. Set to `disabled` to turn off access to instance tags from the instance metadata. For more information, see [Work with instance tags using the instance metadata](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS).
  ///
  /// Default: `disabled`
  _i6.InstanceMetadataTagsState? get instanceMetadataTags;
  @override
  ModifyInstanceMetadataOptionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceId,
        httpTokens,
        httpPutResponseHopLimit,
        httpEndpoint,
        dryRun,
        httpProtocolIpv6,
        instanceMetadataTags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyInstanceMetadataOptionsRequest');
    helper.add(
      'instanceId',
      instanceId,
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
      'dryRun',
      dryRun,
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

class ModifyInstanceMetadataOptionsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyInstanceMetadataOptionsRequest> {
  const ModifyInstanceMetadataOptionsRequestEc2QuerySerializer()
      : super('ModifyInstanceMetadataOptionsRequest');

  @override
  Iterable<Type> get types => const [
        ModifyInstanceMetadataOptionsRequest,
        _$ModifyInstanceMetadataOptionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyInstanceMetadataOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyInstanceMetadataOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'InstanceId':
          result.instanceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'HttpTokens':
          if (value != null) {
            result.httpTokens = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.HttpTokensState),
            ) as _i3.HttpTokensState);
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
              specifiedType: const FullType(_i4.InstanceMetadataEndpointState),
            ) as _i4.InstanceMetadataEndpointState);
          }
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'HttpProtocolIpv6':
          if (value != null) {
            result.httpProtocolIpv6 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.InstanceMetadataProtocolState),
            ) as _i5.InstanceMetadataProtocolState);
          }
          break;
        case 'InstanceMetadataTags':
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
    final payload = (object as ModifyInstanceMetadataOptionsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyInstanceMetadataOptionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('InstanceId'))
      ..add(serializers.serialize(
        payload.instanceId,
        specifiedType: const FullType(String),
      ));
    if (payload.httpTokens != null) {
      result
        ..add(const _i1.XmlElementName('HttpTokens'))
        ..add(serializers.serialize(
          payload.httpTokens!,
          specifiedType: const FullType.nullable(_i3.HttpTokensState),
        ));
    }
    result
      ..add(const _i1.XmlElementName('HttpPutResponseHopLimit'))
      ..add(serializers.serialize(
        payload.httpPutResponseHopLimit,
        specifiedType: const FullType(int),
      ));
    if (payload.httpEndpoint != null) {
      result
        ..add(const _i1.XmlElementName('HttpEndpoint'))
        ..add(serializers.serialize(
          payload.httpEndpoint!,
          specifiedType:
              const FullType.nullable(_i4.InstanceMetadataEndpointState),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.httpProtocolIpv6 != null) {
      result
        ..add(const _i1.XmlElementName('HttpProtocolIpv6'))
        ..add(serializers.serialize(
          payload.httpProtocolIpv6!,
          specifiedType:
              const FullType.nullable(_i5.InstanceMetadataProtocolState),
        ));
    }
    if (payload.instanceMetadataTags != null) {
      result
        ..add(const _i1.XmlElementName('InstanceMetadataTags'))
        ..add(serializers.serialize(
          payload.instanceMetadataTags!,
          specifiedType: const FullType.nullable(_i6.InstanceMetadataTagsState),
        ));
    }
    return result;
  }
}
