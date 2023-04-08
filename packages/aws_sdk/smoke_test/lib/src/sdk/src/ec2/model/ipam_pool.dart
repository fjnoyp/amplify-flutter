// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.ipam_pool; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/address_family.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_aws_service.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_state.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_tag.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_scope_type.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i6;

part 'ipam_pool.g.dart';

/// In IPAM, a pool is a collection of contiguous IP addresses CIDRs. Pools enable you to organize your IP addresses according to your routing and security needs. For example, if you have separate routing and security needs for development and production applications, you can create a pool for each.
abstract class IpamPool
    with _i1.AWSEquatable<IpamPool>
    implements Built<IpamPool, IpamPoolBuilder> {
  /// In IPAM, a pool is a collection of contiguous IP addresses CIDRs. Pools enable you to organize your IP addresses according to your routing and security needs. For example, if you have separate routing and security needs for development and production applications, you can create a pool for each.
  factory IpamPool({
    String? ownerId,
    String? ipamPoolId,
    String? sourceIpamPoolId,
    String? ipamPoolArn,
    String? ipamScopeArn,
    _i2.IpamScopeType? ipamScopeType,
    String? ipamArn,
    String? ipamRegion,
    String? locale,
    int? poolDepth,
    _i3.IpamPoolState? state,
    String? stateMessage,
    String? description,
    bool? autoImport,
    bool? publiclyAdvertisable,
    _i4.AddressFamily? addressFamily,
    int? allocationMinNetmaskLength,
    int? allocationMaxNetmaskLength,
    int? allocationDefaultNetmaskLength,
    List<_i5.IpamResourceTag>? allocationResourceTags,
    List<_i6.Tag>? tags,
    _i7.IpamPoolAwsService? awsService,
  }) {
    poolDepth ??= 0;
    autoImport ??= false;
    publiclyAdvertisable ??= false;
    allocationMinNetmaskLength ??= 0;
    allocationMaxNetmaskLength ??= 0;
    allocationDefaultNetmaskLength ??= 0;
    return _$IpamPool._(
      ownerId: ownerId,
      ipamPoolId: ipamPoolId,
      sourceIpamPoolId: sourceIpamPoolId,
      ipamPoolArn: ipamPoolArn,
      ipamScopeArn: ipamScopeArn,
      ipamScopeType: ipamScopeType,
      ipamArn: ipamArn,
      ipamRegion: ipamRegion,
      locale: locale,
      poolDepth: poolDepth,
      state: state,
      stateMessage: stateMessage,
      description: description,
      autoImport: autoImport,
      publiclyAdvertisable: publiclyAdvertisable,
      addressFamily: addressFamily,
      allocationMinNetmaskLength: allocationMinNetmaskLength,
      allocationMaxNetmaskLength: allocationMaxNetmaskLength,
      allocationDefaultNetmaskLength: allocationDefaultNetmaskLength,
      allocationResourceTags: allocationResourceTags == null
          ? null
          : _i8.BuiltList(allocationResourceTags),
      tags: tags == null ? null : _i8.BuiltList(tags),
      awsService: awsService,
    );
  }

  /// In IPAM, a pool is a collection of contiguous IP addresses CIDRs. Pools enable you to organize your IP addresses according to your routing and security needs. For example, if you have separate routing and security needs for development and production applications, you can create a pool for each.
  factory IpamPool.build([void Function(IpamPoolBuilder) updates]) = _$IpamPool;

  const IpamPool._();

  static const List<_i9.SmithySerializer> serializers = [
    IpamPoolEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IpamPoolBuilder b) {
    b.poolDepth = 0;
    b.autoImport = false;
    b.publiclyAdvertisable = false;
    b.allocationMinNetmaskLength = 0;
    b.allocationMaxNetmaskLength = 0;
    b.allocationDefaultNetmaskLength = 0;
  }

  /// The Amazon Web Services account ID of the owner of the IPAM pool.
  String? get ownerId;

  /// The ID of the IPAM pool.
  String? get ipamPoolId;

  /// The ID of the source IPAM pool. You can use this option to create an IPAM pool within an existing source pool.
  String? get sourceIpamPoolId;

  /// The ARN of the IPAM pool.
  String? get ipamPoolArn;

  /// The ARN of the scope of the IPAM pool.
  String? get ipamScopeArn;

  /// In IPAM, a scope is the highest-level container within IPAM. An IPAM contains two default scopes. Each scope represents the IP space for a single network. The private scope is intended for all private IP address space. The public scope is intended for all public IP address space. Scopes enable you to reuse IP addresses across multiple unconnected networks without causing IP address overlap or conflict.
  _i2.IpamScopeType? get ipamScopeType;

  /// The ARN of the IPAM.
  String? get ipamArn;

  /// The Amazon Web Services Region of the IPAM pool.
  String? get ipamRegion;

  /// The locale of the IPAM pool. In IPAM, the locale is the Amazon Web Services Region where you want to make an IPAM pool available for allocations. Only resources in the same Region as the locale of the pool can get IP address allocations from the pool. You can only allocate a CIDR for a VPC, for example, from an IPAM pool that shares a locale with the VPC’s Region. Note that once you choose a Locale for a pool, you cannot modify it. If you choose an Amazon Web Services Region for locale that has not been configured as an operating Region for the IPAM, you'll get an error.
  String? get locale;

  /// The depth of pools in your IPAM pool. The pool depth quota is 10. For more information, see [Quotas in IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html) in the _Amazon VPC IPAM User Guide_.
  int get poolDepth;

  /// The state of the IPAM pool.
  _i3.IpamPoolState? get state;

  /// A message related to the failed creation of an IPAM pool.
  String? get stateMessage;

  /// The description of the IPAM pool.
  String? get description;

  /// If selected, IPAM will continuously look for resources within the CIDR range of this pool and automatically import them as allocations into your IPAM. The CIDRs that will be allocated for these resources must not already be allocated to other resources in order for the import to succeed. IPAM will import a CIDR regardless of its compliance with the pool's allocation rules, so a resource might be imported and subsequently marked as noncompliant. If IPAM discovers multiple CIDRs that overlap, IPAM will import the largest CIDR only. If IPAM discovers multiple CIDRs with matching CIDRs, IPAM will randomly import one of them only.
  ///
  /// A locale must be set on the pool for this feature to work.
  bool get autoImport;

  /// Determines if a pool is publicly advertisable. This option is not available for pools with AddressFamily set to `ipv4`.
  bool get publiclyAdvertisable;

  /// The address family of the pool.
  _i4.AddressFamily? get addressFamily;

  /// The minimum netmask length required for CIDR allocations in this IPAM pool to be compliant. The minimum netmask length must be less than the maximum netmask length. Possible netmask lengths for IPv4 addresses are 0 - 32. Possible netmask lengths for IPv6 addresses are 0 - 128.
  int get allocationMinNetmaskLength;

  /// The maximum netmask length possible for CIDR allocations in this IPAM pool to be compliant. The maximum netmask length must be greater than the minimum netmask length. Possible netmask lengths for IPv4 addresses are 0 - 32. Possible netmask lengths for IPv6 addresses are 0 - 128.
  int get allocationMaxNetmaskLength;

  /// The default netmask length for allocations added to this pool. If, for example, the CIDR assigned to this pool is 10.0.0.0/8 and you enter 16 here, new allocations will default to 10.0.0.0/16.
  int get allocationDefaultNetmaskLength;

  /// Tags that are required for resources that use CIDRs from this IPAM pool. Resources that do not have these tags will not be allowed to allocate space from the pool. If the resources have their tags changed after they have allocated space or if the allocation tagging requirements are changed on the pool, the resource may be marked as noncompliant.
  _i8.BuiltList<_i5.IpamResourceTag>? get allocationResourceTags;

  /// The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  _i8.BuiltList<_i6.Tag>? get tags;

  /// Limits which service in Amazon Web Services that the pool can be used in. "ec2", for example, allows users to use space for Elastic IP addresses and VPCs.
  _i7.IpamPoolAwsService? get awsService;
  @override
  List<Object?> get props => [
        ownerId,
        ipamPoolId,
        sourceIpamPoolId,
        ipamPoolArn,
        ipamScopeArn,
        ipamScopeType,
        ipamArn,
        ipamRegion,
        locale,
        poolDepth,
        state,
        stateMessage,
        description,
        autoImport,
        publiclyAdvertisable,
        addressFamily,
        allocationMinNetmaskLength,
        allocationMaxNetmaskLength,
        allocationDefaultNetmaskLength,
        allocationResourceTags,
        tags,
        awsService,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpamPool');
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'ipamPoolId',
      ipamPoolId,
    );
    helper.add(
      'sourceIpamPoolId',
      sourceIpamPoolId,
    );
    helper.add(
      'ipamPoolArn',
      ipamPoolArn,
    );
    helper.add(
      'ipamScopeArn',
      ipamScopeArn,
    );
    helper.add(
      'ipamScopeType',
      ipamScopeType,
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
      'locale',
      locale,
    );
    helper.add(
      'poolDepth',
      poolDepth,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'stateMessage',
      stateMessage,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'autoImport',
      autoImport,
    );
    helper.add(
      'publiclyAdvertisable',
      publiclyAdvertisable,
    );
    helper.add(
      'addressFamily',
      addressFamily,
    );
    helper.add(
      'allocationMinNetmaskLength',
      allocationMinNetmaskLength,
    );
    helper.add(
      'allocationMaxNetmaskLength',
      allocationMaxNetmaskLength,
    );
    helper.add(
      'allocationDefaultNetmaskLength',
      allocationDefaultNetmaskLength,
    );
    helper.add(
      'allocationResourceTags',
      allocationResourceTags,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'awsService',
      awsService,
    );
    return helper.toString();
  }
}

