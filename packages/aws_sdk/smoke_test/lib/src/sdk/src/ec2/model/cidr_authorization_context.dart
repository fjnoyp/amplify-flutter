// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.cidr_authorization_context; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'cidr_authorization_context.g.dart';

/// Provides authorization for Amazon to bring a specific IP address range to a specific Amazon Web Services account using bring your own IP addresses (BYOIP). For more information, see [Configuring your BYOIP address range](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html#prepare-for-byoip) in the _Amazon Elastic Compute Cloud User Guide_.
abstract class CidrAuthorizationContext
    with _i1.AWSEquatable<CidrAuthorizationContext>
    implements
        Built<CidrAuthorizationContext, CidrAuthorizationContextBuilder> {
  /// Provides authorization for Amazon to bring a specific IP address range to a specific Amazon Web Services account using bring your own IP addresses (BYOIP). For more information, see [Configuring your BYOIP address range](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html#prepare-for-byoip) in the _Amazon Elastic Compute Cloud User Guide_.
  factory CidrAuthorizationContext({
    required String message,
    required String signature,
  }) {
    return _$CidrAuthorizationContext._(
      message: message,
      signature: signature,
    );
  }

  /// Provides authorization for Amazon to bring a specific IP address range to a specific Amazon Web Services account using bring your own IP addresses (BYOIP). For more information, see [Configuring your BYOIP address range](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html#prepare-for-byoip) in the _Amazon Elastic Compute Cloud User Guide_.
  factory CidrAuthorizationContext.build(
          [void Function(CidrAuthorizationContextBuilder) updates]) =
      _$CidrAuthorizationContext;

  const CidrAuthorizationContext._();

  static const List<_i2.SmithySerializer> serializers = [
    CidrAuthorizationContextEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CidrAuthorizationContextBuilder b) {}

  /// The plain-text authorization message for the prefix and account.
  String get message;

  /// The signed authorization message for the prefix and account.
  String get signature;
  @override
  List<Object?> get props => [
        message,
        signature,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CidrAuthorizationContext');
    helper.add(
      'message',
      message,
    );
    helper.add(
      'signature',
      signature,
    );
    return helper.toString();
  }
}

class CidrAuthorizationContextEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CidrAuthorizationContext> {
  const CidrAuthorizationContextEc2QuerySerializer()
      : super('CidrAuthorizationContext');

  @override
  Iterable<Type> get types => const [
        CidrAuthorizationContext,
        _$CidrAuthorizationContext,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CidrAuthorizationContext deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CidrAuthorizationContextBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Message':
          result.message = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Signature':
          result.signature = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as CidrAuthorizationContext);
    final result = <Object?>[
      const _i2.XmlElementName(
        'CidrAuthorizationContextResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Message'))
      ..add(serializers.serialize(
        payload.message,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i2.XmlElementName('Signature'))
      ..add(serializers.serialize(
        payload.signature,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
