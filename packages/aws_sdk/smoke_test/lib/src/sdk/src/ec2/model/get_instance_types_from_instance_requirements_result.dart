// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_instance_types_from_instance_requirements_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type_info_from_instance_requirements.dart'
    as _i2;

part 'get_instance_types_from_instance_requirements_result.g.dart';

abstract class GetInstanceTypesFromInstanceRequirementsResult
    with
        _i1.AWSEquatable<GetInstanceTypesFromInstanceRequirementsResult>
    implements
        Built<GetInstanceTypesFromInstanceRequirementsResult,
            GetInstanceTypesFromInstanceRequirementsResultBuilder> {
  factory GetInstanceTypesFromInstanceRequirementsResult({
    List<_i2.InstanceTypeInfoFromInstanceRequirements>? instanceTypes,
    String? nextToken,
  }) {
    return _$GetInstanceTypesFromInstanceRequirementsResult._(
      instanceTypes:
          instanceTypes == null ? null : _i3.BuiltList(instanceTypes),
      nextToken: nextToken,
    );
  }

  factory GetInstanceTypesFromInstanceRequirementsResult.build(
      [void Function(GetInstanceTypesFromInstanceRequirementsResultBuilder)
          updates]) = _$GetInstanceTypesFromInstanceRequirementsResult;

  const GetInstanceTypesFromInstanceRequirementsResult._();

  /// Constructs a [GetInstanceTypesFromInstanceRequirementsResult] from a [payload] and [response].
  factory GetInstanceTypesFromInstanceRequirementsResult.fromResponse(
    GetInstanceTypesFromInstanceRequirementsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetInstanceTypesFromInstanceRequirementsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetInstanceTypesFromInstanceRequirementsResultBuilder b) {}

  /// The instance types with the specified instance attributes.
  _i3.BuiltList<_i2.InstanceTypeInfoFromInstanceRequirements>?
      get instanceTypes;

  /// The token for the next set of results.
  String? get nextToken;
  @override
  List<Object?> get props => [
        instanceTypes,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetInstanceTypesFromInstanceRequirementsResult');
    helper.add(
      'instanceTypes',
      instanceTypes,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetInstanceTypesFromInstanceRequirementsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<
        GetInstanceTypesFromInstanceRequirementsResult> {
  const GetInstanceTypesFromInstanceRequirementsResultEc2QuerySerializer()
      : super('GetInstanceTypesFromInstanceRequirementsResult');

  @override
  Iterable<Type> get types => const [
        GetInstanceTypesFromInstanceRequirementsResult,
        _$GetInstanceTypesFromInstanceRequirementsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetInstanceTypesFromInstanceRequirementsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetInstanceTypesFromInstanceRequirementsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceTypeSet':
          if (value != null) {
            result.instanceTypes.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.InstanceTypeInfoFromInstanceRequirements)],
              ),
            ) as _i3.BuiltList<_i2.InstanceTypeInfoFromInstanceRequirements>));
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
    final payload = (object as GetInstanceTypesFromInstanceRequirementsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GetInstanceTypesFromInstanceRequirementsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceTypes != null) {
      result
        ..add(const _i4.XmlElementName('InstanceTypeSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.instanceTypes!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.InstanceTypeInfoFromInstanceRequirements)],
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
