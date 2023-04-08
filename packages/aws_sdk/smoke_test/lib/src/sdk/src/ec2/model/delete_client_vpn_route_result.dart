// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_client_vpn_route_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_route_status.dart'
    as _i2;

part 'delete_client_vpn_route_result.g.dart';

abstract class DeleteClientVpnRouteResult
    with _i1.AWSEquatable<DeleteClientVpnRouteResult>
    implements
        Built<DeleteClientVpnRouteResult, DeleteClientVpnRouteResultBuilder> {
  factory DeleteClientVpnRouteResult({_i2.ClientVpnRouteStatus? status}) {
    return _$DeleteClientVpnRouteResult._(status: status);
  }

  factory DeleteClientVpnRouteResult.build(
          [void Function(DeleteClientVpnRouteResultBuilder) updates]) =
      _$DeleteClientVpnRouteResult;

  const DeleteClientVpnRouteResult._();

  /// Constructs a [DeleteClientVpnRouteResult] from a [payload] and [response].
  factory DeleteClientVpnRouteResult.fromResponse(
    DeleteClientVpnRouteResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeleteClientVpnRouteResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteClientVpnRouteResultBuilder b) {}

  /// The current state of the route.
  _i2.ClientVpnRouteStatus? get status;
  @override
  List<Object?> get props => [status];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteClientVpnRouteResult');
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class DeleteClientVpnRouteResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DeleteClientVpnRouteResult> {
  const DeleteClientVpnRouteResultEc2QuerySerializer()
      : super('DeleteClientVpnRouteResult');

  @override
  Iterable<Type> get types => const [
        DeleteClientVpnRouteResult,
        _$DeleteClientVpnRouteResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteClientVpnRouteResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteClientVpnRouteResultBuilder();
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
    final payload = (object as DeleteClientVpnRouteResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteClientVpnRouteResultResponse',
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
