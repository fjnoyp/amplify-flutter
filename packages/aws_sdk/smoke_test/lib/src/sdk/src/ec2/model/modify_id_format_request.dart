// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_id_format_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_id_format_request.g.dart';

abstract class ModifyIdFormatRequest
    with
        _i1.HttpInput<ModifyIdFormatRequest>,
        _i2.AWSEquatable<ModifyIdFormatRequest>
    implements Built<ModifyIdFormatRequest, ModifyIdFormatRequestBuilder> {
  factory ModifyIdFormatRequest({
    required String resource,
    bool? useLongIds,
  }) {
    useLongIds ??= false;
    return _$ModifyIdFormatRequest._(
      resource: resource,
      useLongIds: useLongIds,
    );
  }

  factory ModifyIdFormatRequest.build(
          [void Function(ModifyIdFormatRequestBuilder) updates]) =
      _$ModifyIdFormatRequest;

  const ModifyIdFormatRequest._();

  factory ModifyIdFormatRequest.fromRequest(
    ModifyIdFormatRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyIdFormatRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyIdFormatRequestBuilder b) {
    b.useLongIds = false;
  }

  /// The type of resource: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `route-table` | `route-table-association` | `security-group` | `subnet` | `subnet-cidr-block-association` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`.
  ///
  /// Alternatively, use the `all-current` option to include all resource types that are currently within their opt-in period for longer IDs.
  String get resource;

  /// Indicate whether the resource should use longer IDs (17-character IDs).
  bool get useLongIds;
  @override
  ModifyIdFormatRequest getPayload() => this;
  @override
  List<Object?> get props => [
        resource,
        useLongIds,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyIdFormatRequest');
    helper.add(
      'resource',
      resource,
    );
    helper.add(
      'useLongIds',
      useLongIds,
    );
    return helper.toString();
  }
}

class ModifyIdFormatRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyIdFormatRequest> {
  const ModifyIdFormatRequestEc2QuerySerializer()
      : super('ModifyIdFormatRequest');

  @override
  Iterable<Type> get types => const [
        ModifyIdFormatRequest,
        _$ModifyIdFormatRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyIdFormatRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyIdFormatRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Resource':
          result.resource = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'UseLongIds':
          result.useLongIds = (serializers.deserialize(
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
    final payload = (object as ModifyIdFormatRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyIdFormatRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('Resource'))
      ..add(serializers.serialize(
        payload.resource,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('UseLongIds'))
      ..add(serializers.serialize(
        payload.useLongIds,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
