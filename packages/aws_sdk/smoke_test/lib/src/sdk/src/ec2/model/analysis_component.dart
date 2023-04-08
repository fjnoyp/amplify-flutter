// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.analysis_component; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'analysis_component.g.dart';

/// Describes a path component.
abstract class AnalysisComponent
    with _i1.AWSEquatable<AnalysisComponent>
    implements Built<AnalysisComponent, AnalysisComponentBuilder> {
  /// Describes a path component.
  factory AnalysisComponent({
    String? id,
    String? arn,
    String? name,
  }) {
    return _$AnalysisComponent._(
      id: id,
      arn: arn,
      name: name,
    );
  }

  /// Describes a path component.
  factory AnalysisComponent.build(
      [void Function(AnalysisComponentBuilder) updates]) = _$AnalysisComponent;

  const AnalysisComponent._();

  static const List<_i2.SmithySerializer> serializers = [
    AnalysisComponentEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AnalysisComponentBuilder b) {}

  /// The ID of the component.
  String? get id;

  /// The Amazon Resource Name (ARN) of the component.
  String? get arn;

  /// The name of the analysis component.
  String? get name;
  @override
  List<Object?> get props => [
        id,
        arn,
        name,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AnalysisComponent');
    helper.add(
      'id',
      id,
    );
    helper.add(
      'arn',
      arn,
    );
    helper.add(
      'name',
      name,
    );
    return helper.toString();
  }
}

class AnalysisComponentEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AnalysisComponent> {
  const AnalysisComponentEc2QuerySerializer() : super('AnalysisComponent');

  @override
  Iterable<Type> get types => const [
        AnalysisComponent,
        _$AnalysisComponent,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AnalysisComponent deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisComponentBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'id':
          if (value != null) {
            result.id = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'arn':
          if (value != null) {
            result.arn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
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
    final payload = (object as AnalysisComponent);
    final result = <Object?>[
      const _i2.XmlElementName(
        'AnalysisComponentResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.id != null) {
      result
        ..add(const _i2.XmlElementName('Id'))
        ..add(serializers.serialize(
          payload.id!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.arn != null) {
      result
        ..add(const _i2.XmlElementName('Arn'))
        ..add(serializers.serialize(
          payload.arn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.name != null) {
      result
        ..add(const _i2.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
