// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.purchase_scheduled_instances_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_request.dart' as _i3;

part 'purchase_scheduled_instances_request.g.dart';

/// Contains the parameters for PurchaseScheduledInstances.
abstract class PurchaseScheduledInstancesRequest
    with
        _i1.HttpInput<PurchaseScheduledInstancesRequest>,
        _i2.AWSEquatable<PurchaseScheduledInstancesRequest>
    implements
        Built<PurchaseScheduledInstancesRequest,
            PurchaseScheduledInstancesRequestBuilder> {
  /// Contains the parameters for PurchaseScheduledInstances.
  factory PurchaseScheduledInstancesRequest({
    String? clientToken,
    bool? dryRun,
    required List<_i3.PurchaseRequest> purchaseRequests,
  }) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientToken ??= _i2.uuid(secure: true);
    }
    dryRun ??= false;
    return _$PurchaseScheduledInstancesRequest._(
      clientToken: clientToken,
      dryRun: dryRun,
      purchaseRequests: _i4.BuiltList(purchaseRequests),
    );
  }

  /// Contains the parameters for PurchaseScheduledInstances.
  factory PurchaseScheduledInstancesRequest.build(
          [void Function(PurchaseScheduledInstancesRequestBuilder) updates]) =
      _$PurchaseScheduledInstancesRequest;

  const PurchaseScheduledInstancesRequest._();

  factory PurchaseScheduledInstancesRequest.fromRequest(
    PurchaseScheduledInstancesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    PurchaseScheduledInstancesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PurchaseScheduledInstancesRequestBuilder b) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientToken = _i2.uuid(secure: true);
    }
    b.dryRun = false;
  }

  /// Unique, case-sensitive identifier that ensures the idempotency of the request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The purchase requests.
  _i4.BuiltList<_i3.PurchaseRequest> get purchaseRequests;
  @override
  PurchaseScheduledInstancesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientToken,
        dryRun,
        purchaseRequests,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PurchaseScheduledInstancesRequest');
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'purchaseRequests',
      purchaseRequests,
    );
    return helper.toString();
  }
}

class PurchaseScheduledInstancesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<PurchaseScheduledInstancesRequest> {
  const PurchaseScheduledInstancesRequestEc2QuerySerializer()
      : super('PurchaseScheduledInstancesRequest');

  @override
  Iterable<Type> get types => const [
        PurchaseScheduledInstancesRequest,
        _$PurchaseScheduledInstancesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PurchaseScheduledInstancesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PurchaseScheduledInstancesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'PurchaseRequest':
          result.purchaseRequests.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'PurchaseRequest',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.PurchaseRequest)],
            ),
          ) as _i4.BuiltList<_i3.PurchaseRequest>));
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
    final payload = (object as PurchaseScheduledInstancesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'PurchaseScheduledInstancesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('PurchaseRequest'))
      ..add(const _i1.XmlBuiltListSerializer(
        memberName: 'PurchaseRequest',
        indexer: _i1.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        payload.purchaseRequests,
        specifiedType: const FullType.nullable(
          _i4.BuiltList,
          [FullType(_i3.PurchaseRequest)],
        ),
      ));
    return result;
  }
}
