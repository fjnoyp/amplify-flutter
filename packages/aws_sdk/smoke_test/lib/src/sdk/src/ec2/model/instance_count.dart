// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_count; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/listing_state.dart' as _i2;

part 'instance_count.g.dart';

/// Describes a Reserved Instance listing state.
abstract class InstanceCount
    with _i1.AWSEquatable<InstanceCount>
    implements Built<InstanceCount, InstanceCountBuilder> {
  /// Describes a Reserved Instance listing state.
  factory InstanceCount({
    int? instanceCount,
    _i2.ListingState? state,
  }) {
    instanceCount ??= 0;
    return _$InstanceCount._(
      instanceCount: instanceCount,
      state: state,
    );
  }

  /// Describes a Reserved Instance listing state.
  factory InstanceCount.build([void Function(InstanceCountBuilder) updates]) =
      _$InstanceCount;

  const InstanceCount._();

  static const List<_i3.SmithySerializer> serializers = [
    InstanceCountEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceCountBuilder b) {
    b.instanceCount = 0;
  }

  /// The number of listed Reserved Instances in the state specified by the `state`.
  int get instanceCount;

  /// The states of the listed Reserved Instances.
  _i2.ListingState? get state;
  @override
  List<Object?> get props => [
        instanceCount,
        state,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceCount');
    helper.add(
      'instanceCount',
      instanceCount,
    );
    helper.add(
      'state',
      state,
    );
    return helper.toString();
  }
}

class InstanceCountEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceCount> {
  const InstanceCountEc2QuerySerializer() : super('InstanceCount');

  @override
  Iterable<Type> get types => const [
        InstanceCount,
        _$InstanceCount,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceCount deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceCountBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceCount':
          result.instanceCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ListingState),
            ) as _i2.ListingState);
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
    final payload = (object as InstanceCount);
    final result = <Object?>[
      const _i3.XmlElementName(
        'InstanceCountResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('InstanceCount'))
      ..add(serializers.serialize(
        payload.instanceCount,
        specifiedType: const FullType(int),
      ));
    if (payload.state != null) {
      result
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i2.ListingState),
        ));
    }
    return result;
  }
}
