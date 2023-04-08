// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_network_interface_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_boolean_value.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_value.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_attachment_changes.dart'
    as _i3;

part 'modify_network_interface_attribute_request.g.dart';

/// Contains the parameters for ModifyNetworkInterfaceAttribute.
abstract class ModifyNetworkInterfaceAttributeRequest
    with
        _i1.HttpInput<ModifyNetworkInterfaceAttributeRequest>,
        _i2.AWSEquatable<ModifyNetworkInterfaceAttributeRequest>
    implements
        Built<ModifyNetworkInterfaceAttributeRequest,
            ModifyNetworkInterfaceAttributeRequestBuilder> {
  /// Contains the parameters for ModifyNetworkInterfaceAttribute.
  factory ModifyNetworkInterfaceAttributeRequest({
    _i3.NetworkInterfaceAttachmentChanges? attachment,
    _i4.AttributeValue? description,
    bool? dryRun,
    List<String>? groups,
    required String networkInterfaceId,
    _i5.AttributeBooleanValue? sourceDestCheck,
  }) {
    dryRun ??= false;
    return _$ModifyNetworkInterfaceAttributeRequest._(
      attachment: attachment,
      description: description,
      dryRun: dryRun,
      groups: groups == null ? null : _i6.BuiltList(groups),
      networkInterfaceId: networkInterfaceId,
      sourceDestCheck: sourceDestCheck,
    );
  }

  /// Contains the parameters for ModifyNetworkInterfaceAttribute.
  factory ModifyNetworkInterfaceAttributeRequest.build(
      [void Function(ModifyNetworkInterfaceAttributeRequestBuilder)
          updates]) = _$ModifyNetworkInterfaceAttributeRequest;

  const ModifyNetworkInterfaceAttributeRequest._();

  factory ModifyNetworkInterfaceAttributeRequest.fromRequest(
    ModifyNetworkInterfaceAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyNetworkInterfaceAttributeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyNetworkInterfaceAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// Information about the interface attachment. If modifying the 'delete on termination' attribute, you must specify the ID of the interface attachment.
  _i3.NetworkInterfaceAttachmentChanges? get attachment;

  /// A description for the network interface.
  _i4.AttributeValue? get description;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Changes the security groups for the network interface. The new set of groups you specify replaces the current set. You must specify at least one group, even if it's just the default security group in the VPC. You must specify the ID of the security group, not the name.
  _i6.BuiltList<String>? get groups;

  /// The ID of the network interface.
  String get networkInterfaceId;

  /// Enable or disable source/destination checks, which ensure that the instance is either the source or the destination of any traffic that it receives. If the value is `true`, source/destination checks are enabled; otherwise, they are disabled. The default value is `true`. You must disable source/destination checks if the instance runs services such as network address translation, routing, or firewalls.
  _i5.AttributeBooleanValue? get sourceDestCheck;
  @override
  ModifyNetworkInterfaceAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        attachment,
        description,
        dryRun,
        groups,
        networkInterfaceId,
        sourceDestCheck,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyNetworkInterfaceAttributeRequest');
    helper.add(
      'attachment',
      attachment,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'groups',
      groups,
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

class ModifyNetworkInterfaceAttributeRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyNetworkInterfaceAttributeRequest> {
  const ModifyNetworkInterfaceAttributeRequestEc2QuerySerializer()
      : super('ModifyNetworkInterfaceAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ModifyNetworkInterfaceAttributeRequest,
        _$ModifyNetworkInterfaceAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyNetworkInterfaceAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyNetworkInterfaceAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'attachment':
          if (value != null) {
            result.attachment.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.NetworkInterfaceAttachmentChanges),
            ) as _i3.NetworkInterfaceAttachmentChanges));
          }
          break;
        case 'description':
          if (value != null) {
            result.description.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.AttributeValue),
            ) as _i4.AttributeValue));
          }
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'SecurityGroupId':
          if (value != null) {
            result.groups.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'SecurityGroupId',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(String)],
              ),
            ) as _i6.BuiltList<String>));
          }
          break;
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'sourceDestCheck':
          if (value != null) {
            result.sourceDestCheck.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.AttributeBooleanValue),
            ) as _i5.AttributeBooleanValue));
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
    final payload = (object as ModifyNetworkInterfaceAttributeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyNetworkInterfaceAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.attachment != null) {
      result
        ..add(const _i1.XmlElementName('Attachment'))
        ..add(serializers.serialize(
          payload.attachment!,
          specifiedType: const FullType(_i3.NetworkInterfaceAttachmentChanges),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(_i4.AttributeValue),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.groups != null) {
      result
        ..add(const _i1.XmlElementName('SecurityGroupId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'SecurityGroupId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.groups!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(String)],
          ),
        ));
    }
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
          specifiedType: const FullType(_i5.AttributeBooleanValue),
        ));
    }
    return result;
  }
}
