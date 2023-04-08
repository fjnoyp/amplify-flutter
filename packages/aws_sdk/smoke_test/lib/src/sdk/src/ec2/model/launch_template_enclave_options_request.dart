// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_enclave_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'launch_template_enclave_options_request.g.dart';

/// Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves. For more information, see [What is Amazon Web Services Nitro Enclaves?](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html) in the _Amazon Web Services Nitro Enclaves User Guide_.
abstract class LaunchTemplateEnclaveOptionsRequest
    with
        _i1.AWSEquatable<LaunchTemplateEnclaveOptionsRequest>
    implements
        Built<LaunchTemplateEnclaveOptionsRequest,
            LaunchTemplateEnclaveOptionsRequestBuilder> {
  /// Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves. For more information, see [What is Amazon Web Services Nitro Enclaves?](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html) in the _Amazon Web Services Nitro Enclaves User Guide_.
  factory LaunchTemplateEnclaveOptionsRequest({bool? enabled}) {
    enabled ??= false;
    return _$LaunchTemplateEnclaveOptionsRequest._(enabled: enabled);
  }

  /// Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves. For more information, see [What is Amazon Web Services Nitro Enclaves?](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html) in the _Amazon Web Services Nitro Enclaves User Guide_.
  factory LaunchTemplateEnclaveOptionsRequest.build(
          [void Function(LaunchTemplateEnclaveOptionsRequestBuilder) updates]) =
      _$LaunchTemplateEnclaveOptionsRequest;

  const LaunchTemplateEnclaveOptionsRequest._();

  static const List<_i2.SmithySerializer> serializers = [
    LaunchTemplateEnclaveOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateEnclaveOptionsRequestBuilder b) {
    b.enabled = false;
  }

  /// To enable the instance for Amazon Web Services Nitro Enclaves, set this parameter to `true`.
  bool get enabled;
  @override
  List<Object?> get props => [enabled];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateEnclaveOptionsRequest');
    helper.add(
      'enabled',
      enabled,
    );
    return helper.toString();
  }
}

class LaunchTemplateEnclaveOptionsRequestEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<LaunchTemplateEnclaveOptionsRequest> {
  const LaunchTemplateEnclaveOptionsRequestEc2QuerySerializer()
      : super('LaunchTemplateEnclaveOptionsRequest');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateEnclaveOptionsRequest,
        _$LaunchTemplateEnclaveOptionsRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateEnclaveOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateEnclaveOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Enabled':
          result.enabled = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as LaunchTemplateEnclaveOptionsRequest);
    final result = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateEnclaveOptionsRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Enabled'))
      ..add(serializers.serialize(
        payload.enabled,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
