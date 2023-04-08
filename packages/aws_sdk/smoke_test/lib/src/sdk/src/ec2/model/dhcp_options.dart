// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.dhcp_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/dhcp_configuration.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'dhcp_options.g.dart';

/// Describes a set of DHCP options.
abstract class DhcpOptions
    with _i1.AWSEquatable<DhcpOptions>
    implements Built<DhcpOptions, DhcpOptionsBuilder> {
  /// Describes a set of DHCP options.
  factory DhcpOptions({
    List<_i2.DhcpConfiguration>? dhcpConfigurations,
    String? dhcpOptionsId,
    String? ownerId,
    List<_i3.Tag>? tags,
  }) {
    return _$DhcpOptions._(
      dhcpConfigurations:
          dhcpConfigurations == null ? null : _i4.BuiltList(dhcpConfigurations),
      dhcpOptionsId: dhcpOptionsId,
      ownerId: ownerId,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// Describes a set of DHCP options.
  factory DhcpOptions.build([void Function(DhcpOptionsBuilder) updates]) =
      _$DhcpOptions;

  const DhcpOptions._();

  static const List<_i5.SmithySerializer> serializers = [
    DhcpOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DhcpOptionsBuilder b) {}

  /// One or more DHCP options in the set.
  _i4.BuiltList<_i2.DhcpConfiguration>? get dhcpConfigurations;

  /// The ID of the set of DHCP options.
  String? get dhcpOptionsId;

  /// The ID of the Amazon Web Services account that owns the DHCP options set.
  String? get ownerId;

  /// Any tags assigned to the DHCP options set.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        dhcpConfigurations,
        dhcpOptionsId,
        ownerId,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DhcpOptions');
    helper.add(
      'dhcpConfigurations',
      dhcpConfigurations,
    );
    helper.add(
      'dhcpOptionsId',
      dhcpOptionsId,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class DhcpOptionsEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<DhcpOptions> {
  const DhcpOptionsEc2QuerySerializer() : super('DhcpOptions');

  @override
  Iterable<Type> get types => const [
        DhcpOptions,
        _$DhcpOptions,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DhcpOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DhcpOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'dhcpConfigurationSet':
          if (value != null) {
            result.dhcpConfigurations.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.DhcpConfiguration)],
              ),
            ) as _i4.BuiltList<_i2.DhcpConfiguration>));
          }
          break;
        case 'dhcpOptionsId':
          if (value != null) {
            result.dhcpOptionsId = (serializers.deserialize(
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
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Tag)],
              ),
            ) as _i4.BuiltList<_i3.Tag>));
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
    final payload = (object as DhcpOptions);
    final result = <Object?>[
      const _i5.XmlElementName(
        'DhcpOptionsResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.dhcpConfigurations != null) {
      result
        ..add(const _i5.XmlElementName('DhcpConfigurationSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.dhcpConfigurations!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.DhcpConfiguration)],
          ),
        ));
    }
    if (payload.dhcpOptionsId != null) {
      result
        ..add(const _i5.XmlElementName('DhcpOptionsId'))
        ..add(serializers.serialize(
          payload.dhcpOptionsId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ownerId != null) {
      result
        ..add(const _i5.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i5.XmlElementName('TagSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    return result;
  }
}
