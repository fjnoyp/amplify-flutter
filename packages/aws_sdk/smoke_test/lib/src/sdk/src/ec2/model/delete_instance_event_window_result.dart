// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_instance_event_window_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_state_change.dart'
    as _i2;

part 'delete_instance_event_window_result.g.dart';

abstract class DeleteInstanceEventWindowResult
    with
        _i1.AWSEquatable<DeleteInstanceEventWindowResult>
    implements
        Built<DeleteInstanceEventWindowResult,
            DeleteInstanceEventWindowResultBuilder> {
  factory DeleteInstanceEventWindowResult(
      {_i2.InstanceEventWindowStateChange? instanceEventWindowState}) {
    return _$DeleteInstanceEventWindowResult._(
        instanceEventWindowState: instanceEventWindowState);
  }

  factory DeleteInstanceEventWindowResult.build(
          [void Function(DeleteInstanceEventWindowResultBuilder) updates]) =
      _$DeleteInstanceEventWindowResult;

  const DeleteInstanceEventWindowResult._();

  /// Constructs a [DeleteInstanceEventWindowResult] from a [payload] and [response].
  factory DeleteInstanceEventWindowResult.fromResponse(
    DeleteInstanceEventWindowResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeleteInstanceEventWindowResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteInstanceEventWindowResultBuilder b) {}

  /// The state of the event window.
  _i2.InstanceEventWindowStateChange? get instanceEventWindowState;
  @override
  List<Object?> get props => [instanceEventWindowState];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteInstanceEventWindowResult');
    helper.add(
      'instanceEventWindowState',
      instanceEventWindowState,
    );
    return helper.toString();
  }
}

class DeleteInstanceEventWindowResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DeleteInstanceEventWindowResult> {
  const DeleteInstanceEventWindowResultEc2QuerySerializer()
      : super('DeleteInstanceEventWindowResult');

  @override
  Iterable<Type> get types => const [
        DeleteInstanceEventWindowResult,
        _$DeleteInstanceEventWindowResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteInstanceEventWindowResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteInstanceEventWindowResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceEventWindowState':
          if (value != null) {
            result.instanceEventWindowState.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.InstanceEventWindowStateChange),
            ) as _i2.InstanceEventWindowStateChange));
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
    final payload = (object as DeleteInstanceEventWindowResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteInstanceEventWindowResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceEventWindowState != null) {
      result
        ..add(const _i3.XmlElementName('InstanceEventWindowState'))
        ..add(serializers.serialize(
          payload.instanceEventWindowState!,
          specifiedType: const FullType(_i2.InstanceEventWindowStateChange),
        ));
    }
    return result;
  }
}
