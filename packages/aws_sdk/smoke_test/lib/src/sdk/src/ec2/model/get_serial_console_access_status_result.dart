// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_serial_console_access_status_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_serial_console_access_status_result.g.dart';

abstract class GetSerialConsoleAccessStatusResult
    with
        _i1.AWSEquatable<GetSerialConsoleAccessStatusResult>
    implements
        Built<GetSerialConsoleAccessStatusResult,
            GetSerialConsoleAccessStatusResultBuilder> {
  factory GetSerialConsoleAccessStatusResult(
      {bool? serialConsoleAccessEnabled}) {
    serialConsoleAccessEnabled ??= false;
    return _$GetSerialConsoleAccessStatusResult._(
        serialConsoleAccessEnabled: serialConsoleAccessEnabled);
  }

  factory GetSerialConsoleAccessStatusResult.build(
          [void Function(GetSerialConsoleAccessStatusResultBuilder) updates]) =
      _$GetSerialConsoleAccessStatusResult;

  const GetSerialConsoleAccessStatusResult._();

  /// Constructs a [GetSerialConsoleAccessStatusResult] from a [payload] and [response].
  factory GetSerialConsoleAccessStatusResult.fromResponse(
    GetSerialConsoleAccessStatusResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    GetSerialConsoleAccessStatusResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetSerialConsoleAccessStatusResultBuilder b) {
    b.serialConsoleAccessEnabled = false;
  }

  /// If `true`, access to the EC2 serial console of all instances is enabled for your account. If `false`, access to the EC2 serial console of all instances is disabled for your account.
  bool get serialConsoleAccessEnabled;
  @override
  List<Object?> get props => [serialConsoleAccessEnabled];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetSerialConsoleAccessStatusResult');
    helper.add(
      'serialConsoleAccessEnabled',
      serialConsoleAccessEnabled,
    );
    return helper.toString();
  }
}

class GetSerialConsoleAccessStatusResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<GetSerialConsoleAccessStatusResult> {
  const GetSerialConsoleAccessStatusResultEc2QuerySerializer()
      : super('GetSerialConsoleAccessStatusResult');

  @override
  Iterable<Type> get types => const [
        GetSerialConsoleAccessStatusResult,
        _$GetSerialConsoleAccessStatusResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetSerialConsoleAccessStatusResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSerialConsoleAccessStatusResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'serialConsoleAccessEnabled':
          result.serialConsoleAccessEnabled = (serializers.deserialize(
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
    final payload = (object as GetSerialConsoleAccessStatusResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'GetSerialConsoleAccessStatusResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('SerialConsoleAccessEnabled'))
      ..add(serializers.serialize(
        payload.serialConsoleAccessEnabled,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
