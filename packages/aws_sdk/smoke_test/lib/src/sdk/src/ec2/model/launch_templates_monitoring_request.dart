// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_templates_monitoring_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'launch_templates_monitoring_request.g.dart';

/// Describes the monitoring for the instance.
abstract class LaunchTemplatesMonitoringRequest
    with
        _i1.AWSEquatable<LaunchTemplatesMonitoringRequest>
    implements
        Built<LaunchTemplatesMonitoringRequest,
            LaunchTemplatesMonitoringRequestBuilder> {
  /// Describes the monitoring for the instance.
  factory LaunchTemplatesMonitoringRequest({bool? enabled}) {
    enabled ??= false;
    return _$LaunchTemplatesMonitoringRequest._(enabled: enabled);
  }

  /// Describes the monitoring for the instance.
  factory LaunchTemplatesMonitoringRequest.build(
          [void Function(LaunchTemplatesMonitoringRequestBuilder) updates]) =
      _$LaunchTemplatesMonitoringRequest;

  const LaunchTemplatesMonitoringRequest._();

  static const List<_i2.SmithySerializer> serializers = [
    LaunchTemplatesMonitoringRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplatesMonitoringRequestBuilder b) {
    b.enabled = false;
  }

  /// Specify `true` to enable detailed monitoring. Otherwise, basic monitoring is enabled.
  bool get enabled;
  @override
  List<Object?> get props => [enabled];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplatesMonitoringRequest');
    helper.add(
      'enabled',
      enabled,
    );
    return helper.toString();
  }
}

class LaunchTemplatesMonitoringRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<LaunchTemplatesMonitoringRequest> {
  const LaunchTemplatesMonitoringRequestEc2QuerySerializer()
      : super('LaunchTemplatesMonitoringRequest');

  @override
  Iterable<Type> get types => const [
        LaunchTemplatesMonitoringRequest,
        _$LaunchTemplatesMonitoringRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplatesMonitoringRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplatesMonitoringRequestBuilder();
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
    final payload = (object as LaunchTemplatesMonitoringRequest);
    final result = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplatesMonitoringRequestResponse',
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
