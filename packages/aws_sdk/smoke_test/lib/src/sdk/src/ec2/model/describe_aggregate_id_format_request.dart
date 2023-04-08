// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_aggregate_id_format_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_aggregate_id_format_request.g.dart';

abstract class DescribeAggregateIdFormatRequest
    with
        _i1.HttpInput<DescribeAggregateIdFormatRequest>,
        _i2.AWSEquatable<DescribeAggregateIdFormatRequest>
    implements
        Built<DescribeAggregateIdFormatRequest,
            DescribeAggregateIdFormatRequestBuilder> {
  factory DescribeAggregateIdFormatRequest({bool? dryRun}) {
    dryRun ??= false;
    return _$DescribeAggregateIdFormatRequest._(dryRun: dryRun);
  }

  factory DescribeAggregateIdFormatRequest.build(
          [void Function(DescribeAggregateIdFormatRequestBuilder) updates]) =
      _$DescribeAggregateIdFormatRequest;

  const DescribeAggregateIdFormatRequest._();

  factory DescribeAggregateIdFormatRequest.fromRequest(
    DescribeAggregateIdFormatRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeAggregateIdFormatRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeAggregateIdFormatRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeAggregateIdFormatRequest getPayload() => this;
  @override
  List<Object?> get props => [dryRun];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeAggregateIdFormatRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DescribeAggregateIdFormatRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeAggregateIdFormatRequest> {
  const DescribeAggregateIdFormatRequestEc2QuerySerializer()
      : super('DescribeAggregateIdFormatRequest');

  @override
  Iterable<Type> get types => const [
        DescribeAggregateIdFormatRequest,
        _$DescribeAggregateIdFormatRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeAggregateIdFormatRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAggregateIdFormatRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
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
    final payload = (object as DescribeAggregateIdFormatRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeAggregateIdFormatRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
