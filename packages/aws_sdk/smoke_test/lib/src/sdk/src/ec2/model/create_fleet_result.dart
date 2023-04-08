// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_fleet_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/create_fleet_error.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/create_fleet_instance.dart'
    as _i3;

part 'create_fleet_result.g.dart';

abstract class CreateFleetResult
    with _i1.AWSEquatable<CreateFleetResult>
    implements Built<CreateFleetResult, CreateFleetResultBuilder> {
  factory CreateFleetResult({
    String? fleetId,
    List<_i2.CreateFleetError>? errors,
    List<_i3.CreateFleetInstance>? instances,
  }) {
    return _$CreateFleetResult._(
      fleetId: fleetId,
      errors: errors == null ? null : _i4.BuiltList(errors),
      instances: instances == null ? null : _i4.BuiltList(instances),
    );
  }

  factory CreateFleetResult.build(
      [void Function(CreateFleetResultBuilder) updates]) = _$CreateFleetResult;

  const CreateFleetResult._();

  /// Constructs a [CreateFleetResult] from a [payload] and [response].
  factory CreateFleetResult.fromResponse(
    CreateFleetResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    CreateFleetResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateFleetResultBuilder b) {}

  /// The ID of the EC2 Fleet.
  String? get fleetId;

  /// Information about the instances that could not be launched by the fleet. Supported only for fleets of type `instant`.
  _i4.BuiltList<_i2.CreateFleetError>? get errors;

  /// Information about the instances that were launched by the fleet. Supported only for fleets of type `instant`.
  _i4.BuiltList<_i3.CreateFleetInstance>? get instances;
  @override
  List<Object?> get props => [
        fleetId,
        errors,
        instances,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateFleetResult');
    helper.add(
      'fleetId',
      fleetId,
    );
    helper.add(
      'errors',
      errors,
    );
    helper.add(
      'instances',
      instances,
    );
    return helper.toString();
  }
}

class CreateFleetResultEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<CreateFleetResult> {
  const CreateFleetResultEc2QuerySerializer() : super('CreateFleetResult');

  @override
  Iterable<Type> get types => const [
        CreateFleetResult,
        _$CreateFleetResult,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateFleetResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateFleetResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'fleetId':
          if (value != null) {
            result.fleetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'errorSet':
          if (value != null) {
            result.errors.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.CreateFleetError)],
              ),
            ) as _i4.BuiltList<_i2.CreateFleetError>));
          }
          break;
        case 'fleetInstanceSet':
          if (value != null) {
            result.instances.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.CreateFleetInstance)],
              ),
            ) as _i4.BuiltList<_i3.CreateFleetInstance>));
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
    final payload = (object as CreateFleetResult);
    final result = <Object?>[
      const _i5.XmlElementName(
        'CreateFleetResultResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.fleetId != null) {
      result
        ..add(const _i5.XmlElementName('FleetId'))
        ..add(serializers.serialize(
          payload.fleetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.errors != null) {
      result
        ..add(const _i5.XmlElementName('ErrorSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.errors!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.CreateFleetError)],
          ),
        ));
    }
    if (payload.instances != null) {
      result
        ..add(const _i5.XmlElementName('FleetInstanceSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.instances!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.CreateFleetInstance)],
          ),
        ));
    }
    return result;
  }
}
