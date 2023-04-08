// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_ipam_pool_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/request_ipam_resource_tag.dart'
    as _i3;

part 'modify_ipam_pool_request.g.dart';

abstract class ModifyIpamPoolRequest
    with
        _i1.HttpInput<ModifyIpamPoolRequest>,
        _i2.AWSEquatable<ModifyIpamPoolRequest>
    implements Built<ModifyIpamPoolRequest, ModifyIpamPoolRequestBuilder> {
  factory ModifyIpamPoolRequest({
    bool? dryRun,
    required String ipamPoolId,
    String? description,
    bool? autoImport,
    int? allocationMinNetmaskLength,
    int? allocationMaxNetmaskLength,
    int? allocationDefaultNetmaskLength,
    bool? clearAllocationDefaultNetmaskLength,
    List<_i3.RequestIpamResourceTag>? addAllocationResourceTags,
    List<_i3.RequestIpamResourceTag>? removeAllocationResourceTags,
  }) {
    dryRun ??= false;
    autoImport ??= false;
    allocationMinNetmaskLength ??= 0;
    allocationMaxNetmaskLength ??= 0;
    allocationDefaultNetmaskLength ??= 0;
    clearAllocationDefaultNetmaskLength ??= false;
    return _$ModifyIpamPoolRequest._(
      dryRun: dryRun,
      ipamPoolId: ipamPoolId,
      description: description,
      autoImport: autoImport,
      allocationMinNetmaskLength: allocationMinNetmaskLength,
      allocationMaxNetmaskLength: allocationMaxNetmaskLength,
      allocationDefaultNetmaskLength: allocationDefaultNetmaskLength,
      clearAllocationDefaultNetmaskLength: clearAllocationDefaultNetmaskLength,
      addAllocationResourceTags: addAllocationResourceTags == null
          ? null
          : _i4.BuiltList(addAllocationResourceTags),
      removeAllocationResourceTags: removeAllocationResourceTags == null
          ? null
          : _i4.BuiltList(removeAllocationResourceTags),
    );
  }

  factory ModifyIpamPoolRequest.build(
          [void Function(ModifyIpamPoolRequestBuilder) updates]) =
      _$ModifyIpamPoolRequest;

  const ModifyIpamPoolRequest._();

  factory ModifyIpamPoolRequest.fromRequest(
    ModifyIpamPoolRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyIpamPoolRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyIpamPoolRequestBuilder b) {
    b.dryRun = false;
    b.autoImport = false;
    b.allocationMinNetmaskLength = 0;
    b.allocationMaxNetmaskLength = 0;
    b.allocationDefaultNetmaskLength = 0;
    b.clearAllocationDefaultNetmaskLength = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the IPAM pool you want to modify.
  String get ipamPoolId;

  /// The description of the IPAM pool you want to modify.
  String? get description;

  /// If true, IPAM will continuously look for resources within the CIDR range of this pool and automatically import them as allocations into your IPAM. The CIDRs that will be allocated for these resources must not already be allocated to other resources in order for the import to succeed. IPAM will import a CIDR regardless of its compliance with the pool's allocation rules, so a resource might be imported and subsequently marked as noncompliant. If IPAM discovers multiple CIDRs that overlap, IPAM will import the largest CIDR only. If IPAM discovers multiple CIDRs with matching CIDRs, IPAM will randomly import one of them only.
  ///
  /// A locale must be set on the pool for this feature to work.
  bool get autoImport;

  /// The minimum netmask length required for CIDR allocations in this IPAM pool to be compliant. Possible netmask lengths for IPv4 addresses are 0 - 32. Possible netmask lengths for IPv6 addresses are 0 - 128. The minimum netmask length must be less than the maximum netmask length.
  int get allocationMinNetmaskLength;

  /// The maximum netmask length possible for CIDR allocations in this IPAM pool to be compliant. Possible netmask lengths for IPv4 addresses are 0 - 32. Possible netmask lengths for IPv6 addresses are 0 - 128.The maximum netmask length must be greater than the minimum netmask length.
  int get allocationMaxNetmaskLength;

  /// The default netmask length for allocations added to this pool. If, for example, the CIDR assigned to this pool is 10.0.0.0/8 and you enter 16 here, new allocations will default to 10.0.0.0/16.
  int get allocationDefaultNetmaskLength;

  /// Clear the default netmask length allocation rule for this pool.
  bool get clearAllocationDefaultNetmaskLength;

  /// Add tag allocation rules to a pool. For more information about allocation rules, see [Create a top-level pool](https://docs.aws.amazon.com/vpc/latest/ipam/create-top-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i4.BuiltList<_i3.RequestIpamResourceTag>? get addAllocationResourceTags;

  /// Remove tag allocation rules from a pool.
  _i4.BuiltList<_i3.RequestIpamResourceTag>? get removeAllocationResourceTags;
  @override
  ModifyIpamPoolRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamPoolId,
        description,
        autoImport,
        allocationMinNetmaskLength,
        allocationMaxNetmaskLength,
        allocationDefaultNetmaskLength,
        clearAllocationDefaultNetmaskLength,
        addAllocationResourceTags,
        removeAllocationResourceTags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyIpamPoolRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'ipamPoolId',
      ipamPoolId,
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
      'clearAllocationDefaultNetmaskLength',
      clearAllocationDefaultNetmaskLength,
    );
    helper.add(
      'addAllocationResourceTags',
      addAllocationResourceTags,
    );
    helper.add(
      'removeAllocationResourceTags',
      removeAllocationResourceTags,
    );
    return helper.toString();
  }
}

class ModifyIpamPoolRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyIpamPoolRequest> {
  const ModifyIpamPoolRequestEc2QuerySerializer()
      : super('ModifyIpamPoolRequest');

  @override
  Iterable<Type> get types => const [
        ModifyIpamPoolRequest,
        _$ModifyIpamPoolRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyIpamPoolRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyIpamPoolRequestBuilder();
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
        case 'IpamPoolId':
          result.ipamPoolId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AutoImport':
          result.autoImport = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'AllocationMinNetmaskLength':
          result.allocationMinNetmaskLength = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'AllocationMaxNetmaskLength':
          result.allocationMaxNetmaskLength = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'AllocationDefaultNetmaskLength':
          result.allocationDefaultNetmaskLength = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'ClearAllocationDefaultNetmaskLength':
          result.clearAllocationDefaultNetmaskLength = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'AddAllocationResourceTag':
          if (value != null) {
            result.addAllocationResourceTags
                .replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.RequestIpamResourceTag)],
              ),
            ) as _i4.BuiltList<_i3.RequestIpamResourceTag>));
          }
          break;
        case 'RemoveAllocationResourceTag':
          if (value != null) {
            result.removeAllocationResourceTags
                .replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.RequestIpamResourceTag)],
              ),
            ) as _i4.BuiltList<_i3.RequestIpamResourceTag>));
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
    final payload = (object as ModifyIpamPoolRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyIpamPoolRequestResponse',
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
      ..add(const _i1.XmlElementName('IpamPoolId'))
      ..add(serializers.serialize(
        payload.ipamPoolId,
        specifiedType: const FullType(String),
      ));
    if (payload.description != null) {
      result
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('AutoImport'))
      ..add(serializers.serialize(
        payload.autoImport,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('AllocationMinNetmaskLength'))
      ..add(serializers.serialize(
        payload.allocationMinNetmaskLength,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i1.XmlElementName('AllocationMaxNetmaskLength'))
      ..add(serializers.serialize(
        payload.allocationMaxNetmaskLength,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i1.XmlElementName('AllocationDefaultNetmaskLength'))
      ..add(serializers.serialize(
        payload.allocationDefaultNetmaskLength,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i1.XmlElementName('ClearAllocationDefaultNetmaskLength'))
      ..add(serializers.serialize(
        payload.clearAllocationDefaultNetmaskLength,
        specifiedType: const FullType(bool),
      ));
    if (payload.addAllocationResourceTags != null) {
      result
        ..add(const _i1.XmlElementName('AddAllocationResourceTag'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.addAllocationResourceTags!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.RequestIpamResourceTag)],
          ),
        ));
    }
    if (payload.removeAllocationResourceTags != null) {
      result
        ..add(const _i1.XmlElementName('RemoveAllocationResourceTag'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.removeAllocationResourceTags!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.RequestIpamResourceTag)],
          ),
        ));
    }
    return result;
  }
}
