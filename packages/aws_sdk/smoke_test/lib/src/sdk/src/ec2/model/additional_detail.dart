// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.additional_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_component.dart'
    as _i2;

part 'additional_detail.g.dart';

/// Describes an additional detail for a path analysis.
abstract class AdditionalDetail
    with _i1.AWSEquatable<AdditionalDetail>
    implements Built<AdditionalDetail, AdditionalDetailBuilder> {
  /// Describes an additional detail for a path analysis.
  factory AdditionalDetail({
    String? additionalDetailType,
    _i2.AnalysisComponent? component,
  }) {
    return _$AdditionalDetail._(
      additionalDetailType: additionalDetailType,
      component: component,
    );
  }

  /// Describes an additional detail for a path analysis.
  factory AdditionalDetail.build(
      [void Function(AdditionalDetailBuilder) updates]) = _$AdditionalDetail;

  const AdditionalDetail._();

  static const List<_i3.SmithySerializer> serializers = [
    AdditionalDetailEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AdditionalDetailBuilder b) {}

  /// The information type.
  String? get additionalDetailType;

  /// The path component.
  _i2.AnalysisComponent? get component;
  @override
  List<Object?> get props => [
        additionalDetailType,
        component,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AdditionalDetail');
    helper.add(
      'additionalDetailType',
      additionalDetailType,
    );
    helper.add(
      'component',
      component,
    );
    return helper.toString();
  }
}

class AdditionalDetailEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AdditionalDetail> {
  const AdditionalDetailEc2QuerySerializer() : super('AdditionalDetail');

  @override
  Iterable<Type> get types => const [
        AdditionalDetail,
        _$AdditionalDetail,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AdditionalDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdditionalDetailBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'additionalDetailType':
          if (value != null) {
            result.additionalDetailType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'component':
          if (value != null) {
            result.component.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
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
    final payload = (object as AdditionalDetail);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AdditionalDetailResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.additionalDetailType != null) {
      result
        ..add(const _i3.XmlElementName('AdditionalDetailType'))
        ..add(serializers.serialize(
          payload.additionalDetailType!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.component != null) {
      result
        ..add(const _i3.XmlElementName('Component'))
        ..add(serializers.serialize(
          payload.component!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    return result;
  }
}
