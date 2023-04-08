// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_public_ipv4_pool_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i3;

part 'create_public_ipv4_pool_request.g.dart';

abstract class CreatePublicIpv4PoolRequest
    with
        _i1.HttpInput<CreatePublicIpv4PoolRequest>,
        _i2.AWSEquatable<CreatePublicIpv4PoolRequest>
    implements
        Built<CreatePublicIpv4PoolRequest, CreatePublicIpv4PoolRequestBuilder> {
  factory CreatePublicIpv4PoolRequest({
    bool? dryRun,
    List<_i3.TagSpecification>? tagSpecifications,
  }) {
    dryRun ??= false;
    return _$CreatePublicIpv4PoolRequest._(
      dryRun: dryRun,
      tagSpecifications:
          tagSpecifications == null ? null : _i4.BuiltList(tagSpecifications),
    );
  }

  factory CreatePublicIpv4PoolRequest.build(
          [void Function(CreatePublicIpv4PoolRequestBuilder) updates]) =
      _$CreatePublicIpv4PoolRequest;

  const CreatePublicIpv4PoolRequest._();

  factory CreatePublicIpv4PoolRequest.fromRequest(
    CreatePublicIpv4PoolRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreatePublicIpv4PoolRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreatePublicIpv4PoolRequestBuilder b) {
    b.dryRun = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  _i4.BuiltList<_i3.TagSpecification>? get tagSpecifications;
  @override
  CreatePublicIpv4PoolRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreatePublicIpv4PoolRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    return helper.toString();
  }
}

class CreatePublicIpv4PoolRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreatePublicIpv4PoolRequest> {
  const CreatePublicIpv4PoolRequestEc2QuerySerializer()
      : super('CreatePublicIpv4PoolRequest');

  @override
  Iterable<Type> get types => const [
        CreatePublicIpv4PoolRequest,
        _$CreatePublicIpv4PoolRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreatePublicIpv4PoolRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePublicIpv4PoolRequestBuilder();
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
        case 'TagSpecification':
          if (value != null) {
            result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.TagSpecification)],
              ),
            ) as _i4.BuiltList<_i3.TagSpecification>));
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
    final payload = (object as CreatePublicIpv4PoolRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreatePublicIpv4PoolRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.TagSpecification)],
          ),
        ));
    }
    return result;
  }
}
