// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_client_vpn_endpoint_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_endpoint_status.dart'
    as _i2;

part 'delete_client_vpn_endpoint_result.g.dart';

abstract class DeleteClientVpnEndpointResult
    with
        _i1.AWSEquatable<DeleteClientVpnEndpointResult>
    implements
        Built<DeleteClientVpnEndpointResult,
            DeleteClientVpnEndpointResultBuilder> {
  factory DeleteClientVpnEndpointResult({_i2.ClientVpnEndpointStatus? status}) {
    return _$DeleteClientVpnEndpointResult._(status: status);
  }

  factory DeleteClientVpnEndpointResult.build(
          [void Function(DeleteClientVpnEndpointResultBuilder) updates]) =
      _$DeleteClientVpnEndpointResult;

  const DeleteClientVpnEndpointResult._();

  /// Constructs a [DeleteClientVpnEndpointResult] from a [payload] and [response].
  factory DeleteClientVpnEndpointResult.fromResponse(
    DeleteClientVpnEndpointResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeleteClientVpnEndpointResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteClientVpnEndpointResultBuilder b) {}

  /// The current state of the Client VPN endpoint.
  _i2.ClientVpnEndpointStatus? get status;
  @override
  List<Object?> get props => [status];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteClientVpnEndpointResult');
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class DeleteClientVpnEndpointResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DeleteClientVpnEndpointResult> {
  const DeleteClientVpnEndpointResultEc2QuerySerializer()
      : super('DeleteClientVpnEndpointResult');

  @override
  Iterable<Type> get types => const [
        DeleteClientVpnEndpointResult,
        _$DeleteClientVpnEndpointResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteClientVpnEndpointResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteClientVpnEndpointResultBuilder();
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
              specifiedType: const FullType(_i2.ClientVpnEndpointStatus),
            ) as _i2.ClientVpnEndpointStatus));
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
    final payload = (object as DeleteClientVpnEndpointResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteClientVpnEndpointResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.status != null) {
      result
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType(_i2.ClientVpnEndpointStatus),
        ));
    }
    return result;
  }
}
