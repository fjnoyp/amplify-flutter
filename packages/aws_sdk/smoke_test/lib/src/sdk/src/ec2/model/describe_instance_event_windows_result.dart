// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_instance_event_windows_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window.dart'
    as _i2;

part 'describe_instance_event_windows_result.g.dart';

abstract class DescribeInstanceEventWindowsResult
    with
        _i1.AWSEquatable<DescribeInstanceEventWindowsResult>
    implements
        Built<DescribeInstanceEventWindowsResult,
            DescribeInstanceEventWindowsResultBuilder> {
  factory DescribeInstanceEventWindowsResult({
    List<_i2.InstanceEventWindow>? instanceEventWindows,
    String? nextToken,
  }) {
    return _$DescribeInstanceEventWindowsResult._(
      instanceEventWindows: instanceEventWindows == null
          ? null
          : _i3.BuiltList(instanceEventWindows),
      nextToken: nextToken,
    );
  }

  factory DescribeInstanceEventWindowsResult.build(
          [void Function(DescribeInstanceEventWindowsResultBuilder) updates]) =
      _$DescribeInstanceEventWindowsResult;

  const DescribeInstanceEventWindowsResult._();

  /// Constructs a [DescribeInstanceEventWindowsResult] from a [payload] and [response].
  factory DescribeInstanceEventWindowsResult.fromResponse(
    DescribeInstanceEventWindowsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeInstanceEventWindowsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeInstanceEventWindowsResultBuilder b) {}

  /// Information about the event windows.
  _i3.BuiltList<_i2.InstanceEventWindow>? get instanceEventWindows;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        instanceEventWindows,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeInstanceEventWindowsResult');
    helper.add(
      'instanceEventWindows',
      instanceEventWindows,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeInstanceEventWindowsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeInstanceEventWindowsResult> {
  const DescribeInstanceEventWindowsResultEc2QuerySerializer()
      : super('DescribeInstanceEventWindowsResult');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceEventWindowsResult,
        _$DescribeInstanceEventWindowsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceEventWindowsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceEventWindowsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceEventWindowSet':
          if (value != null) {
            result.instanceEventWindows
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.InstanceEventWindow)],
              ),
            ) as _i3.BuiltList<_i2.InstanceEventWindow>));
          }
          break;
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as DescribeInstanceEventWindowsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeInstanceEventWindowsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceEventWindows != null) {
      result
        ..add(const _i4.XmlElementName('InstanceEventWindowSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.instanceEventWindows!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.InstanceEventWindow)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
