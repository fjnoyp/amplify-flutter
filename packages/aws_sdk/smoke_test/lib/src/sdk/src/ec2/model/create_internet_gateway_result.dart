// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_internet_gateway_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/internet_gateway.dart' as _i2;

part 'create_internet_gateway_result.g.dart';

abstract class CreateInternetGatewayResult
    with _i1.AWSEquatable<CreateInternetGatewayResult>
    implements
        Built<CreateInternetGatewayResult, CreateInternetGatewayResultBuilder> {
  factory CreateInternetGatewayResult({_i2.InternetGateway? internetGateway}) {
    return _$CreateInternetGatewayResult._(internetGateway: internetGateway);
  }

  factory CreateInternetGatewayResult.build(
          [void Function(CreateInternetGatewayResultBuilder) updates]) =
      _$CreateInternetGatewayResult;

  const CreateInternetGatewayResult._();

  /// Constructs a [CreateInternetGatewayResult] from a [payload] and [response].
  factory CreateInternetGatewayResult.fromResponse(
    CreateInternetGatewayResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateInternetGatewayResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateInternetGatewayResultBuilder b) {}

  /// Information about the internet gateway.
  _i2.InternetGateway? get internetGateway;
  @override
  List<Object?> get props => [internetGateway];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateInternetGatewayResult');
    helper.add(
      'internetGateway',
      internetGateway,
    );
    return helper.toString();
  }
}

class CreateInternetGatewayResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateInternetGatewayResult> {
  const CreateInternetGatewayResultEc2QuerySerializer()
      : super('CreateInternetGatewayResult');

  @override
  Iterable<Type> get types => const [
        CreateInternetGatewayResult,
        _$CreateInternetGatewayResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateInternetGatewayResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInternetGatewayResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'internetGateway':
          if (value != null) {
            result.internetGateway.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.InternetGateway),
            ) as _i2.InternetGateway));
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
    final payload = (object as CreateInternetGatewayResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateInternetGatewayResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.internetGateway != null) {
      result
        ..add(const _i3.XmlElementName('InternetGateway'))
        ..add(serializers.serialize(
          payload.internetGateway!,
          specifiedType: const FullType(_i2.InternetGateway),
        ));
    }
    return result;
  }
}
