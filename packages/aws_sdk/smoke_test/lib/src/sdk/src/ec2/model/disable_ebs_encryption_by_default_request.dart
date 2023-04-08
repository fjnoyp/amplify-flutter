// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disable_ebs_encryption_by_default_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'disable_ebs_encryption_by_default_request.g.dart';

abstract class DisableEbsEncryptionByDefaultRequest
    with
        _i1.HttpInput<DisableEbsEncryptionByDefaultRequest>,
        _i2.AWSEquatable<DisableEbsEncryptionByDefaultRequest>
    implements
        Built<DisableEbsEncryptionByDefaultRequest,
            DisableEbsEncryptionByDefaultRequestBuilder> {
  factory DisableEbsEncryptionByDefaultRequest({bool? dryRun}) {
    dryRun ??= false;
    return _$DisableEbsEncryptionByDefaultRequest._(dryRun: dryRun);
  }

  factory DisableEbsEncryptionByDefaultRequest.build(
      [void Function(DisableEbsEncryptionByDefaultRequestBuilder)
          updates]) = _$DisableEbsEncryptionByDefaultRequest;

  const DisableEbsEncryptionByDefaultRequest._();

  factory DisableEbsEncryptionByDefaultRequest.fromRequest(
    DisableEbsEncryptionByDefaultRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DisableEbsEncryptionByDefaultRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisableEbsEncryptionByDefaultRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DisableEbsEncryptionByDefaultRequest getPayload() => this;
  @override
  List<Object?> get props => [dryRun];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisableEbsEncryptionByDefaultRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DisableEbsEncryptionByDefaultRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DisableEbsEncryptionByDefaultRequest> {
  const DisableEbsEncryptionByDefaultRequestEc2QuerySerializer()
      : super('DisableEbsEncryptionByDefaultRequest');

  @override
  Iterable<Type> get types => const [
        DisableEbsEncryptionByDefaultRequest,
        _$DisableEbsEncryptionByDefaultRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableEbsEncryptionByDefaultRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableEbsEncryptionByDefaultRequestBuilder();
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
    final payload = (object as DisableEbsEncryptionByDefaultRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DisableEbsEncryptionByDefaultRequestResponse',
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
