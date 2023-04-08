// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.ipam_scope; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_scope_state.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_scope_type.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i4;

part 'ipam_scope.g.dart';

/// In IPAM, a scope is the highest-level container within IPAM. An IPAM contains two default scopes. Each scope represents the IP space for a single network. The private scope is intended for all private IP address space. The public scope is intended for all public IP address space. Scopes enable you to reuse IP addresses across multiple unconnected networks without causing IP address overlap or conflict.
///
/// For more information, see [How IPAM works](https://docs.aws.amazon.com/vpc/latest/ipam/how-it-works-ipam.html) in the _Amazon VPC IPAM User Guide_.
abstract class IpamScope
    with _i1.AWSEquatable<IpamScope>
    implements Built<IpamScope, IpamScopeBuilder> {
  /// In IPAM, a scope is the highest-level container within IPAM. An IPAM contains two default scopes. Each scope represents the IP space for a single network. The private scope is intended for all private IP address space. The public scope is intended for all public IP address space. Scopes enable you to reuse IP addresses across multiple unconnected networks without causing IP address overlap or conflict.
  ///
  /// For more information, see [How IPAM works](https://docs.aws.amazon.com/vpc/latest/ipam/how-it-works-ipam.html) in the _Amazon VPC IPAM User Guide_.
  factory IpamScope({
    String? ownerId,
    String? ipamScopeId,
    String? ipamScopeArn,
    String? ipamArn,
    String? ipamRegion,
    _i2.IpamScopeType? ipamScopeType,
    bool? isDefault,
    String? description,
    int? poolCount,
    _i3.IpamScopeState? state,
    List<_i4.Tag>? tags,
  }) {
    isDefault ??= false;
    poolCount ??= 0;
    return _$IpamScope._(
      ownerId: ownerId,
      ipamScopeId: ipamScopeId,
      ipamScopeArn: ipamScopeArn,
      ipamArn: ipamArn,
      ipamRegion: ipamRegion,
      ipamScopeType: ipamScopeType,
      isDefault: isDefault,
      description: description,
      poolCount: poolCount,
      state: state,
      tags: tags == null ? null : _i5.BuiltList(tags),
    );
  }

  /// In IPAM, a scope is the highest-level container within IPAM. An IPAM contains two default scopes. Each scope represents the IP space for a single network. The private scope is intended for all private IP address space. The public scope is intended for all public IP address space. Scopes enable you to reuse IP addresses across multiple unconnected networks without causing IP address overlap or conflict.
  ///
  /// For more information, see [How IPAM works](https://docs.aws.amazon.com/vpc/latest/ipam/how-it-works-ipam.html) in the _Amazon VPC IPAM User Guide_.
  factory IpamScope.build([void Function(IpamScopeBuilder) updates]) =
      _$IpamScope;

  const IpamScope._();

  static const List<_i6.SmithySerializer> serializers = [
    IpamScopeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IpamScopeBuilder b) {
    b.isDefault = false;
    b.poolCount = 0;
  }

  /// The Amazon Web Services account ID of the owner of the scope.
  String? get ownerId;

  /// The ID of the scope.
  String? get ipamScopeId;

  /// The ARN of the scope.
  String? get ipamScopeArn;

  /// The ARN of the IPAM.
  String? get ipamArn;

  /// The Amazon Web Services Region of the IPAM scope.
  String? get ipamRegion;

  /// The type of the scope.
  _i2.IpamScopeType? get ipamScopeType;

  /// Defines if the scope is the default scope or not.
  bool get isDefault;

  /// The description of the scope.
  String? get description;

  /// The number of pools in the scope.
  int get poolCount;

  /// The state of the IPAM scope.
  _i3.IpamScopeState? get state;

  /// The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  _i5.BuiltList<_i4.Tag>? get tags;
  @override
  List<Object?> get props => [
        ownerId,
        ipamScopeId,
        ipamScopeArn,
        ipamArn,
        ipamRegion,
        ipamScopeType,
        isDefault,
        description,
        poolCount,
        state,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpamScope');
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'ipamScopeId',
      ipamScopeId,
    );
    helper.add(
      'ipamScopeArn',
      ipamScopeArn,
    );
    helper.add(
      'ipamArn',
      ipamArn,
    );
    helper.add(
      'ipamRegion',
      ipamRegion,
    );
    helper.add(
      'ipamScopeType',
      ipamScopeType,
    );
    helper.add(
      'isDefault',
      isDefault,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'poolCount',
      poolCount,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class IpamScopeEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<IpamScope> {
  const IpamScopeEc2QuerySerializer() : super('IpamScope');

  @override
  Iterable<Type> get types => const [
        IpamScope,
        _$IpamScope,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpamScope deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamScopeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ownerId':
          if (value != null) {
            result.ownerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ipamScopeId':
          if (value != null) {
            result.ipamScopeId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ipamScopeArn':
          if (value != null) {
            result.ipamScopeArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ipamArn':
          if (value != null) {
            result.ipamArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ipamRegion':
          if (value != null) {
            result.ipamRegion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ipamScopeType':
          if (value != null) {
            result.ipamScopeType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.IpamScopeType),
            ) as _i2.IpamScopeType);
          }
          break;
        case 'isDefault':
          result.isDefault = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'poolCount':
          result.poolCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.IpamScopeState),
            ) as _i3.IpamScopeState);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.Tag)],
              ),
            ) as _i5.BuiltList<_i4.Tag>));
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
    final payload = (object as IpamScope);
    final result = <Object?>[
      const _i6.XmlElementName(
        'IpamScopeResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ownerId != null) {
      result
        ..add(const _i6.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipamScopeId != null) {
      result
        ..add(const _i6.XmlElementName('IpamScopeId'))
        ..add(serializers.serialize(
          payload.ipamScopeId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipamScopeArn != null) {
      result
        ..add(const _i6.XmlElementName('IpamScopeArn'))
        ..add(serializers.serialize(
          payload.ipamScopeArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipamArn != null) {
      result
        ..add(const _i6.XmlElementName('IpamArn'))
        ..add(serializers.serialize(
          payload.ipamArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipamRegion != null) {
      result
        ..add(const _i6.XmlElementName('IpamRegion'))
        ..add(serializers.serialize(
          payload.ipamRegion!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipamScopeType != null) {
      result
        ..add(const _i6.XmlElementName('IpamScopeType'))
        ..add(serializers.serialize(
          payload.ipamScopeType!,
          specifiedType: const FullType.nullable(_i2.IpamScopeType),
        ));
    }
    result
      ..add(const _i6.XmlElementName('IsDefault'))
      ..add(serializers.serialize(
        payload.isDefault,
        specifiedType: const FullType(bool),
      ));
    if (payload.description != null) {
      result
        ..add(const _i6.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i6.XmlElementName('PoolCount'))
      ..add(serializers.serialize(
        payload.poolCount,
        specifiedType: const FullType(int),
      ));
    if (payload.state != null) {
      result
        ..add(const _i6.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i3.IpamScopeState),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i6.XmlElementName('TagSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.Tag)],
          ),
        ));
    }
    return result;
  }
}
