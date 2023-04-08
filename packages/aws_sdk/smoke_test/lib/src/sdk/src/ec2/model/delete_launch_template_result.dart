// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_launch_template_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template.dart' as _i2;

part 'delete_launch_template_result.g.dart';

abstract class DeleteLaunchTemplateResult
    with _i1.AWSEquatable<DeleteLaunchTemplateResult>
    implements
        Built<DeleteLaunchTemplateResult, DeleteLaunchTemplateResultBuilder> {
  factory DeleteLaunchTemplateResult({_i2.LaunchTemplate? launchTemplate}) {
    return _$DeleteLaunchTemplateResult._(launchTemplate: launchTemplate);
  }

  factory DeleteLaunchTemplateResult.build(
          [void Function(DeleteLaunchTemplateResultBuilder) updates]) =
      _$DeleteLaunchTemplateResult;

  const DeleteLaunchTemplateResult._();

  /// Constructs a [DeleteLaunchTemplateResult] from a [payload] and [response].
  factory DeleteLaunchTemplateResult.fromResponse(
    DeleteLaunchTemplateResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeleteLaunchTemplateResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteLaunchTemplateResultBuilder b) {}

  /// Information about the launch template.
  _i2.LaunchTemplate? get launchTemplate;
  @override
  List<Object?> get props => [launchTemplate];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteLaunchTemplateResult');
    helper.add(
      'launchTemplate',
      launchTemplate,
    );
    return helper.toString();
  }
}

class DeleteLaunchTemplateResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DeleteLaunchTemplateResult> {
  const DeleteLaunchTemplateResultEc2QuerySerializer()
      : super('DeleteLaunchTemplateResult');

  @override
  Iterable<Type> get types => const [
        DeleteLaunchTemplateResult,
        _$DeleteLaunchTemplateResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteLaunchTemplateResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteLaunchTemplateResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'launchTemplate':
          if (value != null) {
            result.launchTemplate.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.LaunchTemplate),
            ) as _i2.LaunchTemplate));
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
    final payload = (object as DeleteLaunchTemplateResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteLaunchTemplateResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.launchTemplate != null) {
      result
        ..add(const _i3.XmlElementName('LaunchTemplate'))
        ..add(serializers.serialize(
          payload.launchTemplate!,
          specifiedType: const FullType(_i2.LaunchTemplate),
        ));
    }
    return result;
  }
}
