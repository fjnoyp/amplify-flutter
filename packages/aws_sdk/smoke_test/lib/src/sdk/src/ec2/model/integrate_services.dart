// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.integrate_services; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/athena_integration.dart'
    as _i2;

part 'integrate_services.g.dart';

/// Describes service integrations with VPC Flow logs.
abstract class IntegrateServices
    with _i1.AWSEquatable<IntegrateServices>
    implements Built<IntegrateServices, IntegrateServicesBuilder> {
  /// Describes service integrations with VPC Flow logs.
  factory IntegrateServices({List<_i2.AthenaIntegration>? athenaIntegrations}) {
    return _$IntegrateServices._(
        athenaIntegrations: athenaIntegrations == null
            ? null
            : _i3.BuiltList(athenaIntegrations));
  }

  /// Describes service integrations with VPC Flow logs.
  factory IntegrateServices.build(
      [void Function(IntegrateServicesBuilder) updates]) = _$IntegrateServices;

  const IntegrateServices._();

  static const List<_i4.SmithySerializer> serializers = [
    IntegrateServicesEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IntegrateServicesBuilder b) {}

  /// Information about the integration with Amazon Athena.
  _i3.BuiltList<_i2.AthenaIntegration>? get athenaIntegrations;
  @override
  List<Object?> get props => [athenaIntegrations];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IntegrateServices');
    helper.add(
      'athenaIntegrations',
      athenaIntegrations,
    );
    return helper.toString();
  }
}

class IntegrateServicesEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<IntegrateServices> {
  const IntegrateServicesEc2QuerySerializer() : super('IntegrateServices');

  @override
  Iterable<Type> get types => const [
        IntegrateServices,
        _$IntegrateServices,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IntegrateServices deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntegrateServicesBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AthenaIntegration':
          if (value != null) {
            result.athenaIntegrations.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.AthenaIntegration)],
              ),
            ) as _i3.BuiltList<_i2.AthenaIntegration>));
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
    final payload = (object as IntegrateServices);
    final result = <Object?>[
      const _i4.XmlElementName(
        'IntegrateServicesResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.athenaIntegrations != null) {
      result
        ..add(const _i4.XmlElementName('AthenaIntegration'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.athenaIntegrations!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.AthenaIntegration)],
          ),
        ));
    }
    return result;
  }
}
