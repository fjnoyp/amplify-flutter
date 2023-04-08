// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.reset_network_interface_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'reset_network_interface_attribute_request.g.dart';

/// Contains the parameters for ResetNetworkInterfaceAttribute.
abstract class ResetNetworkInterfaceAttributeRequest
    with
        _i1.HttpInput<ResetNetworkInterfaceAttributeRequest>,
        _i2.AWSEquatable<ResetNetworkInterfaceAttributeRequest>
    implements
        Built<ResetNetworkInterfaceAttributeRequest,
            ResetNetworkInterfaceAttributeRequestBuilder> {
  /// Contains the parameters for ResetNetworkInterfaceAttribute.
  factory ResetNetworkInterfaceAttributeRequest({
    bool? dryRun,
    required String networkInterfaceId,
    String? sourceDestCheck,
  }) {
    dryRun ??= false;
    return _$ResetNetworkInterfaceAttributeRequest._(
      dryRun: dryRun,
      networkInterfaceId: networkInterfaceId,
      sourceDestCheck: sourceDestCheck,
    );
  }

  /// Contains the parameters for ResetNetworkInterfaceAttribute.
  factory ResetNetworkInterfaceAttributeRequest.build(
      [void Function(ResetNetworkInterfaceAttributeRequestBuilder)
          updates]) = _$ResetNetworkInterfaceAttributeRequest;

  const ResetNetworkInterfaceAttributeRequest._();

  factory ResetNetworkInterfaceAttributeRequest.fromRequest(
    ResetNetworkInterfaceAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ResetNetworkInterfaceAttributeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResetNetworkInterfaceAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the network interface.
  String get networkInterfaceId;

  /// The source/destination checking attribute. Resets the value to `true`.
  String? get sourceDestCheck;
  @override
  ResetNetworkInterfaceAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        networkInterfaceId,
        sourceDestCheck,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ResetNetworkInterfaceAttributeRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'networkInterfaceId',
      networkInterfaceId,
    );
    helper.add(
      'sourceDestCheck',
      sourceDestCheck,
    );
    return helper.toString();
  }
}

class ResetNetworkInterfaceAttributeRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ResetNetworkInterfaceAttributeRequest> {
  const ResetNetworkInterfaceAttributeRequestEc2QuerySerializer()
      : super('ResetNetworkInterfaceAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ResetNetworkInterfaceAttributeRequest,
        _$ResetNetworkInterfaceAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ResetNetworkInterfaceAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResetNetworkInterfaceAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'sourceDestCheck':
          if (value != null) {
            result.sourceDestCheck = (serializers.deserialize(
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
    final payload = (object as ResetNetworkInterfaceAttributeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ResetNetworkInterfaceAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('NetworkInterfaceId'))
      ..add(serializers.serialize(
        payload.networkInterfaceId,
        specifiedType: const FullType(String),
      ));
    if (payload.sourceDestCheck != null) {
      result
        ..add(const _i1.XmlElementName('SourceDestCheck'))
        ..add(serializers.serialize(
          payload.sourceDestCheck!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
