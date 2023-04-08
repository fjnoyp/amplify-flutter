// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.replace_network_acl_association_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'replace_network_acl_association_request.g.dart';

abstract class ReplaceNetworkAclAssociationRequest
    with
        _i1.HttpInput<ReplaceNetworkAclAssociationRequest>,
        _i2.AWSEquatable<ReplaceNetworkAclAssociationRequest>
    implements
        Built<ReplaceNetworkAclAssociationRequest,
            ReplaceNetworkAclAssociationRequestBuilder> {
  factory ReplaceNetworkAclAssociationRequest({
    required String associationId,
    bool? dryRun,
    required String networkAclId,
  }) {
    dryRun ??= false;
    return _$ReplaceNetworkAclAssociationRequest._(
      associationId: associationId,
      dryRun: dryRun,
      networkAclId: networkAclId,
    );
  }

  factory ReplaceNetworkAclAssociationRequest.build(
          [void Function(ReplaceNetworkAclAssociationRequestBuilder) updates]) =
      _$ReplaceNetworkAclAssociationRequest;

  const ReplaceNetworkAclAssociationRequest._();

  factory ReplaceNetworkAclAssociationRequest.fromRequest(
    ReplaceNetworkAclAssociationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ReplaceNetworkAclAssociationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplaceNetworkAclAssociationRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the current association between the original network ACL and the subnet.
  String get associationId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the new network ACL to associate with the subnet.
  String get networkAclId;
  @override
  ReplaceNetworkAclAssociationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        associationId,
        dryRun,
        networkAclId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ReplaceNetworkAclAssociationRequest');
    helper.add(
      'associationId',
      associationId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'networkAclId',
      networkAclId,
    );
    return helper.toString();
  }
}

class ReplaceNetworkAclAssociationRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ReplaceNetworkAclAssociationRequest> {
  const ReplaceNetworkAclAssociationRequestEc2QuerySerializer()
      : super('ReplaceNetworkAclAssociationRequest');

  @override
  Iterable<Type> get types => const [
        ReplaceNetworkAclAssociationRequest,
        _$ReplaceNetworkAclAssociationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReplaceNetworkAclAssociationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplaceNetworkAclAssociationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'associationId':
          result.associationId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'networkAclId':
          result.networkAclId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as ReplaceNetworkAclAssociationRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ReplaceNetworkAclAssociationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('AssociationId'))
      ..add(serializers.serialize(
        payload.associationId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('NetworkAclId'))
      ..add(serializers.serialize(
        payload.networkAclId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
