// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disassociate_instance_event_window_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window.dart'
    as _i2;

part 'disassociate_instance_event_window_result.g.dart';

abstract class DisassociateInstanceEventWindowResult
    with
        _i1.AWSEquatable<DisassociateInstanceEventWindowResult>
    implements
        Built<DisassociateInstanceEventWindowResult,
            DisassociateInstanceEventWindowResultBuilder> {
  factory DisassociateInstanceEventWindowResult(
      {_i2.InstanceEventWindow? instanceEventWindow}) {
    return _$DisassociateInstanceEventWindowResult._(
        instanceEventWindow: instanceEventWindow);
  }

  factory DisassociateInstanceEventWindowResult.build(
      [void Function(DisassociateInstanceEventWindowResultBuilder)
          updates]) = _$DisassociateInstanceEventWindowResult;

  const DisassociateInstanceEventWindowResult._();

  /// Constructs a [DisassociateInstanceEventWindowResult] from a [payload] and [response].
  factory DisassociateInstanceEventWindowResult.fromResponse(
    DisassociateInstanceEventWindowResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DisassociateInstanceEventWindowResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisassociateInstanceEventWindowResultBuilder b) {}

  /// Information about the event window.
  _i2.InstanceEventWindow? get instanceEventWindow;
  @override
  List<Object?> get props => [instanceEventWindow];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisassociateInstanceEventWindowResult');
    helper.add(
      'instanceEventWindow',
      instanceEventWindow,
    );
    return helper.toString();
  }
}

class DisassociateInstanceEventWindowResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DisassociateInstanceEventWindowResult> {
  const DisassociateInstanceEventWindowResultEc2QuerySerializer()
      : super('DisassociateInstanceEventWindowResult');

  @override
  Iterable<Type> get types => const [
        DisassociateInstanceEventWindowResult,
        _$DisassociateInstanceEventWindowResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateInstanceEventWindowResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateInstanceEventWindowResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceEventWindow':
          if (value != null) {
            result.instanceEventWindow.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.InstanceEventWindow),
            ) as _i2.InstanceEventWindow));
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
    final payload = (object as DisassociateInstanceEventWindowResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DisassociateInstanceEventWindowResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceEventWindow != null) {
      result
        ..add(const _i3.XmlElementName('InstanceEventWindow'))
        ..add(serializers.serialize(
          payload.instanceEventWindow!,
          specifiedType: const FullType(_i2.InstanceEventWindow),
        ));
    }
    return result;
  }
}
