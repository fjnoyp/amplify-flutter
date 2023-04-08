// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_network_interface_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface.dart' as _i2;

part 'create_network_interface_result.g.dart';

abstract class CreateNetworkInterfaceResult
    with
        _i1.AWSEquatable<CreateNetworkInterfaceResult>
    implements
        Built<CreateNetworkInterfaceResult,
            CreateNetworkInterfaceResultBuilder> {
  factory CreateNetworkInterfaceResult({
    _i2.NetworkInterface? networkInterface,
    String? clientToken,
  }) {
    return _$CreateNetworkInterfaceResult._(
      networkInterface: networkInterface,
      clientToken: clientToken,
    );
  }

  factory CreateNetworkInterfaceResult.build(
          [void Function(CreateNetworkInterfaceResultBuilder) updates]) =
      _$CreateNetworkInterfaceResult;

  const CreateNetworkInterfaceResult._();

  /// Constructs a [CreateNetworkInterfaceResult] from a [payload] and [response].
  factory CreateNetworkInterfaceResult.fromResponse(
    CreateNetworkInterfaceResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateNetworkInterfaceResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateNetworkInterfaceResultBuilder b) {}

  /// Information about the network interface.
  _i2.NetworkInterface? get networkInterface;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get clientToken;
  @override
  List<Object?> get props => [
        networkInterface,
        clientToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateNetworkInterfaceResult');
    helper.add(
      'networkInterface',
      networkInterface,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    return helper.toString();
  }
}

class CreateNetworkInterfaceResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateNetworkInterfaceResult> {
  const CreateNetworkInterfaceResultEc2QuerySerializer()
      : super('CreateNetworkInterfaceResult');

  @override
  Iterable<Type> get types => const [
        CreateNetworkInterfaceResult,
        _$CreateNetworkInterfaceResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNetworkInterfaceResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNetworkInterfaceResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkInterface':
          if (value != null) {
            result.networkInterface.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.NetworkInterface),
            ) as _i2.NetworkInterface));
          }
          break;
        case 'clientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
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
    final payload = (object as CreateNetworkInterfaceResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateNetworkInterfaceResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInterface != null) {
      result
        ..add(const _i3.XmlElementName('NetworkInterface'))
        ..add(serializers.serialize(
          payload.networkInterface!,
          specifiedType: const FullType(_i2.NetworkInterface),
        ));
    }
    if (payload.clientToken != null) {
      result
        ..add(const _i3.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
