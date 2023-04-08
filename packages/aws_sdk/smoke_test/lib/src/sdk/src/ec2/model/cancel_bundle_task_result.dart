// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.cancel_bundle_task_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/bundle_task.dart' as _i2;

part 'cancel_bundle_task_result.g.dart';

/// Contains the output of CancelBundleTask.
abstract class CancelBundleTaskResult
    with _i1.AWSEquatable<CancelBundleTaskResult>
    implements Built<CancelBundleTaskResult, CancelBundleTaskResultBuilder> {
  /// Contains the output of CancelBundleTask.
  factory CancelBundleTaskResult({_i2.BundleTask? bundleTask}) {
    return _$CancelBundleTaskResult._(bundleTask: bundleTask);
  }

  /// Contains the output of CancelBundleTask.
  factory CancelBundleTaskResult.build(
          [void Function(CancelBundleTaskResultBuilder) updates]) =
      _$CancelBundleTaskResult;

  const CancelBundleTaskResult._();

  /// Constructs a [CancelBundleTaskResult] from a [payload] and [response].
  factory CancelBundleTaskResult.fromResponse(
    CancelBundleTaskResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CancelBundleTaskResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CancelBundleTaskResultBuilder b) {}

  /// Information about the bundle task.
  _i2.BundleTask? get bundleTask;
  @override
  List<Object?> get props => [bundleTask];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CancelBundleTaskResult');
    helper.add(
      'bundleTask',
      bundleTask,
    );
    return helper.toString();
  }
}

class CancelBundleTaskResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CancelBundleTaskResult> {
  const CancelBundleTaskResultEc2QuerySerializer()
      : super('CancelBundleTaskResult');

  @override
  Iterable<Type> get types => const [
        CancelBundleTaskResult,
        _$CancelBundleTaskResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelBundleTaskResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelBundleTaskResultBuilder();
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
    final payload = (object as CancelBundleTaskResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CancelBundleTaskResultResponse',
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
