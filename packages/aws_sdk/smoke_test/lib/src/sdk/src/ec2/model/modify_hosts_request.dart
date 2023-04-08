// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_hosts_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/auto_placement.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/host_recovery.dart' as _i4;

part 'modify_hosts_request.g.dart';

abstract class ModifyHostsRequest
    with _i1.HttpInput<ModifyHostsRequest>, _i2.AWSEquatable<ModifyHostsRequest>
    implements Built<ModifyHostsRequest, ModifyHostsRequestBuilder> {
  factory ModifyHostsRequest({
    _i3.AutoPlacement? autoPlacement,
    required List<String> hostIds,
    _i4.HostRecovery? hostRecovery,
    String? instanceType,
    String? instanceFamily,
  }) {
    return _$ModifyHostsRequest._(
      autoPlacement: autoPlacement,
      hostIds: _i5.BuiltList(hostIds),
      hostRecovery: hostRecovery,
      instanceType: instanceType,
      instanceFamily: instanceFamily,
    );
  }

  factory ModifyHostsRequest.build(
          [void Function(ModifyHostsRequestBuilder) updates]) =
      _$ModifyHostsRequest;

  const ModifyHostsRequest._();

  factory ModifyHostsRequest.fromRequest(
    ModifyHostsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyHostsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyHostsRequestBuilder b) {}

  /// Specify whether to enable or disable auto-placement.
  _i3.AutoPlacement? get autoPlacement;

  /// The IDs of the Dedicated Hosts to modify.
  _i5.BuiltList<String> get hostIds;

  /// Indicates whether to enable or disable host recovery for the Dedicated Host. For more information, see [Host recovery](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-recovery.html) in the _Amazon EC2 User Guide_.
  _i4.HostRecovery? get hostRecovery;

  /// Specifies the instance type to be supported by the Dedicated Host. Specify this parameter to modify a Dedicated Host to support only a specific instance type.
  ///
  /// If you want to modify a Dedicated Host to support multiple instance types in its current instance family, omit this parameter and specify **InstanceFamily** instead. You cannot specify **InstanceType** and **InstanceFamily** in the same request.
  String? get instanceType;

  /// Specifies the instance family to be supported by the Dedicated Host. Specify this parameter to modify a Dedicated Host to support multiple instance types within its current instance family.
  ///
  /// If you want to modify a Dedicated Host to support a specific instance type only, omit this parameter and specify **InstanceType** instead. You cannot specify **InstanceFamily** and **InstanceType** in the same request.
  String? get instanceFamily;
  @override
  ModifyHostsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        autoPlacement,
        hostIds,
        hostRecovery,
        instanceType,
        instanceFamily,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyHostsRequest');
    helper.add(
      'autoPlacement',
      autoPlacement,
    );
    helper.add(
      'hostIds',
      hostIds,
    );
    helper.add(
      'hostRecovery',
      hostRecovery,
    );
    helper.add(
      'instanceType',
      instanceType,
    );
    helper.add(
      'instanceFamily',
      instanceFamily,
    );
    return helper.toString();
  }
}

class ModifyHostsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyHostsRequest> {
  const ModifyHostsRequestEc2QuerySerializer() : super('ModifyHostsRequest');

  @override
  Iterable<Type> get types => const [
        ModifyHostsRequest,
        _$ModifyHostsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyHostsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyHostsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'autoPlacement':
          if (value != null) {
            result.autoPlacement = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AutoPlacement),
            ) as _i3.AutoPlacement);
          }
          break;
        case 'hostId':
          result.hostIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(String)],
            ),
          ) as _i5.BuiltList<String>));
          break;
        case 'HostRecovery':
          if (value != null) {
            result.hostRecovery = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.HostRecovery),
            ) as _i4.HostRecovery);
          }
          break;
        case 'InstanceType':
          if (value != null) {
            result.instanceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'InstanceFamily':
          if (value != null) {
            result.instanceFamily = (serializers.deserialize(
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
    final payload = (object as ModifyHostsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyHostsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.autoPlacement != null) {
      result
        ..add(const _i1.XmlElementName('AutoPlacement'))
        ..add(serializers.serialize(
          payload.autoPlacement!,
          specifiedType: const FullType.nullable(_i3.AutoPlacement),
        ));
    }
    result
      ..add(const _i1.XmlElementName('HostId'))
      ..add(const _i1.XmlBuiltListSerializer(
        memberName: 'item',
        indexer: _i1.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        payload.hostIds,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(String)],
        ),
      ));
    if (payload.hostRecovery != null) {
      result
        ..add(const _i1.XmlElementName('HostRecovery'))
        ..add(serializers.serialize(
          payload.hostRecovery!,
          specifiedType: const FullType.nullable(_i4.HostRecovery),
        ));
    }
    if (payload.instanceType != null) {
      result
        ..add(const _i1.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceFamily != null) {
      result
        ..add(const _i1.XmlElementName('InstanceFamily'))
        ..add(serializers.serialize(
          payload.instanceFamily!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
