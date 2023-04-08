// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library ec2_query_v2.ec2_protocol.model.host_label_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'host_label_input.g.dart';

abstract class HostLabelInput
    with _i1.HttpInput<HostLabelInput>, _i2.AWSEquatable<HostLabelInput>
    implements Built<HostLabelInput, HostLabelInputBuilder> {
  factory HostLabelInput({required String label}) {
    return _$HostLabelInput._(label: label);
  }

  factory HostLabelInput.build([void Function(HostLabelInputBuilder) updates]) =
      _$HostLabelInput;

  const HostLabelInput._();

  factory HostLabelInput.fromRequest(
    HostLabelInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    HostLabelInputEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HostLabelInputBuilder b) {}
  String get label;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'label':
        return label;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  HostLabelInput getPayload() => this;
  @override
  List<Object?> get props => [label];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HostLabelInput');
    helper.add(
      'label',
      label,
    );
    return helper.toString();
  }
}

class HostLabelInputEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<HostLabelInput> {
  const HostLabelInputEc2QuerySerializer() : super('HostLabelInput');

  @override
  Iterable<Type> get types => const [
        HostLabelInput,
        _$HostLabelInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  HostLabelInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HostLabelInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'label':
          result.label = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as HostLabelInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'HostLabelInputResponse',
        _i1.XmlNamespace('https://example.com/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('Label'))
      ..add(serializers.serialize(
        payload.label,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
