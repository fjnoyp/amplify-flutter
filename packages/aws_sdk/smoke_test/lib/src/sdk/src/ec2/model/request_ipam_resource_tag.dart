// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.request_ipam_resource_tag; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'request_ipam_resource_tag.g.dart';

/// A tag on an IPAM resource.
abstract class RequestIpamResourceTag
    with _i1.AWSEquatable<RequestIpamResourceTag>
    implements Built<RequestIpamResourceTag, RequestIpamResourceTagBuilder> {
  /// A tag on an IPAM resource.
  factory RequestIpamResourceTag({
    String? key,
    String? value,
  }) {
    return _$RequestIpamResourceTag._(
      key: key,
      value: value,
    );
  }

  /// A tag on an IPAM resource.
  factory RequestIpamResourceTag.build(
          [void Function(RequestIpamResourceTagBuilder) updates]) =
      _$RequestIpamResourceTag;

  const RequestIpamResourceTag._();

  static const List<_i2.SmithySerializer> serializers = [
    RequestIpamResourceTagEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RequestIpamResourceTagBuilder b) {}

  /// The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  String? get key;

  /// The value for the tag.
  String? get value;
  @override
  List<Object?> get props => [
        key,
        value,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RequestIpamResourceTag');
    helper.add(
      'key',
      key,
    );
    helper.add(
      'value',
      value,
    );
    return helper.toString();
  }
}

class RequestIpamResourceTagEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<RequestIpamResourceTag> {
  const RequestIpamResourceTagEc2QuerySerializer()
      : super('RequestIpamResourceTag');

  @override
  Iterable<Type> get types => const [
        RequestIpamResourceTag,
        _$RequestIpamResourceTag,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RequestIpamResourceTag deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestIpamResourceTagBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Key':
          if (value != null) {
            result.key = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Value':
          if (value != null) {
            result.value = (serializers.deserialize(
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
    final payload = (object as RequestIpamResourceTag);
    final result = <Object?>[
      const _i2.XmlElementName(
        'RequestIpamResourceTagResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.key != null) {
      result
        ..add(const _i2.XmlElementName('Key'))
        ..add(serializers.serialize(
          payload.key!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.value != null) {
      result
        ..add(const _i2.XmlElementName('Value'))
        ..add(serializers.serialize(
          payload.value!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
