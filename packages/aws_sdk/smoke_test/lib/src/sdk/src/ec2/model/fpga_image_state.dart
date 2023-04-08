// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.fpga_image_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image_state_code.dart'
    as _i2;

part 'fpga_image_state.g.dart';

/// Describes the state of the bitstream generation process for an Amazon FPGA image (AFI).
abstract class FpgaImageState
    with _i1.AWSEquatable<FpgaImageState>
    implements Built<FpgaImageState, FpgaImageStateBuilder> {
  /// Describes the state of the bitstream generation process for an Amazon FPGA image (AFI).
  factory FpgaImageState({
    _i2.FpgaImageStateCode? code,
    String? message,
  }) {
    return _$FpgaImageState._(
      code: code,
      message: message,
    );
  }

  /// Describes the state of the bitstream generation process for an Amazon FPGA image (AFI).
  factory FpgaImageState.build([void Function(FpgaImageStateBuilder) updates]) =
      _$FpgaImageState;

  const FpgaImageState._();

  static const List<_i3.SmithySerializer> serializers = [
    FpgaImageStateEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FpgaImageStateBuilder b) {}

  /// The state. The following are the possible values:
  ///
  /// *   `pending` \- AFI bitstream generation is in progress.
  ///
  /// *   `available` \- The AFI is available for use.
  ///
  /// *   `failed` \- AFI bitstream generation failed.
  ///
  /// *   `unavailable` \- The AFI is no longer available for use.
  _i2.FpgaImageStateCode? get code;

  /// If the state is `failed`, this is the error message.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FpgaImageState');
    helper.add(
      'code',
      code,
    );
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class FpgaImageStateEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<FpgaImageState> {
  const FpgaImageStateEc2QuerySerializer() : super('FpgaImageState');

  @override
  Iterable<Type> get types => const [
        FpgaImageState,
        _$FpgaImageState,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FpgaImageState deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FpgaImageStateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'code':
          if (value != null) {
            result.code = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.FpgaImageStateCode),
            ) as _i2.FpgaImageStateCode);
          }
          break;
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
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
    final payload = (object as FpgaImageState);
    final result = <Object?>[
      const _i3.XmlElementName(
        'FpgaImageStateResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.code != null) {
      result
        ..add(const _i3.XmlElementName('Code'))
        ..add(serializers.serialize(
          payload.code!,
          specifiedType: const FullType.nullable(_i2.FpgaImageStateCode),
        ));
    }
    if (payload.message != null) {
      result
        ..add(const _i3.XmlElementName('Message'))
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
