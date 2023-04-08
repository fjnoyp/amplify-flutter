// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_network_insights_path_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_path.dart'
    as _i2;

part 'create_network_insights_path_result.g.dart';

abstract class CreateNetworkInsightsPathResult
    with
        _i1.AWSEquatable<CreateNetworkInsightsPathResult>
    implements
        Built<CreateNetworkInsightsPathResult,
            CreateNetworkInsightsPathResultBuilder> {
  factory CreateNetworkInsightsPathResult(
      {_i2.NetworkInsightsPath? networkInsightsPath}) {
    return _$CreateNetworkInsightsPathResult._(
        networkInsightsPath: networkInsightsPath);
  }

  factory CreateNetworkInsightsPathResult.build(
          [void Function(CreateNetworkInsightsPathResultBuilder) updates]) =
      _$CreateNetworkInsightsPathResult;

  const CreateNetworkInsightsPathResult._();

  /// Constructs a [CreateNetworkInsightsPathResult] from a [payload] and [response].
  factory CreateNetworkInsightsPathResult.fromResponse(
    CreateNetworkInsightsPathResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateNetworkInsightsPathResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateNetworkInsightsPathResultBuilder b) {}

  /// Information about the path.
  _i2.NetworkInsightsPath? get networkInsightsPath;
  @override
  List<Object?> get props => [networkInsightsPath];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateNetworkInsightsPathResult');
    helper.add(
      'networkInsightsPath',
      networkInsightsPath,
    );
    return helper.toString();
  }
}

class CreateNetworkInsightsPathResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateNetworkInsightsPathResult> {
  const CreateNetworkInsightsPathResultEc2QuerySerializer()
      : super('CreateNetworkInsightsPathResult');

  @override
  Iterable<Type> get types => const [
        CreateNetworkInsightsPathResult,
        _$CreateNetworkInsightsPathResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNetworkInsightsPathResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNetworkInsightsPathResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkInsightsPath':
          if (value != null) {
            result.networkInsightsPath.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.NetworkInsightsPath),
            ) as _i2.NetworkInsightsPath));
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
    final payload = (object as CreateNetworkInsightsPathResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateNetworkInsightsPathResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInsightsPath != null) {
      result
        ..add(const _i3.XmlElementName('NetworkInsightsPath'))
        ..add(serializers.serialize(
          payload.networkInsightsPath!,
          specifiedType: const FullType(_i2.NetworkInsightsPath),
        ));
    }
    return result;
  }
}
