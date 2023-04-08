// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_fpga_image_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image_attribute_name.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/load_permission_modifications.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/operation_type.dart' as _i4;

part 'modify_fpga_image_attribute_request.g.dart';

abstract class ModifyFpgaImageAttributeRequest
    with
        _i1.HttpInput<ModifyFpgaImageAttributeRequest>,
        _i2.AWSEquatable<ModifyFpgaImageAttributeRequest>
    implements
        Built<ModifyFpgaImageAttributeRequest,
            ModifyFpgaImageAttributeRequestBuilder> {
  factory ModifyFpgaImageAttributeRequest({
    bool? dryRun,
    required String fpgaImageId,
    _i3.FpgaImageAttributeName? attribute,
    _i4.OperationType? operationType,
    List<String>? userIds,
    List<String>? userGroups,
    List<String>? productCodes,
    _i5.LoadPermissionModifications? loadPermission,
    String? description,
    String? name,
  }) {
    dryRun ??= false;
    return _$ModifyFpgaImageAttributeRequest._(
      dryRun: dryRun,
      fpgaImageId: fpgaImageId,
      attribute: attribute,
      operationType: operationType,
      userIds: userIds == null ? null : _i6.BuiltList(userIds),
      userGroups: userGroups == null ? null : _i6.BuiltList(userGroups),
      productCodes: productCodes == null ? null : _i6.BuiltList(productCodes),
      loadPermission: loadPermission,
      description: description,
      name: name,
    );
  }

  factory ModifyFpgaImageAttributeRequest.build(
          [void Function(ModifyFpgaImageAttributeRequestBuilder) updates]) =
      _$ModifyFpgaImageAttributeRequest;

  const ModifyFpgaImageAttributeRequest._();

  factory ModifyFpgaImageAttributeRequest.fromRequest(
    ModifyFpgaImageAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyFpgaImageAttributeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyFpgaImageAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the AFI.
  String get fpgaImageId;

  /// The name of the attribute.
  _i3.FpgaImageAttributeName? get attribute;

  /// The operation type.
  _i4.OperationType? get operationType;

  /// The Amazon Web Services account IDs. This parameter is valid only when modifying the `loadPermission` attribute.
  _i6.BuiltList<String>? get userIds;

  /// The user groups. This parameter is valid only when modifying the `loadPermission` attribute.
  _i6.BuiltList<String>? get userGroups;

  /// The product codes. After you add a product code to an AFI, it can't be removed. This parameter is valid only when modifying the `productCodes` attribute.
  _i6.BuiltList<String>? get productCodes;

  /// The load permission for the AFI.
  _i5.LoadPermissionModifications? get loadPermission;

  /// A description for the AFI.
  String? get description;

  /// A name for the AFI.
  String? get name;
  @override
  ModifyFpgaImageAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        fpgaImageId,
        attribute,
        operationType,
        userIds,
        userGroups,
        productCodes,
        loadPermission,
        description,
        name,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyFpgaImageAttributeRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'fpgaImageId',
      fpgaImageId,
    );
    helper.add(
      'attribute',
      attribute,
    );
    helper.add(
      'operationType',
      operationType,
    );
    helper.add(
      'userIds',
      userIds,
    );
    helper.add(
      'userGroups',
      userGroups,
    );
    helper.add(
      'productCodes',
      productCodes,
    );
    helper.add(
      'loadPermission',
      loadPermission,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'name',
      name,
    );
    return helper.toString();
  }
}

class ModifyFpgaImageAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyFpgaImageAttributeRequest> {
  const ModifyFpgaImageAttributeRequestEc2QuerySerializer()
      : super('ModifyFpgaImageAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ModifyFpgaImageAttributeRequest,
        _$ModifyFpgaImageAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyFpgaImageAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyFpgaImageAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'FpgaImageId':
          result.fpgaImageId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Attribute':
          if (value != null) {
            result.attribute = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.FpgaImageAttributeName),
            ) as _i3.FpgaImageAttributeName);
          }
          break;
        case 'OperationType':
          if (value != null) {
            result.operationType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.OperationType),
            ) as _i4.OperationType);
          }
          break;
        case 'UserId':
          if (value != null) {
            result.userIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'UserId',
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
        case 'UserGroup':
          if (value != null) {
            result.userGroups.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'UserGroup',
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
        case 'ProductCode':
          if (value != null) {
            result.productCodes.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'ProductCode',
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
        case 'LoadPermission':
          if (value != null) {
            result.loadPermission.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.LoadPermissionModifications),
            ) as _i5.LoadPermissionModifications));
          }
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Name':
          if (value != null) {
            result.name = (serializers.deserialize(
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
    final payload = (object as ModifyFpgaImageAttributeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyFpgaImageAttributeRequestResponse',
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
      ..add(const _i1.XmlElementName('FpgaImageId'))
      ..add(serializers.serialize(
        payload.fpgaImageId,
        specifiedType: const FullType(String),
      ));
    if (payload.attribute != null) {
      result
        ..add(const _i1.XmlElementName('Attribute'))
        ..add(serializers.serialize(
          payload.attribute!,
          specifiedType: const FullType.nullable(_i3.FpgaImageAttributeName),
        ));
    }
    if (payload.operationType != null) {
      result
        ..add(const _i1.XmlElementName('OperationType'))
        ..add(serializers.serialize(
          payload.operationType!,
          specifiedType: const FullType.nullable(_i4.OperationType),
        ));
    }
    if (payload.userIds != null) {
      result
        ..add(const _i1.XmlElementName('UserId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'UserId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.userIds!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.userGroups != null) {
      result
        ..add(const _i1.XmlElementName('UserGroup'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'UserGroup',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.userGroups!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.productCodes != null) {
      result
        ..add(const _i1.XmlElementName('ProductCode'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ProductCode',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.productCodes!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.loadPermission != null) {
      result
        ..add(const _i1.XmlElementName('LoadPermission'))
        ..add(serializers.serialize(
          payload.loadPermission!,
          specifiedType: const FullType(_i5.LoadPermissionModifications),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.name != null) {
      result
        ..add(const _i1.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
