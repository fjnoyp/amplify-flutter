// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_ipam_scope_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_ipam_scope_request.g.dart';

abstract class ModifyIpamScopeRequest
    with
        _i1.HttpInput<ModifyIpamScopeRequest>,
        _i2.AWSEquatable<ModifyIpamScopeRequest>
    implements Built<ModifyIpamScopeRequest, ModifyIpamScopeRequestBuilder> {
  factory ModifyIpamScopeRequest({
    bool? dryRun,
    required String ipamScopeId,
    String? description,
  }) {
    dryRun ??= false;
    return _$ModifyIpamScopeRequest._(
      dryRun: dryRun,
      ipamScopeId: ipamScopeId,
      description: description,
    );
  }

  factory ModifyIpamScopeRequest.build(
          [void Function(ModifyIpamScopeRequestBuilder) updates]) =
      _$ModifyIpamScopeRequest;

  const ModifyIpamScopeRequest._();

  factory ModifyIpamScopeRequest.fromRequest(
    ModifyIpamScopeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyIpamScopeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyIpamScopeRequestBuilder b) {
    b.dryRun = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the scope you want to modify.
  String get ipamScopeId;

  /// The description of the scope you want to modify.
  String? get description;
  @override
  ModifyIpamScopeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamScopeId,
        description,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyIpamScopeRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'ipamScopeId',
      ipamScopeId,
    );
    helper.add(
      'description',
      description,
    );
    return helper.toString();
  }
}

class ModifyIpamScopeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyIpamScopeRequest> {
  const ModifyIpamScopeRequestEc2QuerySerializer()
      : super('ModifyIpamScopeRequest');

  @override
  Iterable<Type> get types => const [
        ModifyIpamScopeRequest,
        _$ModifyIpamScopeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyIpamScopeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyIpamScopeRequestBuilder();
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
        case 'IpamScopeId':
          result.ipamScopeId = (serializers.deserialize(
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
    final payload = (object as ModifyIpamScopeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyIpamScopeRequestResponse',
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
      ..add(const _i1.XmlElementName('IpamScopeId'))
      ..add(serializers.serialize(
        payload.ipamScopeId,
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
    return result;
  }
}
