// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_client_vpn_route_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_route_status.dart'
    as _i2;

part 'create_client_vpn_route_result.g.dart';

abstract class CreateClientVpnRouteResult
    with _i1.AWSEquatable<CreateClientVpnRouteResult>
    implements
        Built<CreateClientVpnRouteResult, CreateClientVpnRouteResultBuilder> {
  factory CreateClientVpnRouteResult({_i2.ClientVpnRouteStatus? status}) {
    return _$CreateClientVpnRouteResult._(status: status);
  }

  factory CreateClientVpnRouteResult.build(
          [void Function(CreateClientVpnRouteResultBuilder) updates]) =
      _$CreateClientVpnRouteResult;

  const CreateClientVpnRouteResult._();

  /// Constructs a [CreateClientVpnRouteResult] from a [payload] and [response].
  factory CreateClientVpnRouteResult.fromResponse(
    CreateClientVpnRouteResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateClientVpnRouteResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateClientVpnRouteResultBuilder b) {}

  /// The current state of the route.
  _i2.ClientVpnRouteStatus? get status;
  @override
  List<Object?> get props => [status];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateClientVpnRouteResult');
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class CreateClientVpnRouteResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateClientVpnRouteResult> {
  const CreateClientVpnRouteResultEc2QuerySerializer()
      : super('CreateClientVpnRouteResult');

  @override
  Iterable<Type> get types => const [
        CreateClientVpnRouteResult,
        _$CreateClientVpnRouteResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateClientVpnRouteResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateClientVpnRouteResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'status':
          if (value != null) {
            result.status.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ClientVpnRouteStatus),
            ) as _i2.ClientVpnRouteStatus));
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
    final payload = (object as CreateClientVpnRouteResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateClientVpnRouteResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.status != null) {
      result
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType(_i2.ClientVpnRouteStatus),
        ));
    }
    return result;
  }
}
