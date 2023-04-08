// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.stack_drift_information; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_status.dart'
    as _i2;

part 'stack_drift_information.g.dart';

/// Contains information about whether the stack's actual configuration differs, or has _drifted_, from its expected configuration, as defined in the stack template and any values specified as template parameters. A stack is considered to have drifted if one or more of its resources have drifted.
abstract class StackDriftInformation
    with _i1.AWSEquatable<StackDriftInformation>
    implements Built<StackDriftInformation, StackDriftInformationBuilder> {
  /// Contains information about whether the stack's actual configuration differs, or has _drifted_, from its expected configuration, as defined in the stack template and any values specified as template parameters. A stack is considered to have drifted if one or more of its resources have drifted.
  factory StackDriftInformation({
    required _i2.StackDriftStatus stackDriftStatus,
    DateTime? lastCheckTimestamp,
  }) {
    return _$StackDriftInformation._(
      stackDriftStatus: stackDriftStatus,
      lastCheckTimestamp: lastCheckTimestamp,
    );
  }

  /// Contains information about whether the stack's actual configuration differs, or has _drifted_, from its expected configuration, as defined in the stack template and any values specified as template parameters. A stack is considered to have drifted if one or more of its resources have drifted.
  factory StackDriftInformation.build(
          [void Function(StackDriftInformationBuilder) updates]) =
      _$StackDriftInformation;

  const StackDriftInformation._();

  static const List<_i3.SmithySerializer> serializers = [
    StackDriftInformationAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StackDriftInformationBuilder b) {}

  /// Status of the stack's actual configuration compared to its expected template configuration.
  ///
  /// *   `DRIFTED`: The stack differs from its expected template configuration. A stack is considered to have drifted if one or more of its resources have drifted.
  ///
  /// *   `NOT_CHECKED`: CloudFormation hasn't checked if the stack differs from its expected template configuration.
  ///
  /// *   `IN_SYNC`: The stack's actual configuration matches its expected template configuration.
  ///
  /// *   `UNKNOWN`: This value is reserved for future use.
  _i2.StackDriftStatus get stackDriftStatus;

  /// Most recent time when a drift detection operation was initiated on the stack, or any of its individual resources that support drift detection.
  DateTime? get lastCheckTimestamp;
  @override
  List<Object?> get props => [
        stackDriftStatus,
        lastCheckTimestamp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StackDriftInformation');
    helper.add(
      'stackDriftStatus',
      stackDriftStatus,
    );
    helper.add(
      'lastCheckTimestamp',
      lastCheckTimestamp,
    );
    return helper.toString();
  }
}

class StackDriftInformationAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<StackDriftInformation> {
  const StackDriftInformationAwsQuerySerializer()
      : super('StackDriftInformation');

  @override
  Iterable<Type> get types => const [
        StackDriftInformation,
        _$StackDriftInformation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackDriftInformation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackDriftInformationBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'StackDriftStatus':
          result.stackDriftStatus = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.StackDriftStatus),
          ) as _i2.StackDriftStatus);
          break;
        case 'LastCheckTimestamp':
          if (value != null) {
            result.lastCheckTimestamp = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
    final payload = (object as StackDriftInformation);
    final result = <Object?>[
      const _i3.XmlElementName(
        'StackDriftInformationResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('StackDriftStatus'))
      ..add(serializers.serialize(
        payload.stackDriftStatus,
        specifiedType: const FullType.nullable(_i2.StackDriftStatus),
      ));
    if (payload.lastCheckTimestamp != null) {
      result
        ..add(const _i3.XmlElementName('LastCheckTimestamp'))
        ..add(serializers.serialize(
          payload.lastCheckTimestamp!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result;
  }
}
