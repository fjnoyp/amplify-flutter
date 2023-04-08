// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_hibernation_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'launch_template_hibernation_options_request.g.dart';

/// Indicates whether the instance is configured for hibernation. This parameter is valid only if the instance meets the [hibernation prerequisites](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hibernating-prerequisites.html).
abstract class LaunchTemplateHibernationOptionsRequest
    with
        _i1.AWSEquatable<LaunchTemplateHibernationOptionsRequest>
    implements
        Built<LaunchTemplateHibernationOptionsRequest,
            LaunchTemplateHibernationOptionsRequestBuilder> {
  /// Indicates whether the instance is configured for hibernation. This parameter is valid only if the instance meets the [hibernation prerequisites](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hibernating-prerequisites.html).
  factory LaunchTemplateHibernationOptionsRequest({bool? configured}) {
    configured ??= false;
    return _$LaunchTemplateHibernationOptionsRequest._(configured: configured);
  }

  /// Indicates whether the instance is configured for hibernation. This parameter is valid only if the instance meets the [hibernation prerequisites](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hibernating-prerequisites.html).
  factory LaunchTemplateHibernationOptionsRequest.build(
      [void Function(LaunchTemplateHibernationOptionsRequestBuilder)
          updates]) = _$LaunchTemplateHibernationOptionsRequest;

  const LaunchTemplateHibernationOptionsRequest._();

  static const List<_i2.SmithySerializer> serializers = [
    LaunchTemplateHibernationOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateHibernationOptionsRequestBuilder b) {
    b.configured = false;
  }

  /// If you set this parameter to `true`, the instance is enabled for hibernation.
  ///
  /// Default: `false`
  bool get configured;
  @override
  List<Object?> get props => [configured];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateHibernationOptionsRequest');
    helper.add(
      'configured',
      configured,
    );
    return helper.toString();
  }
}

class LaunchTemplateHibernationOptionsRequestEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<LaunchTemplateHibernationOptionsRequest> {
  const LaunchTemplateHibernationOptionsRequestEc2QuerySerializer()
      : super('LaunchTemplateHibernationOptionsRequest');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateHibernationOptionsRequest,
        _$LaunchTemplateHibernationOptionsRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateHibernationOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateHibernationOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Configured':
          result.configured = (serializers.deserialize(
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
    final payload = (object as LaunchTemplateHibernationOptionsRequest);
    final result = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateHibernationOptionsRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Configured'))
      ..add(serializers.serialize(
        payload.configured,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
