// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_address_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_address_attribute_request.g.dart';

abstract class ModifyAddressAttributeRequest
    with
        _i1.HttpInput<ModifyAddressAttributeRequest>,
        _i2.AWSEquatable<ModifyAddressAttributeRequest>
    implements
        Built<ModifyAddressAttributeRequest,
            ModifyAddressAttributeRequestBuilder> {
  factory ModifyAddressAttributeRequest({
    required String allocationId,
    String? domainName,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifyAddressAttributeRequest._(
      allocationId: allocationId,
      domainName: domainName,
      dryRun: dryRun,
    );
  }

  factory ModifyAddressAttributeRequest.build(
          [void Function(ModifyAddressAttributeRequestBuilder) updates]) =
      _$ModifyAddressAttributeRequest;

  const ModifyAddressAttributeRequest._();

  factory ModifyAddressAttributeRequest.fromRequest(
    ModifyAddressAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyAddressAttributeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyAddressAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// \[EC2-VPC\] The allocation ID.
  String get allocationId;

  /// The domain name to modify for the IP address.
  String? get domainName;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyAddressAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        allocationId,
        domainName,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyAddressAttributeRequest');
    helper.add(
      'allocationId',
      allocationId,
    );
    helper.add(
      'domainName',
      domainName,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class ModifyAddressAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyAddressAttributeRequest> {
  const ModifyAddressAttributeRequestEc2QuerySerializer()
      : super('ModifyAddressAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ModifyAddressAttributeRequest,
        _$ModifyAddressAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyAddressAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyAddressAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AllocationId':
          result.allocationId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'DomainName':
          if (value != null) {
            result.domainName = (serializers.deserialize(
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
    final payload = (object as ModifyAddressAttributeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyAddressAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('AllocationId'))
      ..add(serializers.serialize(
        payload.allocationId,
        specifiedType: const FullType(String),
      ));
    if (payload.domainName != null) {
      result
        ..add(const _i1.XmlElementName('DomainName'))
        ..add(serializers.serialize(
          payload.domainName!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
