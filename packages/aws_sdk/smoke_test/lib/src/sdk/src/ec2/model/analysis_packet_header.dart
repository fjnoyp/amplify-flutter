// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.analysis_packet_header; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/port_range.dart' as _i2;

part 'analysis_packet_header.g.dart';

/// Describes a header. Reflects any changes made by a component as traffic passes through. The fields of an inbound header are null except for the first component of a path.
abstract class AnalysisPacketHeader
    with _i1.AWSEquatable<AnalysisPacketHeader>
    implements Built<AnalysisPacketHeader, AnalysisPacketHeaderBuilder> {
  /// Describes a header. Reflects any changes made by a component as traffic passes through. The fields of an inbound header are null except for the first component of a path.
  factory AnalysisPacketHeader({
    List<String>? destinationAddresses,
    List<_i2.PortRange>? destinationPortRanges,
    String? protocol,
    List<String>? sourceAddresses,
    List<_i2.PortRange>? sourcePortRanges,
  }) {
    return _$AnalysisPacketHeader._(
      destinationAddresses: destinationAddresses == null
          ? null
          : _i3.BuiltList(destinationAddresses),
      destinationPortRanges: destinationPortRanges == null
          ? null
          : _i3.BuiltList(destinationPortRanges),
      protocol: protocol,
      sourceAddresses:
          sourceAddresses == null ? null : _i3.BuiltList(sourceAddresses),
      sourcePortRanges:
          sourcePortRanges == null ? null : _i3.BuiltList(sourcePortRanges),
    );
  }

  /// Describes a header. Reflects any changes made by a component as traffic passes through. The fields of an inbound header are null except for the first component of a path.
  factory AnalysisPacketHeader.build(
          [void Function(AnalysisPacketHeaderBuilder) updates]) =
      _$AnalysisPacketHeader;

  const AnalysisPacketHeader._();

  static const List<_i4.SmithySerializer> serializers = [
    AnalysisPacketHeaderEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AnalysisPacketHeaderBuilder b) {}

  /// The destination addresses.
  _i3.BuiltList<String>? get destinationAddresses;

  /// The destination port ranges.
  _i3.BuiltList<_i2.PortRange>? get destinationPortRanges;

  /// The protocol.
  String? get protocol;

  /// The source addresses.
  _i3.BuiltList<String>? get sourceAddresses;

  /// The source port ranges.
  _i3.BuiltList<_i2.PortRange>? get sourcePortRanges;
  @override
  List<Object?> get props => [
        destinationAddresses,
        destinationPortRanges,
        protocol,
        sourceAddresses,
        sourcePortRanges,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AnalysisPacketHeader');
    helper.add(
      'destinationAddresses',
      destinationAddresses,
    );
    helper.add(
      'destinationPortRanges',
      destinationPortRanges,
    );
    helper.add(
      'protocol',
      protocol,
    );
    helper.add(
      'sourceAddresses',
      sourceAddresses,
    );
    helper.add(
      'sourcePortRanges',
      sourcePortRanges,
    );
    return helper.toString();
  }
}

class AnalysisPacketHeaderEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<AnalysisPacketHeader> {
  const AnalysisPacketHeaderEc2QuerySerializer()
      : super('AnalysisPacketHeader');

  @override
  Iterable<Type> get types => const [
        AnalysisPacketHeader,
        _$AnalysisPacketHeader,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AnalysisPacketHeader deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisPacketHeaderBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'destinationAddressSet':
          if (value != null) {
            result.destinationAddresses
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
          }
          break;
        case 'destinationPortRangeSet':
          if (value != null) {
            result.destinationPortRanges
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.PortRange)],
              ),
            ) as _i3.BuiltList<_i2.PortRange>));
          }
          break;
        case 'protocol':
          if (value != null) {
            result.protocol = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'sourceAddressSet':
          if (value != null) {
            result.sourceAddresses.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
          }
          break;
        case 'sourcePortRangeSet':
          if (value != null) {
            result.sourcePortRanges.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.PortRange)],
              ),
            ) as _i3.BuiltList<_i2.PortRange>));
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
    final payload = (object as AnalysisPacketHeader);
    final result = <Object?>[
      const _i4.XmlElementName(
        'AnalysisPacketHeaderResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.destinationAddresses != null) {
      result
        ..add(const _i4.XmlElementName('DestinationAddressSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.destinationAddresses!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.destinationPortRanges != null) {
      result
        ..add(const _i4.XmlElementName('DestinationPortRangeSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.destinationPortRanges!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.PortRange)],
          ),
        ));
    }
    if (payload.protocol != null) {
      result
        ..add(const _i4.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          payload.protocol!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.sourceAddresses != null) {
      result
        ..add(const _i4.XmlElementName('SourceAddressSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.sourceAddresses!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.sourcePortRanges != null) {
      result
        ..add(const _i4.XmlElementName('SourcePortRangeSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.sourcePortRanges!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.PortRange)],
          ),
        ));
    }
    return result;
  }
}
