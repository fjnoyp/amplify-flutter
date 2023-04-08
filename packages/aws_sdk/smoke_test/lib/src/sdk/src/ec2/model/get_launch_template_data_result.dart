// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_launch_template_data_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/response_launch_template_data.dart'
    as _i2;

part 'get_launch_template_data_result.g.dart';

abstract class GetLaunchTemplateDataResult
    with _i1.AWSEquatable<GetLaunchTemplateDataResult>
    implements
        Built<GetLaunchTemplateDataResult, GetLaunchTemplateDataResultBuilder> {
  factory GetLaunchTemplateDataResult(
      {_i2.ResponseLaunchTemplateData? launchTemplateData}) {
    return _$GetLaunchTemplateDataResult._(
        launchTemplateData: launchTemplateData);
  }

  factory GetLaunchTemplateDataResult.build(
          [void Function(GetLaunchTemplateDataResultBuilder) updates]) =
      _$GetLaunchTemplateDataResult;

  const GetLaunchTemplateDataResult._();

  /// Constructs a [GetLaunchTemplateDataResult] from a [payload] and [response].
  factory GetLaunchTemplateDataResult.fromResponse(
    GetLaunchTemplateDataResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    GetLaunchTemplateDataResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetLaunchTemplateDataResultBuilder b) {}

  /// The instance data.
  _i2.ResponseLaunchTemplateData? get launchTemplateData;
  @override
  List<Object?> get props => [launchTemplateData];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetLaunchTemplateDataResult');
    helper.add(
      'launchTemplateData',
      launchTemplateData,
    );
    return helper.toString();
  }
}

class GetLaunchTemplateDataResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<GetLaunchTemplateDataResult> {
  const GetLaunchTemplateDataResultEc2QuerySerializer()
      : super('GetLaunchTemplateDataResult');

  @override
  Iterable<Type> get types => const [
        GetLaunchTemplateDataResult,
        _$GetLaunchTemplateDataResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetLaunchTemplateDataResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetLaunchTemplateDataResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'launchTemplateData':
          if (value != null) {
            result.launchTemplateData.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ResponseLaunchTemplateData),
            ) as _i2.ResponseLaunchTemplateData));
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
    final payload = (object as GetLaunchTemplateDataResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'GetLaunchTemplateDataResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.launchTemplateData != null) {
      result
        ..add(const _i3.XmlElementName('LaunchTemplateData'))
        ..add(serializers.serialize(
          payload.launchTemplateData!,
          specifiedType: const FullType(_i2.ResponseLaunchTemplateData),
        ));
    }
    return result;
  }
}
