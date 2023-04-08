// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.bundle_instance_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/bundle_task.dart' as _i2;

part 'bundle_instance_result.g.dart';

/// Contains the output of BundleInstance.
abstract class BundleInstanceResult
    with _i1.AWSEquatable<BundleInstanceResult>
    implements Built<BundleInstanceResult, BundleInstanceResultBuilder> {
  /// Contains the output of BundleInstance.
  factory BundleInstanceResult({_i2.BundleTask? bundleTask}) {
    return _$BundleInstanceResult._(bundleTask: bundleTask);
  }

  /// Contains the output of BundleInstance.
  factory BundleInstanceResult.build(
          [void Function(BundleInstanceResultBuilder) updates]) =
      _$BundleInstanceResult;

  const BundleInstanceResult._();

  /// Constructs a [BundleInstanceResult] from a [payload] and [response].
  factory BundleInstanceResult.fromResponse(
    BundleInstanceResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    BundleInstanceResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BundleInstanceResultBuilder b) {}

  /// Information about the bundle task.
  _i2.BundleTask? get bundleTask;
  @override
  List<Object?> get props => [bundleTask];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BundleInstanceResult');
    helper.add(
      'bundleTask',
      bundleTask,
    );
    return helper.toString();
  }
}

class BundleInstanceResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<BundleInstanceResult> {
  const BundleInstanceResultEc2QuerySerializer()
      : super('BundleInstanceResult');

  @override
  Iterable<Type> get types => const [
        BundleInstanceResult,
        _$BundleInstanceResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  BundleInstanceResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BundleInstanceResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'bundleInstanceTask':
          if (value != null) {
            result.bundleTask.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.BundleTask),
            ) as _i2.BundleTask));
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
    final payload = (object as BundleInstanceResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'BundleInstanceResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.bundleTask != null) {
      result
        ..add(const _i3.XmlElementName('BundleInstanceTask'))
        ..add(serializers.serialize(
          payload.bundleTask!,
          specifiedType: const FullType(_i2.BundleTask),
        ));
    }
    return result;
  }
}
