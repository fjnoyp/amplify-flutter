// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.cpu_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'cpu_options_request.g.dart';

/// The CPU options for the instance. Both the core count and threads per core must be specified in the request.
abstract class CpuOptionsRequest
    with _i1.AWSEquatable<CpuOptionsRequest>
    implements Built<CpuOptionsRequest, CpuOptionsRequestBuilder> {
  /// The CPU options for the instance. Both the core count and threads per core must be specified in the request.
  factory CpuOptionsRequest({
    int? coreCount,
    int? threadsPerCore,
  }) {
    coreCount ??= 0;
    threadsPerCore ??= 0;
    return _$CpuOptionsRequest._(
      coreCount: coreCount,
      threadsPerCore: threadsPerCore,
    );
  }

  /// The CPU options for the instance. Both the core count and threads per core must be specified in the request.
  factory CpuOptionsRequest.build(
      [void Function(CpuOptionsRequestBuilder) updates]) = _$CpuOptionsRequest;

  const CpuOptionsRequest._();

  static const List<_i2.SmithySerializer> serializers = [
    CpuOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CpuOptionsRequestBuilder b) {
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
    final helper = newBuiltValueToStringHelper('CpuOptionsRequest');
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

class CpuOptionsRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CpuOptionsRequest> {
  const CpuOptionsRequestEc2QuerySerializer() : super('CpuOptionsRequest');

  @override
  Iterable<Type> get types => const [
        CpuOptionsRequest,
        _$CpuOptionsRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CpuOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CpuOptionsRequestBuilder();
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
    final payload = (object as CpuOptionsRequest);
    final result = <Object?>[
      const _i2.XmlElementName(
        'CpuOptionsRequestResponse',
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
