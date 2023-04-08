// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.trunk_interface_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/interface_protocol_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'trunk_interface_association.g.dart';

/// Currently available in **limited preview only**. If you are interested in using this feature, contact your account manager.
///
/// Information about an association between a branch network interface with a trunk network interface.
abstract class TrunkInterfaceAssociation
    with _i1.AWSEquatable<TrunkInterfaceAssociation>
    implements
        Built<TrunkInterfaceAssociation, TrunkInterfaceAssociationBuilder> {
  /// Currently available in **limited preview only**. If you are interested in using this feature, contact your account manager.
  ///
  /// Information about an association between a branch network interface with a trunk network interface.
  factory TrunkInterfaceAssociation({
    String? associationId,
    String? branchInterfaceId,
    String? trunkInterfaceId,
    _i2.InterfaceProtocolType? interfaceProtocol,
    int? vlanId,
    int? greKey,
    List<_i3.Tag>? tags,
  }) {
    vlanId ??= 0;
    greKey ??= 0;
    return _$TrunkInterfaceAssociation._(
      associationId: associationId,
      branchInterfaceId: branchInterfaceId,
      trunkInterfaceId: trunkInterfaceId,
      interfaceProtocol: interfaceProtocol,
      vlanId: vlanId,
      greKey: greKey,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// Currently available in **limited preview only**. If you are interested in using this feature, contact your account manager.
  ///
  /// Information about an association between a branch network interface with a trunk network interface.
  factory TrunkInterfaceAssociation.build(
          [void Function(TrunkInterfaceAssociationBuilder) updates]) =
      _$TrunkInterfaceAssociation;

  const TrunkInterfaceAssociation._();

  static const List<_i5.SmithySerializer> serializers = [
    TrunkInterfaceAssociationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TrunkInterfaceAssociationBuilder b) {
    b.vlanId = 0;
    b.greKey = 0;
  }

  /// The ID of the association.
  String? get associationId;

  /// The ID of the branch network interface.
  String? get branchInterfaceId;

  /// The ID of the trunk network interface.
  String? get trunkInterfaceId;

  /// The interface protocol. Valid values are `VLAN` and `GRE`.
  _i2.InterfaceProtocolType? get interfaceProtocol;

  /// The ID of the VLAN when you use the VLAN protocol.
  int get vlanId;

  /// The application key when you use the GRE protocol.
  int get greKey;

  /// The tags for the trunk interface association.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        associationId,
        branchInterfaceId,
        trunkInterfaceId,
        interfaceProtocol,
        vlanId,
        greKey,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TrunkInterfaceAssociation');
    helper.add(
      'associationId',
      associationId,
    );
    helper.add(
      'branchInterfaceId',
      branchInterfaceId,
    );
    helper.add(
      'trunkInterfaceId',
      trunkInterfaceId,
    );
    helper.add(
      'interfaceProtocol',
      interfaceProtocol,
    );
    helper.add(
      'vlanId',
      vlanId,
    );
    helper.add(
      'greKey',
      greKey,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class TrunkInterfaceAssociationEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<TrunkInterfaceAssociation> {
  const TrunkInterfaceAssociationEc2QuerySerializer()
      : super('TrunkInterfaceAssociation');

  @override
  Iterable<Type> get types => const [
        TrunkInterfaceAssociation,
        _$TrunkInterfaceAssociation,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TrunkInterfaceAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrunkInterfaceAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'associationId':
          if (value != null) {
            result.associationId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'branchInterfaceId':
          if (value != null) {
            result.branchInterfaceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'trunkInterfaceId':
          if (value != null) {
            result.trunkInterfaceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'interfaceProtocol':
          if (value != null) {
            result.interfaceProtocol = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.InterfaceProtocolType),
            ) as _i2.InterfaceProtocolType);
          }
          break;
        case 'vlanId':
          result.vlanId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'greKey':
          result.greKey = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Tag)],
              ),
            ) as _i4.BuiltList<_i3.Tag>));
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
    final payload = (object as TrunkInterfaceAssociation);
    final result = <Object?>[
      const _i5.XmlElementName(
        'TrunkInterfaceAssociationResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.associationId != null) {
      result
        ..add(const _i5.XmlElementName('AssociationId'))
        ..add(serializers.serialize(
          payload.associationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.branchInterfaceId != null) {
      result
        ..add(const _i5.XmlElementName('BranchInterfaceId'))
        ..add(serializers.serialize(
          payload.branchInterfaceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.trunkInterfaceId != null) {
      result
        ..add(const _i5.XmlElementName('TrunkInterfaceId'))
        ..add(serializers.serialize(
          payload.trunkInterfaceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.interfaceProtocol != null) {
      result
        ..add(const _i5.XmlElementName('InterfaceProtocol'))
        ..add(serializers.serialize(
          payload.interfaceProtocol!,
          specifiedType: const FullType.nullable(_i2.InterfaceProtocolType),
        ));
    }
    result
      ..add(const _i5.XmlElementName('VlanId'))
      ..add(serializers.serialize(
        payload.vlanId,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i5.XmlElementName('GreKey'))
      ..add(serializers.serialize(
        payload.greKey,
        specifiedType: const FullType(int),
      ));
    if (payload.tags != null) {
      result
        ..add(const _i5.XmlElementName('TagSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    return result;
  }
}
