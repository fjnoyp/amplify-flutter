// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_launch_template_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template.dart' as _i2;

part 'modify_launch_template_result.g.dart';

abstract class ModifyLaunchTemplateResult
    with _i1.AWSEquatable<ModifyLaunchTemplateResult>
    implements
        Built<ModifyLaunchTemplateResult, ModifyLaunchTemplateResultBuilder> {
  factory ModifyLaunchTemplateResult({_i2.LaunchTemplate? launchTemplate}) {
    return _$ModifyLaunchTemplateResult._(launchTemplate: launchTemplate);
  }

  factory ModifyLaunchTemplateResult.build(
          [void Function(ModifyLaunchTemplateResultBuilder) updates]) =
      _$ModifyLaunchTemplateResult;

  const ModifyLaunchTemplateResult._();

  /// Constructs a [ModifyLaunchTemplateResult] from a [payload] and [response].
  factory ModifyLaunchTemplateResult.fromResponse(
    ModifyLaunchTemplateResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ModifyLaunchTemplateResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyLaunchTemplateResultBuilder b) {}

  /// Information about the launch template.
  _i2.LaunchTemplate? get launchTemplate;
  @override
  List<Object?> get props => [launchTemplate];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyLaunchTemplateResult');
    helper.add(
      'launchTemplate',
      launchTemplate,
    );
    return helper.toString();
  }
}

class ModifyLaunchTemplateResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ModifyLaunchTemplateResult> {
  const ModifyLaunchTemplateResultEc2QuerySerializer()
      : super('ModifyLaunchTemplateResult');

  @override
  Iterable<Type> get types => const [
        ModifyLaunchTemplateResult,
        _$ModifyLaunchTemplateResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyLaunchTemplateResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyLaunchTemplateResultBuilder();
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
    final payload = (object as ModifyLaunchTemplateResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ModifyLaunchTemplateResultResponse',
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
