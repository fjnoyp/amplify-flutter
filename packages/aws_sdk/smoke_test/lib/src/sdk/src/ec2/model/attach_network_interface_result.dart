// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.attach_network_interface_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'attach_network_interface_result.g.dart';

/// Contains the output of AttachNetworkInterface.
abstract class AttachNetworkInterfaceResult
    with
        _i1.AWSEquatable<AttachNetworkInterfaceResult>
    implements
        Built<AttachNetworkInterfaceResult,
            AttachNetworkInterfaceResultBuilder> {
  /// Contains the output of AttachNetworkInterface.
  factory AttachNetworkInterfaceResult({
    String? attachmentId,
    int? networkCardIndex,
  }) {
    networkCardIndex ??= 0;
    return _$AttachNetworkInterfaceResult._(
      attachmentId: attachmentId,
      networkCardIndex: networkCardIndex,
    );
  }

  /// Contains the output of AttachNetworkInterface.
  factory AttachNetworkInterfaceResult.build(
          [void Function(AttachNetworkInterfaceResultBuilder) updates]) =
      _$AttachNetworkInterfaceResult;

  const AttachNetworkInterfaceResult._();

  /// Constructs a [AttachNetworkInterfaceResult] from a [payload] and [response].
  factory AttachNetworkInterfaceResult.fromResponse(
    AttachNetworkInterfaceResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    AttachNetworkInterfaceResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AttachNetworkInterfaceResultBuilder b) {
    b.networkCardIndex = 0;
  }

  /// The ID of the network interface attachment.
  String? get attachmentId;

  /// The index of the network card.
  int get networkCardIndex;
  @override
  List<Object?> get props => [
        attachmentId,
        networkCardIndex,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AttachNetworkInterfaceResult');
    helper.add(
      'attachmentId',
      attachmentId,
    );
    helper.add(
      'networkCardIndex',
      networkCardIndex,
    );
    return helper.toString();
  }
}

class AttachNetworkInterfaceResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AttachNetworkInterfaceResult> {
  const AttachNetworkInterfaceResultEc2QuerySerializer()
      : super('AttachNetworkInterfaceResult');

  @override
  Iterable<Type> get types => const [
        AttachNetworkInterfaceResult,
        _$AttachNetworkInterfaceResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AttachNetworkInterfaceResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttachNetworkInterfaceResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'attachmentId':
          if (value != null) {
            result.attachmentId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'networkCardIndex':
          result.networkCardIndex = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as AttachNetworkInterfaceResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'AttachNetworkInterfaceResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.attachmentId != null) {
      result
        ..add(const _i2.XmlElementName('AttachmentId'))
        ..add(serializers.serialize(
          payload.attachmentId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i2.XmlElementName('NetworkCardIndex'))
      ..add(serializers.serialize(
        payload.networkCardIndex,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
