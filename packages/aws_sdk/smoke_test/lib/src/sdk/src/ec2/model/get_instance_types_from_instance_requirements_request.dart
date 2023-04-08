// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_instance_types_from_instance_requirements_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/architecture_type.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_requirements_request.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/virtualization_type.dart'
    as _i4;

part 'get_instance_types_from_instance_requirements_request.g.dart';

abstract class GetInstanceTypesFromInstanceRequirementsRequest
    with
        _i1.HttpInput<GetInstanceTypesFromInstanceRequirementsRequest>,
        _i2.AWSEquatable<GetInstanceTypesFromInstanceRequirementsRequest>
    implements
        Built<GetInstanceTypesFromInstanceRequirementsRequest,
            GetInstanceTypesFromInstanceRequirementsRequestBuilder> {
  factory GetInstanceTypesFromInstanceRequirementsRequest({
    bool? dryRun,
    required List<_i3.ArchitectureType> architectureTypes,
    required List<_i4.VirtualizationType> virtualizationTypes,
    required _i5.InstanceRequirementsRequest instanceRequirements,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$GetInstanceTypesFromInstanceRequirementsRequest._(
      dryRun: dryRun,
      architectureTypes: _i6.BuiltList(architectureTypes),
      virtualizationTypes: _i6.BuiltList(virtualizationTypes),
      instanceRequirements: instanceRequirements,
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory GetInstanceTypesFromInstanceRequirementsRequest.build(
      [void Function(GetInstanceTypesFromInstanceRequirementsRequestBuilder)
          updates]) = _$GetInstanceTypesFromInstanceRequirementsRequest;

  const GetInstanceTypesFromInstanceRequirementsRequest._();

  factory GetInstanceTypesFromInstanceRequirementsRequest.fromRequest(
    GetInstanceTypesFromInstanceRequirementsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetInstanceTypesFromInstanceRequirementsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetInstanceTypesFromInstanceRequirementsRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The processor architecture type.
  _i6.BuiltList<_i3.ArchitectureType> get architectureTypes;

  /// The virtualization type.
  _i6.BuiltList<_i4.VirtualizationType> get virtualizationTypes;

  /// The attributes required for the instance types.
  _i5.InstanceRequirementsRequest get instanceRequirements;

  /// The maximum number of results to return in a single call. Specify a value between 1 and  1000. The default value is 1000. To retrieve the remaining results, make another call with  the returned `NextToken` value.
  int get maxResults;

  /// The token for the next set of results.
  String? get nextToken;
  @override
  GetInstanceTypesFromInstanceRequirementsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        architectureTypes,
        virtualizationTypes,
        instanceRequirements,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetInstanceTypesFromInstanceRequirementsRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'architectureTypes',
      architectureTypes,
    );
    helper.add(
      'virtualizationTypes',
      virtualizationTypes,
    );
    helper.add(
      'instanceRequirements',
      instanceRequirements,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetInstanceTypesFromInstanceRequirementsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        GetInstanceTypesFromInstanceRequirementsRequest> {
  const GetInstanceTypesFromInstanceRequirementsRequestEc2QuerySerializer()
      : super('GetInstanceTypesFromInstanceRequirementsRequest');

  @override
  Iterable<Type> get types => const [
        GetInstanceTypesFromInstanceRequirementsRequest,
        _$GetInstanceTypesFromInstanceRequirementsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetInstanceTypesFromInstanceRequirementsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetInstanceTypesFromInstanceRequirementsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'ArchitectureType':
          result.architectureTypes.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i3.ArchitectureType)],
            ),
          ) as _i6.BuiltList<_i3.ArchitectureType>));
          break;
        case 'VirtualizationType':
          result.virtualizationTypes.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i4.VirtualizationType)],
            ),
          ) as _i6.BuiltList<_i4.VirtualizationType>));
          break;
        case 'InstanceRequirements':
          result.instanceRequirements.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.InstanceRequirementsRequest),
          ) as _i5.InstanceRequirementsRequest));
          break;
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'NextToken':
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
    final payload = (object as GetInstanceTypesFromInstanceRequirementsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetInstanceTypesFromInstanceRequirementsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('ArchitectureType'))
      ..add(const _i1.XmlBuiltListSerializer(
        memberName: 'item',
        indexer: _i1.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        payload.architectureTypes,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i3.ArchitectureType)],
        ),
      ));
    result
      ..add(const _i1.XmlElementName('VirtualizationType'))
      ..add(const _i1.XmlBuiltListSerializer(
        memberName: 'item',
        indexer: _i1.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        payload.virtualizationTypes,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i4.VirtualizationType)],
        ),
      ));
    result
      ..add(const _i1.XmlElementName('InstanceRequirements'))
      ..add(serializers.serialize(
        payload.instanceRequirements,
        specifiedType: const FullType(_i5.InstanceRequirementsRequest),
      ));
    result
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        payload.maxResults,
        specifiedType: const FullType(int),
      ));
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
