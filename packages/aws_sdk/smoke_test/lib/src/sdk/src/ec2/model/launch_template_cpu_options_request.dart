// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_cpu_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'launch_template_cpu_options_request.g.dart';

/// The CPU options for the instance. Both the core count and threads per core must be specified in the request.
abstract class LaunchTemplateCpuOptionsRequest
    with
        _i1.AWSEquatable<LaunchTemplateCpuOptionsRequest>
    implements
        Built<LaunchTemplateCpuOptionsRequest,
            LaunchTemplateCpuOptionsRequestBuilder> {
  /// The CPU options for the instance. Both the core count and threads per core must be specified in the request.
  factory LaunchTemplateCpuOptionsRequest({
    int? coreCount,
    int? threadsPerCore,
  }) {
    coreCount ??= 0;
    threadsPerCore ??= 0;
    return _$LaunchTemplateCpuOptionsRequest._(
      coreCount: coreCount,
      threadsPerCore: threadsPerCore,
    );
  }

  /// The CPU options for the instance. Both the core count and threads per core must be specified in the request.
  factory LaunchTemplateCpuOptionsRequest.build(
          [void Function(LaunchTemplateCpuOptionsRequestBuilder) updates]) =
      _$LaunchTemplateCpuOptionsRequest;

  const LaunchTemplateCpuOptionsRequest._();

  static const List<_i2.SmithySerializer> serializers = [
    LaunchTemplateCpuOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateCpuOptionsRequestBuilder b) {
    b.coreCount = 0;
    b.threadsPerCore = 0;
  }

  /// The number of CPU cores for the instance.
  int get coreCount;

  /// The number of threads per CPU core. To disable multithreading for the instance, specify a value of `1`. Otherwise, specify the default value of `2`.
  int get threadsPerCore;
  @override
  List<Object?> get props => [
        coreCount,
        threadsPerCore,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateCpuOptionsRequest');
    helper.add(
      'coreCount',
      coreCount,
    );
    helper.add(
      'threadsPerCore',
      threadsPerCore,
    );
    return helper.toString();
  }
}

class LaunchTemplateCpuOptionsRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<LaunchTemplateCpuOptionsRequest> {
  const LaunchTemplateCpuOptionsRequestEc2QuerySerializer()
      : super('LaunchTemplateCpuOptionsRequest');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateCpuOptionsRequest,
        _$LaunchTemplateCpuOptionsRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateCpuOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateCpuOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'CoreCount':
          result.coreCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'ThreadsPerCore':
          result.threadsPerCore = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as LaunchTemplateCpuOptionsRequest);
    final result = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateCpuOptionsRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('CoreCount'))
      ..add(serializers.serialize(
        payload.coreCount,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i2.XmlElementName('ThreadsPerCore'))
      ..add(serializers.serialize(
        payload.threadsPerCore,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
