// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.placement_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'placement_response.g.dart';

/// Describes the placement of an instance.
abstract class PlacementResponse
    with _i1.AWSEquatable<PlacementResponse>
    implements Built<PlacementResponse, PlacementResponseBuilder> {
  /// Describes the placement of an instance.
  factory PlacementResponse({String? groupName}) {
    return _$PlacementResponse._(groupName: groupName);
  }

  /// Describes the placement of an instance.
  factory PlacementResponse.build(
      [void Function(PlacementResponseBuilder) updates]) = _$PlacementResponse;

  const PlacementResponse._();

  static const List<_i2.SmithySerializer> serializers = [
    PlacementResponseEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PlacementResponseBuilder b) {}

  /// The name of the placement group that the instance is in.
  String? get groupName;
  @override
  List<Object?> get props => [groupName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PlacementResponse');
    helper.add(
      'groupName',
      groupName,
    );
    return helper.toString();
  }
}

class PlacementResponseEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PlacementResponse> {
  const PlacementResponseEc2QuerySerializer() : super('PlacementResponse');

  @override
  Iterable<Type> get types => const [
        PlacementResponse,
        _$PlacementResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PlacementResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlacementResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'groupName':
          if (value != null) {
            result.groupName = (serializers.deserialize(
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
    final payload = (object as PlacementResponse);
    final result = <Object?>[
      const _i2.XmlElementName(
        'PlacementResponseResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.groupName != null) {
      result
        ..add(const _i2.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          payload.groupName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
