// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_options.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_state.dart'
    as _i2;

part 'transit_gateway.g.dart';

/// Describes a transit gateway.
abstract class TransitGateway
    with _i1.AWSEquatable<TransitGateway>
    implements Built<TransitGateway, TransitGatewayBuilder> {
  /// Describes a transit gateway.
  factory TransitGateway({
    String? transitGatewayId,
    String? transitGatewayArn,
    _i2.TransitGatewayState? state,
    String? ownerId,
    String? description,
    DateTime? creationTime,
    _i3.TransitGatewayOptions? options,
    List<_i4.Tag>? tags,
  }) {
    return _$TransitGateway._(
      transitGatewayId: transitGatewayId,
      transitGatewayArn: transitGatewayArn,
      state: state,
      ownerId: ownerId,
      description: description,
      creationTime: creationTime,
      options: options,
      tags: tags == null ? null : _i5.BuiltList(tags),
    );
  }

  /// Describes a transit gateway.
  factory TransitGateway.build([void Function(TransitGatewayBuilder) updates]) =
      _$TransitGateway;

  const TransitGateway._();

  static const List<_i6.SmithySerializer> serializers = [
    TransitGatewayEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayBuilder b) {}

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The Amazon Resource Name (ARN) of the transit gateway.
  String? get transitGatewayArn;

  /// The state of the transit gateway.
  _i2.TransitGatewayState? get state;

  /// The ID of the Amazon Web Services account that owns the transit gateway.
  String? get ownerId;

  /// The description of the transit gateway.
  String? get description;

  /// The creation time.
  DateTime? get creationTime;

  /// The transit gateway options.
  _i3.TransitGatewayOptions? get options;

  /// The tags for the transit gateway.
  _i5.BuiltList<_i4.Tag>? get tags;
  @override
  List<Object?> get props => [
        transitGatewayId,
        transitGatewayArn,
        state,
        ownerId,
        description,
        creationTime,
        options,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGateway');
    helper.add(
      'transitGatewayId',
      transitGatewayId,
    );
    helper.add(
      'transitGatewayArn',
      transitGatewayArn,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'creationTime',
      creationTime,
    );
    helper.add(
      'options',
      options,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class TransitGatewayEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<TransitGateway> {
  const TransitGatewayEc2QuerySerializer() : super('TransitGateway');

  @override
  Iterable<Type> get types => const [
        TransitGateway,
        _$TransitGateway,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGateway deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayId':
          if (value != null) {
            result.transitGatewayId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'transitGatewayArn':
          if (value != null) {
            result.transitGatewayArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TransitGatewayState),
            ) as _i2.TransitGatewayState);
          }
          break;
        case 'ownerId':
          if (value != null) {
            result.ownerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'creationTime':
          if (value != null) {
            result.creationTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'options':
          if (value != null) {
            result.options.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.TransitGatewayOptions),
            ) as _i3.TransitGatewayOptions));
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.Tag)],
              ),
            ) as _i5.BuiltList<_i4.Tag>));
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
    final payload = (object as TransitGateway);
    final result = <Object?>[
      const _i6.XmlElementName(
        'TransitGatewayResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayId != null) {
      result
        ..add(const _i6.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          payload.transitGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.transitGatewayArn != null) {
      result
        ..add(const _i6.XmlElementName('TransitGatewayArn'))
        ..add(serializers.serialize(
          payload.transitGatewayArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i6.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i2.TransitGatewayState),
        ));
    }
    if (payload.ownerId != null) {
      result
        ..add(const _i6.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i6.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.creationTime != null) {
      result
        ..add(const _i6.XmlElementName('CreationTime'))
        ..add(serializers.serialize(
          payload.creationTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.options != null) {
      result
        ..add(const _i6.XmlElementName('Options'))
        ..add(serializers.serialize(
          payload.options!,
          specifiedType: const FullType(_i3.TransitGatewayOptions),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i6.XmlElementName('TagSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.Tag)],
          ),
        ));
    }
    return result;
  }
}
