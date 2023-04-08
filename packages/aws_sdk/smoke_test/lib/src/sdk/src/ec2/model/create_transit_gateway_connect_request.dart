// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_transit_gateway_connect_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_connect_request_options.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i4;

part 'create_transit_gateway_connect_request.g.dart';

abstract class CreateTransitGatewayConnectRequest
    with
        _i1.HttpInput<CreateTransitGatewayConnectRequest>,
        _i2.AWSEquatable<CreateTransitGatewayConnectRequest>
    implements
        Built<CreateTransitGatewayConnectRequest,
            CreateTransitGatewayConnectRequestBuilder> {
  factory CreateTransitGatewayConnectRequest({
    required String transportTransitGatewayAttachmentId,
    required _i3.CreateTransitGatewayConnectRequestOptions options,
    List<_i4.TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateTransitGatewayConnectRequest._(
      transportTransitGatewayAttachmentId: transportTransitGatewayAttachmentId,
      options: options,
      tagSpecifications:
          tagSpecifications == null ? null : _i5.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CreateTransitGatewayConnectRequest.build(
          [void Function(CreateTransitGatewayConnectRequestBuilder) updates]) =
      _$CreateTransitGatewayConnectRequest;

  const CreateTransitGatewayConnectRequest._();

  factory CreateTransitGatewayConnectRequest.fromRequest(
    CreateTransitGatewayConnectRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateTransitGatewayConnectRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTransitGatewayConnectRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the transit gateway attachment. You can specify a VPC attachment or Amazon Web Services Direct Connect attachment.
  String get transportTransitGatewayAttachmentId;

  /// The Connect attachment options.
  _i3.CreateTransitGatewayConnectRequestOptions get options;

  /// The tags to apply to the Connect attachment.
  _i5.BuiltList<_i4.TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateTransitGatewayConnectRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transportTransitGatewayAttachmentId,
        options,
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTransitGatewayConnectRequest');
    helper.add(
      'transportTransitGatewayAttachmentId',
      transportTransitGatewayAttachmentId,
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

class CreateTransitGatewayConnectRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateTransitGatewayConnectRequest> {
  const CreateTransitGatewayConnectRequestEc2QuerySerializer()
      : super('CreateTransitGatewayConnectRequest');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayConnectRequest,
        _$CreateTransitGatewayConnectRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayConnectRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayConnectRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TransportTransitGatewayAttachmentId':
          result.transportTransitGatewayAttachmentId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Options':
          result.options.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i3.CreateTransitGatewayConnectRequestOptions),
          ) as _i3.CreateTransitGatewayConnectRequestOptions));
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
    final payload = (object as CreateTransitGatewayConnectRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateTransitGatewayConnectRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('TransportTransitGatewayAttachmentId'))
      ..add(serializers.serialize(
        payload.transportTransitGatewayAttachmentId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('Options'))
      ..add(serializers.serialize(
        payload.options,
        specifiedType:
            const FullType(_i3.CreateTransitGatewayConnectRequestOptions),
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
