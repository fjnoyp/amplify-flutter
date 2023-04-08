// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_traffic_mirror_filter_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i3;

part 'create_traffic_mirror_filter_request.g.dart';

abstract class CreateTrafficMirrorFilterRequest
    with
        _i1.HttpInput<CreateTrafficMirrorFilterRequest>,
        _i2.AWSEquatable<CreateTrafficMirrorFilterRequest>
    implements
        Built<CreateTrafficMirrorFilterRequest,
            CreateTrafficMirrorFilterRequestBuilder> {
  factory CreateTrafficMirrorFilterRequest({
    String? description,
    List<_i3.TagSpecification>? tagSpecifications,
    bool? dryRun,
    String? clientToken,
  }) {
    dryRun ??= false;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientToken ??= _i2.uuid(secure: true);
    }
    return _$CreateTrafficMirrorFilterRequest._(
      description: description,
      tagSpecifications:
          tagSpecifications == null ? null : _i4.BuiltList(tagSpecifications),
      dryRun: dryRun,
      clientToken: clientToken,
    );
  }

  factory CreateTrafficMirrorFilterRequest.build(
          [void Function(CreateTrafficMirrorFilterRequestBuilder) updates]) =
      _$CreateTrafficMirrorFilterRequest;

  const CreateTrafficMirrorFilterRequest._();

  factory CreateTrafficMirrorFilterRequest.fromRequest(
    CreateTrafficMirrorFilterRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateTrafficMirrorFilterRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTrafficMirrorFilterRequestBuilder b) {
    b.dryRun = false;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientToken = _i2.uuid(secure: true);
    }
  }

  /// The description of the Traffic Mirror filter.
  String? get description;

  /// The tags to assign to a Traffic Mirror filter.
  _i4.BuiltList<_i3.TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  CreateTrafficMirrorFilterRequest getPayload() => this;
  @override
  List<Object?> get props => [
        description,
        tagSpecifications,
        dryRun,
        clientToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTrafficMirrorFilterRequest');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    return helper.toString();
  }
}

class CreateTrafficMirrorFilterRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateTrafficMirrorFilterRequest> {
  const CreateTrafficMirrorFilterRequestEc2QuerySerializer()
      : super('CreateTrafficMirrorFilterRequest');

  @override
  Iterable<Type> get types => const [
        CreateTrafficMirrorFilterRequest,
        _$CreateTrafficMirrorFilterRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTrafficMirrorFilterRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTrafficMirrorFilterRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
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
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
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
    final payload = (object as CreateTrafficMirrorFilterRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateTrafficMirrorFilterRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.description != null) {
      result
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
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
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
