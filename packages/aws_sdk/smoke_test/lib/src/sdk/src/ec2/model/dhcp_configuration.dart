// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.dhcp_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_value.dart' as _i2;

part 'dhcp_configuration.g.dart';

/// Describes a DHCP configuration option.
abstract class DhcpConfiguration
    with _i1.AWSEquatable<DhcpConfiguration>
    implements Built<DhcpConfiguration, DhcpConfigurationBuilder> {
  /// Describes a DHCP configuration option.
  factory DhcpConfiguration({
    String? key,
    List<_i2.AttributeValue>? values,
  }) {
    return _$DhcpConfiguration._(
      key: key,
      values: values == null ? null : _i3.BuiltList(values),
    );
  }

  /// Describes a DHCP configuration option.
  factory DhcpConfiguration.build(
      [void Function(DhcpConfigurationBuilder) updates]) = _$DhcpConfiguration;

  const DhcpConfiguration._();

  static const List<_i4.SmithySerializer> serializers = [
    DhcpConfigurationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DhcpConfigurationBuilder b) {}

  /// The name of a DHCP option.
  String? get key;

  /// One or more values for the DHCP option.
  _i3.BuiltList<_i2.AttributeValue>? get values;
  @override
  List<Object?> get props => [
        key,
        values,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DhcpConfiguration');
    helper.add(
      'key',
      key,
    );
    helper.add(
      'values',
      values,
    );
    return helper.toString();
  }
}

class DhcpConfigurationEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DhcpConfiguration> {
  const DhcpConfigurationEc2QuerySerializer() : super('DhcpConfiguration');

  @override
  Iterable<Type> get types => const [
        DhcpConfiguration,
        _$DhcpConfiguration,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DhcpConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DhcpConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'key':
          if (value != null) {
            result.key = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'valueSet':
          if (value != null) {
            result.values.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.AttributeValue)],
              ),
            ) as _i3.BuiltList<_i2.AttributeValue>));
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
    final payload = (object as DhcpConfiguration);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DhcpConfigurationResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.key != null) {
      result
        ..add(const _i4.XmlElementName('Key'))
        ..add(serializers.serialize(
          payload.key!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.values != null) {
      result
        ..add(const _i4.XmlElementName('ValueSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.values!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.AttributeValue)],
          ),
        ));
    }
    return result;
  }
}
