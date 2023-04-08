// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_transit_gateway_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_request_options.dart'
    as _i3;

part 'create_transit_gateway_request.g.dart';

abstract class CreateTransitGatewayRequest
    with
        _i1.HttpInput<CreateTransitGatewayRequest>,
        _i2.AWSEquatable<CreateTransitGatewayRequest>
    implements
        Built<CreateTransitGatewayRequest, CreateTransitGatewayRequestBuilder> {
  factory CreateTransitGatewayRequest({
    String? description,
    _i3.TransitGatewayRequestOptions? options,
    List<_i4.TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateTransitGatewayRequest._(
      description: description,
      options: options,
      tagSpecifications:
          tagSpecifications == null ? null : _i5.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CreateTransitGatewayRequest.build(
          [void Function(CreateTransitGatewayRequestBuilder) updates]) =
      _$CreateTransitGatewayRequest;

  const CreateTransitGatewayRequest._();

  factory CreateTransitGatewayRequest.fromRequest(
    CreateTransitGatewayRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateTransitGatewayRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTransitGatewayRequestBuilder b) {
    b.dryRun = false;
  }

  /// A description of the transit gateway.
  String? get description;

  /// The transit gateway options.
  _i3.TransitGatewayRequestOptions? get options;

  /// The tags to apply to the transit gateway.
  _i5.BuiltList<_i4.TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateTransitGatewayRequest getPayload() => this;
  @override
  List<Object?> get props => [
        description,
        options,
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateTransitGatewayRequest');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'options',
      options,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class CreateTransitGatewayRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateTransitGatewayRequest> {
  const CreateTransitGatewayRequestEc2QuerySerializer()
      : super('CreateTransitGatewayRequest');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayRequest,
        _$CreateTransitGatewayRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayRequestBuilder();
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
        case 'Options':
          if (value != null) {
            result.options.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.TransitGatewayRequestOptions),
            ) as _i3.TransitGatewayRequestOptions));
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
                _i5.BuiltList,
                [FullType(_i4.TagSpecification)],
              ),
            ) as _i5.BuiltList<_i4.TagSpecification>));
          }
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
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
    final payload = (object as CreateTransitGatewayRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateTransitGatewayRequestResponse',
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
    if (payload.options != null) {
      result
        ..add(const _i1.XmlElementName('Options'))
        ..add(serializers.serialize(
          payload.options!,
          specifiedType: const FullType(_i3.TransitGatewayRequestOptions),
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
            _i5.BuiltList,
            [FullType(_i4.TagSpecification)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