class IpamPoolEc2QuerySerializer
    extends _i9.StructuredSmithySerializer<IpamPool> {
  const IpamPoolEc2QuerySerializer() : super('IpamPool');

  @override
  Iterable<Type> get types => const [
        IpamPool,
        _$IpamPool,
      ];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpamPool deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamPoolBuilder();
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
        case 'ipamPoolId':
          if (value != null) {
            result.ipamPoolId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'sourceIpamPoolId':
          if (value != null) {
            result.sourceIpamPoolId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ipamPoolArn':
          if (value != null) {
            result.ipamPoolArn = (serializers.deserialize(
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
        case 'ipamScopeType':
          if (value != null) {
            result.ipamScopeType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.IpamScopeType),
            ) as _i2.IpamScopeType);
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
        case 'locale':
          if (value != null) {
            result.locale = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'poolDepth':
          result.poolDepth = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.IpamPoolState),
            ) as _i3.IpamPoolState);
          }
          break;
        case 'stateMessage':
          if (value != null) {
            result.stateMessage = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'autoImport':
          result.autoImport = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'publiclyAdvertisable':
          result.publiclyAdvertisable = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'addressFamily':
          if (value != null) {
            result.addressFamily = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.AddressFamily),
            ) as _i4.AddressFamily);
          }
          break;
        case 'allocationMinNetmaskLength':
          result.allocationMinNetmaskLength = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'allocationMaxNetmaskLength':
          result.allocationMaxNetmaskLength = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'allocationDefaultNetmaskLength':
          result.allocationDefaultNetmaskLength = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'allocationResourceTagSet':
          if (value != null) {
            result.allocationResourceTags
                .replace((const _i9.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i9.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i5.IpamResourceTag)],
              ),
            ) as _i8.BuiltList<_i5.IpamResourceTag>));
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i9.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i9.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i6.Tag)],
              ),
            ) as _i8.BuiltList<_i6.Tag>));
          }
          break;
        case 'awsService':
          if (value != null) {
            result.awsService = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.IpamPoolAwsService),
            ) as _i7.IpamPoolAwsService);
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
    final payload = (object as IpamPool);
    final result = <Object?>[
      const _i9.XmlElementName(
        'IpamPoolResponse',
        _i9.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ownerId != null) {
      result
        ..add(const _i9.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipamPoolId != null) {
      result
        ..add(const _i9.XmlElementName('IpamPoolId'))
        ..add(serializers.serialize(
          payload.ipamPoolId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.sourceIpamPoolId != null) {
      result
        ..add(const _i9.XmlElementName('SourceIpamPoolId'))
        ..add(serializers.serialize(
          payload.sourceIpamPoolId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipamPoolArn != null) {
      result
        ..add(const _i9.XmlElementName('IpamPoolArn'))
        ..add(serializers.serialize(
          payload.ipamPoolArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipamScopeArn != null) {
      result
        ..add(const _i9.XmlElementName('IpamScopeArn'))
        ..add(serializers.serialize(
          payload.ipamScopeArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipamScopeType != null) {
      result
        ..add(const _i9.XmlElementName('IpamScopeType'))
        ..add(serializers.serialize(
          payload.ipamScopeType!,
          specifiedType: const FullType.nullable(_i2.IpamScopeType),
        ));
    }
    if (payload.ipamArn != null) {
      result
        ..add(const _i9.XmlElementName('IpamArn'))
        ..add(serializers.serialize(
          payload.ipamArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipamRegion != null) {
      result
        ..add(const _i9.XmlElementName('IpamRegion'))
        ..add(serializers.serialize(
          payload.ipamRegion!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.locale != null) {
      result
        ..add(const _i9.XmlElementName('Locale'))
        ..add(serializers.serialize(
          payload.locale!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i9.XmlElementName('PoolDepth'))
      ..add(serializers.serialize(
        payload.poolDepth,
        specifiedType: const FullType(int),
      ));
    if (payload.state != null) {
      result
        ..add(const _i9.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i3.IpamPoolState),
        ));
    }
    if (payload.stateMessage != null) {
      result
        ..add(const _i9.XmlElementName('StateMessage'))
        ..add(serializers.serialize(
          payload.stateMessage!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i9.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i9.XmlElementName('AutoImport'))
      ..add(serializers.serialize(
        payload.autoImport,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i9.XmlElementName('PubliclyAdvertisable'))
      ..add(serializers.serialize(
        payload.publiclyAdvertisable,
        specifiedType: const FullType(bool),
      ));
    if (payload.addressFamily != null) {
      result
        ..add(const _i9.XmlElementName('AddressFamily'))
        ..add(serializers.serialize(
          payload.addressFamily!,
          specifiedType: const FullType.nullable(_i4.AddressFamily),
        ));
    }
    result
      ..add(const _i9.XmlElementName('AllocationMinNetmaskLength'))
      ..add(serializers.serialize(
        payload.allocationMinNetmaskLength,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i9.XmlElementName('AllocationMaxNetmaskLength'))
      ..add(serializers.serialize(
        payload.allocationMaxNetmaskLength,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i9.XmlElementName('AllocationDefaultNetmaskLength'))
      ..add(serializers.serialize(
        payload.allocationDefaultNetmaskLength,
        specifiedType: const FullType(int),
      ));
    if (payload.allocationResourceTags != null) {
      result
        ..add(const _i9.XmlElementName('AllocationResourceTagSet'))
        ..add(const _i9.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i9.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.allocationResourceTags!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i5.IpamResourceTag)],
          ),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i9.XmlElementName('TagSet'))
        ..add(const _i9.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i9.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i6.Tag)],
          ),
        ));
    }
    if (payload.awsService != null) {
      result
        ..add(const _i9.XmlElementName('AwsService'))
        ..add(serializers.serialize(
          payload.awsService!,
          specifiedType: const FullType.nullable(_i7.IpamPoolAwsService),
        ));
    }
    return result;
  }
}
