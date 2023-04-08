// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_ipam_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/add_ipam_operating_region.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/remove_ipam_operating_region.dart'
    as _i4;

part 'modify_ipam_request.g.dart';

abstract class ModifyIpamRequest
    with _i1.HttpInput<ModifyIpamRequest>, _i2.AWSEquatable<ModifyIpamRequest>
    implements Built<ModifyIpamRequest, ModifyIpamRequestBuilder> {
  factory ModifyIpamRequest({
    bool? dryRun,
    required String ipamId,
    String? description,
    List<_i3.AddIpamOperatingRegion>? addOperatingRegions,
    List<_i4.RemoveIpamOperatingRegion>? removeOperatingRegions,
  }) {
    dryRun ??= false;
    return _$ModifyIpamRequest._(
      dryRun: dryRun,
      ipamId: ipamId,
      description: description,
      addOperatingRegions: addOperatingRegions == null
          ? null
          : _i5.BuiltList(addOperatingRegions),
      removeOperatingRegions: removeOperatingRegions == null
          ? null
          : _i5.BuiltList(removeOperatingRegions),
    );
  }

  factory ModifyIpamRequest.build(
      [void Function(ModifyIpamRequestBuilder) updates]) = _$ModifyIpamRequest;

  const ModifyIpamRequest._();

  factory ModifyIpamRequest.fromRequest(
    ModifyIpamRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyIpamRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyIpamRequestBuilder b) {
    b.dryRun = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the IPAM you want to modify.
  String get ipamId;

  /// The description of the IPAM you want to modify.
  String? get description;

  /// Choose the operating Regions for the IPAM. Operating Regions are Amazon Web Services Regions where the IPAM is allowed to manage IP address CIDRs. IPAM only discovers and monitors resources in the Amazon Web Services Regions you select as operating Regions.
  ///
  /// For more information about operating Regions, see [Create an IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i5.BuiltList<_i3.AddIpamOperatingRegion>? get addOperatingRegions;

  /// The operating Regions to remove.
  _i5.BuiltList<_i4.RemoveIpamOperatingRegion>? get removeOperatingRegions;
  @override
  ModifyIpamRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamId,
        description,
        addOperatingRegions,
        removeOperatingRegions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyIpamRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'ipamId',
      ipamId,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'addOperatingRegions',
      addOperatingRegions,
    );
    helper.add(
      'removeOperatingRegions',
      removeOperatingRegions,
    );
    return helper.toString();
  }
}

class ModifyIpamRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyIpamRequest> {
  const ModifyIpamRequestEc2QuerySerializer() : super('ModifyIpamRequest');

  @override
  Iterable<Type> get types => const [
        ModifyIpamRequest,
        _$ModifyIpamRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyIpamRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyIpamRequestBuilder();
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
        case 'IpamId':
          result.ipamId = (serializers.deserialize(
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
        case 'AddOperatingRegion':
          if (value != null) {
            result.addOperatingRegions.replace(
                (const _i1.XmlBuiltListSerializer(
                        indexer: _i1.XmlIndexer.ec2QueryList)
                    .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i3.AddIpamOperatingRegion)],
              ),
            ) as _i5.BuiltList<_i3.AddIpamOperatingRegion>));
          }
          break;
        case 'RemoveOperatingRegion':
          if (value != null) {
            result.removeOperatingRegions.replace(
                (const _i1.XmlBuiltListSerializer(
                        indexer: _i1.XmlIndexer.ec2QueryList)
                    .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.RemoveIpamOperatingRegion)],
              ),
            ) as _i5.BuiltList<_i4.RemoveIpamOperatingRegion>));
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
    final payload = (object as ModifyIpamRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyIpamRequestResponse',
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
      ..add(const _i1.XmlElementName('IpamId'))
      ..add(serializers.serialize(
        payload.ipamId,
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
    if (payload.addOperatingRegions != null) {
      result
        ..add(const _i1.XmlElementName('AddOperatingRegion'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          payload.addOperatingRegions!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.AddIpamOperatingRegion)],
          ),
        ));
    }
    if (payload.removeOperatingRegions != null) {
      result
        ..add(const _i1.XmlElementName('RemoveOperatingRegion'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          payload.removeOperatingRegions!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.RemoveIpamOperatingRegion)],
          ),
        ));
    }
    return result;
  }
}
