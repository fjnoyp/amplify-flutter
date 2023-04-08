// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_multicast_domain; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_options.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_state.dart'
    as _i3;

part 'transit_gateway_multicast_domain.g.dart';

/// Describes the transit gateway multicast domain.
abstract class TransitGatewayMulticastDomain
    with
        _i1.AWSEquatable<TransitGatewayMulticastDomain>
    implements
        Built<TransitGatewayMulticastDomain,
            TransitGatewayMulticastDomainBuilder> {
  /// Describes the transit gateway multicast domain.
  factory TransitGatewayMulticastDomain({
    String? transitGatewayMulticastDomainId,
    String? transitGatewayId,
    String? transitGatewayMulticastDomainArn,
    String? ownerId,
    _i2.TransitGatewayMulticastDomainOptions? options,
    _i3.TransitGatewayMulticastDomainState? state,
    DateTime? creationTime,
    List<_i4.Tag>? tags,
  }) {
    return _$TransitGatewayMulticastDomain._(
      transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
      transitGatewayId: transitGatewayId,
      transitGatewayMulticastDomainArn: transitGatewayMulticastDomainArn,
      ownerId: ownerId,
      options: options,
      state: state,
      creationTime: creationTime,
      tags: tags == null ? null : _i5.BuiltList(tags),
    );
  }

  /// Describes the transit gateway multicast domain.
  factory TransitGatewayMulticastDomain.build(
          [void Function(TransitGatewayMulticastDomainBuilder) updates]) =
      _$TransitGatewayMulticastDomain;

  const TransitGatewayMulticastDomain._();

  static const List<_i6.SmithySerializer> serializers = [
    TransitGatewayMulticastDomainEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayMulticastDomainBuilder b) {}

  /// The ID of the transit gateway multicast domain.
  String? get transitGatewayMulticastDomainId;

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The Amazon Resource Name (ARN) of the transit gateway multicast domain.
  String? get transitGatewayMulticastDomainArn;

  /// The ID of the Amazon Web Services account that owns the transit gateway multicast domain.
  String? get ownerId;

  /// The options for the transit gateway multicast domain.
  _i2.TransitGatewayMulticastDomainOptions? get options;

  /// The state of the transit gateway multicast domain.
  _i3.TransitGatewayMulticastDomainState? get state;

  /// The time the transit gateway multicast domain was created.
  DateTime? get creationTime;

  /// The tags for the transit gateway multicast domain.
  _i5.BuiltList<_i4.Tag>? get tags;
  @override
  List<Object?> get props => [
        transitGatewayMulticastDomainId,
        transitGatewayId,
        transitGatewayMulticastDomainArn,
        ownerId,
        options,
        state,
        creationTime,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayMulticastDomain');
    helper.add(
      'transitGatewayMulticastDomainId',
      transitGatewayMulticastDomainId,
    );
    helper.add(
      'transitGatewayId',
      transitGatewayId,
    );
    helper.add(
      'transitGatewayMulticastDomainArn',
      transitGatewayMulticastDomainArn,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'options',
      options,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'creationTime',
      creationTime,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class TransitGatewayMulticastDomainEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<TransitGatewayMulticastDomain> {
  const TransitGatewayMulticastDomainEc2QuerySerializer()
      : super('TransitGatewayMulticastDomain');

  @override
  Iterable<Type> get types => const [
        TransitGatewayMulticastDomain,
        _$TransitGatewayMulticastDomain,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayMulticastDomain deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayMulticastDomainBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayMulticastDomainId':
          if (value != null) {
            result.transitGatewayMulticastDomainId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'transitGatewayId':
          if (value != null) {
            result.transitGatewayId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'transitGatewayMulticastDomainArn':
          if (value != null) {
            result.transitGatewayMulticastDomainArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'options':
          if (value != null) {
            result.options.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.TransitGatewayMulticastDomainOptions),
            ) as _i2.TransitGatewayMulticastDomainOptions));
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.TransitGatewayMulticastDomainState),
            ) as _i3.TransitGatewayMulticastDomainState);
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
    final payload = (object as TransitGatewayMulticastDomain);
    final result = <Object?>[
      const _i6.XmlElementName(
        'TransitGatewayMulticastDomainResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayMulticastDomainId != null) {
      result
        ..add(const _i6.XmlElementName('TransitGatewayMulticastDomainId'))
        ..add(serializers.serialize(
          payload.transitGatewayMulticastDomainId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.transitGatewayId != null) {
      result
        ..add(const _i6.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          payload.transitGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.transitGatewayMulticastDomainArn != null) {
      result
        ..add(const _i6.XmlElementName('TransitGatewayMulticastDomainArn'))
        ..add(serializers.serialize(
          payload.transitGatewayMulticastDomainArn!,
          specifiedType: const FullType(String),
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
    if (payload.options != null) {
      result
        ..add(const _i6.XmlElementName('Options'))
        ..add(serializers.serialize(
          payload.options!,
          specifiedType:
              const FullType(_i2.TransitGatewayMulticastDomainOptions),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i6.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType:
              const FullType.nullable(_i3.TransitGatewayMulticastDomainState),
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
