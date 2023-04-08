// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_instance_metadata_options_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_options_response.dart'
    as _i2;

part 'modify_instance_metadata_options_result.g.dart';

abstract class ModifyInstanceMetadataOptionsResult
    with
        _i1.AWSEquatable<ModifyInstanceMetadataOptionsResult>
    implements
        Built<ModifyInstanceMetadataOptionsResult,
            ModifyInstanceMetadataOptionsResultBuilder> {
  factory ModifyInstanceMetadataOptionsResult({
    String? instanceId,
    _i2.InstanceMetadataOptionsResponse? instanceMetadataOptions,
  }) {
    return _$ModifyInstanceMetadataOptionsResult._(
      instanceId: instanceId,
      instanceMetadataOptions: instanceMetadataOptions,
    );
  }

  factory ModifyInstanceMetadataOptionsResult.build(
          [void Function(ModifyInstanceMetadataOptionsResultBuilder) updates]) =
      _$ModifyInstanceMetadataOptionsResult;

  const ModifyInstanceMetadataOptionsResult._();

  /// Constructs a [ModifyInstanceMetadataOptionsResult] from a [payload] and [response].
  factory ModifyInstanceMetadataOptionsResult.fromResponse(
    ModifyInstanceMetadataOptionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ModifyInstanceMetadataOptionsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyInstanceMetadataOptionsResultBuilder b) {}

  /// The ID of the instance.
  String? get instanceId;

  /// The metadata options for the instance.
  _i2.InstanceMetadataOptionsResponse? get instanceMetadataOptions;
  @override
  List<Object?> get props => [
        instanceId,
        instanceMetadataOptions,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyInstanceMetadataOptionsResult');
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'instanceMetadataOptions',
      instanceMetadataOptions,
    );
    return helper.toString();
  }
}

class ModifyInstanceMetadataOptionsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<ModifyInstanceMetadataOptionsResult> {
  const ModifyInstanceMetadataOptionsResultEc2QuerySerializer()
      : super('ModifyInstanceMetadataOptionsResult');

  @override
  Iterable<Type> get types => const [
        ModifyInstanceMetadataOptionsResult,
        _$ModifyInstanceMetadataOptionsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyInstanceMetadataOptionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyInstanceMetadataOptionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'instanceMetadataOptions':
          if (value != null) {
            result.instanceMetadataOptions.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.InstanceMetadataOptionsResponse),
            ) as _i2.InstanceMetadataOptionsResponse));
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
    final payload = (object as ModifyInstanceMetadataOptionsResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ModifyInstanceMetadataOptionsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceId != null) {
      result
        ..add(const _i3.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceMetadataOptions != null) {
      result
        ..add(const _i3.XmlElementName('InstanceMetadataOptions'))
        ..add(serializers.serialize(
          payload.instanceMetadataOptions!,
          specifiedType: const FullType(_i2.InstanceMetadataOptionsResponse),
        ));
    }
    return result;
  }
}
