// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_trunk_interface_associations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/trunk_interface_association.dart'
    as _i2;

part 'describe_trunk_interface_associations_result.g.dart';

abstract class DescribeTrunkInterfaceAssociationsResult
    with
        _i1.AWSEquatable<DescribeTrunkInterfaceAssociationsResult>
    implements
        Built<DescribeTrunkInterfaceAssociationsResult,
            DescribeTrunkInterfaceAssociationsResultBuilder> {
  factory DescribeTrunkInterfaceAssociationsResult({
    List<_i2.TrunkInterfaceAssociation>? interfaceAssociations,
    String? nextToken,
  }) {
    return _$DescribeTrunkInterfaceAssociationsResult._(
      interfaceAssociations: interfaceAssociations == null
          ? null
          : _i3.BuiltList(interfaceAssociations),
      nextToken: nextToken,
    );
  }

  factory DescribeTrunkInterfaceAssociationsResult.build(
      [void Function(DescribeTrunkInterfaceAssociationsResultBuilder)
          updates]) = _$DescribeTrunkInterfaceAssociationsResult;

  const DescribeTrunkInterfaceAssociationsResult._();

  /// Constructs a [DescribeTrunkInterfaceAssociationsResult] from a [payload] and [response].
  factory DescribeTrunkInterfaceAssociationsResult.fromResponse(
    DescribeTrunkInterfaceAssociationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeTrunkInterfaceAssociationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTrunkInterfaceAssociationsResultBuilder b) {}

  /// Information about the trunk associations.
  _i3.BuiltList<_i2.TrunkInterfaceAssociation>? get interfaceAssociations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        interfaceAssociations,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTrunkInterfaceAssociationsResult');
    helper.add(
      'interfaceAssociations',
      interfaceAssociations,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeTrunkInterfaceAssociationsResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeTrunkInterfaceAssociationsResult> {
  const DescribeTrunkInterfaceAssociationsResultEc2QuerySerializer()
      : super('DescribeTrunkInterfaceAssociationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeTrunkInterfaceAssociationsResult,
        _$DescribeTrunkInterfaceAssociationsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTrunkInterfaceAssociationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTrunkInterfaceAssociationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'interfaceAssociationSet':
          if (value != null) {
            result.interfaceAssociations
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.TrunkInterfaceAssociation)],
              ),
            ) as _i3.BuiltList<_i2.TrunkInterfaceAssociation>));
          }
          break;
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
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
    final payload = (object as DescribeTrunkInterfaceAssociationsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeTrunkInterfaceAssociationsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.interfaceAssociations != null) {
      result
        ..add(const _i4.XmlElementName('InterfaceAssociationSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.interfaceAssociations!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TrunkInterfaceAssociation)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
