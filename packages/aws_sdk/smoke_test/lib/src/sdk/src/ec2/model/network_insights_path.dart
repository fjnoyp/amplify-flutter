// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.network_insights_path; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/protocol.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'network_insights_path.g.dart';

/// Describes a path.
abstract class NetworkInsightsPath
    with _i1.AWSEquatable<NetworkInsightsPath>
    implements Built<NetworkInsightsPath, NetworkInsightsPathBuilder> {
  /// Describes a path.
  factory NetworkInsightsPath({
    String? networkInsightsPathId,
    String? networkInsightsPathArn,
    DateTime? createdDate,
    String? source,
    String? destination,
    String? sourceIp,
    String? destinationIp,
    _i2.Protocol? protocol,
    int? destinationPort,
    List<_i3.Tag>? tags,
  }) {
    destinationPort ??= 0;
    return _$NetworkInsightsPath._(
      networkInsightsPathId: networkInsightsPathId,
      networkInsightsPathArn: networkInsightsPathArn,
      createdDate: createdDate,
      source: source,
      destination: destination,
      sourceIp: sourceIp,
      destinationIp: destinationIp,
      protocol: protocol,
      destinationPort: destinationPort,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// Describes a path.
  factory NetworkInsightsPath.build(
          [void Function(NetworkInsightsPathBuilder) updates]) =
      _$NetworkInsightsPath;

  const NetworkInsightsPath._();

  static const List<_i5.SmithySerializer> serializers = [
    NetworkInsightsPathEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInsightsPathBuilder b) {
    b.destinationPort = 0;
  }

  /// The ID of the path.
  String? get networkInsightsPathId;

  /// The Amazon Resource Name (ARN) of the path.
  String? get networkInsightsPathArn;

  /// The time stamp when the path was created.
  DateTime? get createdDate;

  /// The Amazon Web Services resource that is the source of the path.
  String? get source;

  /// The Amazon Web Services resource that is the destination of the path.
  String? get destination;

  /// The IP address of the Amazon Web Services resource that is the source of the path.
  String? get sourceIp;

  /// The IP address of the Amazon Web Services resource that is the destination of the path.
  String? get destinationIp;

  /// The protocol.
  _i2.Protocol? get protocol;

  /// The destination port.
  int get destinationPort;

  /// The tags associated with the path.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        networkInsightsPathId,
        networkInsightsPathArn,
        createdDate,
        source,
        destination,
        sourceIp,
        destinationIp,
        protocol,
        destinationPort,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkInsightsPath');
    helper.add(
      'networkInsightsPathId',
      networkInsightsPathId,
    );
    helper.add(
      'networkInsightsPathArn',
      networkInsightsPathArn,
    );
    helper.add(
      'createdDate',
      createdDate,
    );
    helper.add(
      'source',
      source,
    );
    helper.add(
      'destination',
      destination,
    );
    helper.add(
      'sourceIp',
      sourceIp,
    );
    helper.add(
      'destinationIp',
      destinationIp,
    );
    helper.add(
      'protocol',
      protocol,
    );
    helper.add(
      'destinationPort',
      destinationPort,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class NetworkInsightsPathEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<NetworkInsightsPath> {
  const NetworkInsightsPathEc2QuerySerializer() : super('NetworkInsightsPath');

  @override
  Iterable<Type> get types => const [
        NetworkInsightsPath,
        _$NetworkInsightsPath,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInsightsPath deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInsightsPathBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkInsightsPathId':
          if (value != null) {
            result.networkInsightsPathId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'networkInsightsPathArn':
          if (value != null) {
            result.networkInsightsPathArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'createdDate':
          if (value != null) {
            result.createdDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'source':
          if (value != null) {
            result.source = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'destination':
          if (value != null) {
            result.destination = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'sourceIp':
          if (value != null) {
            result.sourceIp = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'destinationIp':
          if (value != null) {
            result.destinationIp = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'protocol':
          if (value != null) {
            result.protocol = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Protocol),
            ) as _i2.Protocol);
          }
          break;
        case 'destinationPort':
          result.destinationPort = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as NetworkInsightsPath);
    final result = <Object?>[
      const _i5.XmlElementName(
        'NetworkInsightsPathResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInsightsPathId != null) {
      result
        ..add(const _i5.XmlElementName('NetworkInsightsPathId'))
        ..add(serializers.serialize(
          payload.networkInsightsPathId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.networkInsightsPathArn != null) {
      result
        ..add(const _i5.XmlElementName('NetworkInsightsPathArn'))
        ..add(serializers.serialize(
          payload.networkInsightsPathArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.createdDate != null) {
      result
        ..add(const _i5.XmlElementName('CreatedDate'))
        ..add(serializers.serialize(
          payload.createdDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.source != null) {
      result
        ..add(const _i5.XmlElementName('Source'))
        ..add(serializers.serialize(
          payload.source!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.destination != null) {
      result
        ..add(const _i5.XmlElementName('Destination'))
        ..add(serializers.serialize(
          payload.destination!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.sourceIp != null) {
      result
        ..add(const _i5.XmlElementName('SourceIp'))
        ..add(serializers.serialize(
          payload.sourceIp!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.destinationIp != null) {
      result
        ..add(const _i5.XmlElementName('DestinationIp'))
        ..add(serializers.serialize(
          payload.destinationIp!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.protocol != null) {
      result
        ..add(const _i5.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          payload.protocol!,
          specifiedType: const FullType.nullable(_i2.Protocol),
        ));
    }
    result
      ..add(const _i5.XmlElementName('DestinationPort'))
      ..add(serializers.serialize(
        payload.destinationPort,
        specifiedType: const FullType(int),
      ));
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
