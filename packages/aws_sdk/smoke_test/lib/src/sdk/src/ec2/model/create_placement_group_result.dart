// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_placement_group_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/placement_group.dart' as _i2;

part 'create_placement_group_result.g.dart';

abstract class CreatePlacementGroupResult
    with _i1.AWSEquatable<CreatePlacementGroupResult>
    implements
        Built<CreatePlacementGroupResult, CreatePlacementGroupResultBuilder> {
  factory CreatePlacementGroupResult({_i2.PlacementGroup? placementGroup}) {
    return _$CreatePlacementGroupResult._(placementGroup: placementGroup);
  }

  factory CreatePlacementGroupResult.build(
          [void Function(CreatePlacementGroupResultBuilder) updates]) =
      _$CreatePlacementGroupResult;

  const CreatePlacementGroupResult._();

  /// Constructs a [CreatePlacementGroupResult] from a [payload] and [response].
  factory CreatePlacementGroupResult.fromResponse(
    CreatePlacementGroupResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreatePlacementGroupResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreatePlacementGroupResultBuilder b) {}

  /// Describes a placement group.
  _i2.PlacementGroup? get placementGroup;
  @override
  List<Object?> get props => [placementGroup];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreatePlacementGroupResult');
    helper.add(
      'placementGroup',
      placementGroup,
    );
    return helper.toString();
  }
}

class CreatePlacementGroupResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreatePlacementGroupResult> {
  const CreatePlacementGroupResultEc2QuerySerializer()
      : super('CreatePlacementGroupResult');

  @override
  Iterable<Type> get types => const [
        CreatePlacementGroupResult,
        _$CreatePlacementGroupResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreatePlacementGroupResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePlacementGroupResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'placementGroup':
          if (value != null) {
            result.placementGroup.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PlacementGroup),
            ) as _i2.PlacementGroup));
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
    final payload = (object as CreatePlacementGroupResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreatePlacementGroupResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.placementGroup != null) {
      result
        ..add(const _i3.XmlElementName('PlacementGroup'))
        ..add(serializers.serialize(
          payload.placementGroup!,
          specifiedType: const FullType(_i2.PlacementGroup),
        ));
    }
    return result;
  }
}
