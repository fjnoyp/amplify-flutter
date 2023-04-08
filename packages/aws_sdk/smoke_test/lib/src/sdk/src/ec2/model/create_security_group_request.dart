// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_security_group_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i3;

part 'create_security_group_request.g.dart';

abstract class CreateSecurityGroupRequest
    with
        _i1.HttpInput<CreateSecurityGroupRequest>,
        _i2.AWSEquatable<CreateSecurityGroupRequest>
    implements
        Built<CreateSecurityGroupRequest, CreateSecurityGroupRequestBuilder> {
  factory CreateSecurityGroupRequest({
    required String description,
    required String groupName,
    String? vpcId,
    List<_i3.TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateSecurityGroupRequest._(
      description: description,
      groupName: groupName,
      vpcId: vpcId,
      tagSpecifications:
          tagSpecifications == null ? null : _i4.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CreateSecurityGroupRequest.build(
          [void Function(CreateSecurityGroupRequestBuilder) updates]) =
      _$CreateSecurityGroupRequest;

  const CreateSecurityGroupRequest._();

  factory CreateSecurityGroupRequest.fromRequest(
    CreateSecurityGroupRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateSecurityGroupRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateSecurityGroupRequestBuilder b) {
    b.dryRun = false;
  }

  /// A description for the security group. This is informational only.
  ///
  /// Constraints: Up to 255 characters in length
  ///
  /// Constraints for EC2-Classic: ASCII characters
  ///
  /// Constraints for EC2-VPC: a-z, A-Z, 0-9, spaces, and ._-:/()#,@\[\]+=&;{}!$*
  String get description;

  /// The name of the security group.
  ///
  /// Constraints: Up to 255 characters in length. Cannot start with `sg-`.
  ///
  /// Constraints for EC2-Classic: ASCII characters
  ///
  /// Constraints for EC2-VPC: a-z, A-Z, 0-9, spaces, and ._-:/()#,@\[\]+=&;{}!$*
  String get groupName;

  /// \[EC2-VPC\] The ID of the VPC. Required for EC2-VPC.
  String? get vpcId;

  /// The tags to assign to the security group.
  _i4.BuiltList<_i3.TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateSecurityGroupRequest getPayload() => this;
  @override
  List<Object?> get props => [
        description,
        groupName,
        vpcId,
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateSecurityGroupRequest');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'groupName',
      groupName,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class CreateSecurityGroupRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateSecurityGroupRequest> {
  const CreateSecurityGroupRequestEc2QuerySerializer()
      : super('CreateSecurityGroupRequest');

  @override
  Iterable<Type> get types => const [
        CreateSecurityGroupRequest,
        _$CreateSecurityGroupRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateSecurityGroupRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSecurityGroupRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'GroupDescription':
          result.description = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'GroupName':
          result.groupName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'VpcId':
          if (value != null) {
            result.vpcId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TagSpecification':
          if (value != null) {
            result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.TagSpecification)],
              ),
            ) as _i4.BuiltList<_i3.TagSpecification>));
          }
          break;
        case 'dryRun':
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
    final payload = (object as CreateSecurityGroupRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateSecurityGroupRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('GroupDescription'))
      ..add(serializers.serialize(
        payload.description,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('GroupName'))
      ..add(serializers.serialize(
        payload.groupName,
        specifiedType: const FullType(String),
      ));
    if (payload.vpcId != null) {
      result
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          payload.vpcId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.TagSpecification)],
          ),
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
