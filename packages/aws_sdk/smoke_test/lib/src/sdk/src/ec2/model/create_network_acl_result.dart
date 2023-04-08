// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_network_acl_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/network_acl.dart' as _i2;

part 'create_network_acl_result.g.dart';

abstract class CreateNetworkAclResult
    with _i1.AWSEquatable<CreateNetworkAclResult>
    implements Built<CreateNetworkAclResult, CreateNetworkAclResultBuilder> {
  factory CreateNetworkAclResult({_i2.NetworkAcl? networkAcl}) {
    return _$CreateNetworkAclResult._(networkAcl: networkAcl);
  }

  factory CreateNetworkAclResult.build(
          [void Function(CreateNetworkAclResultBuilder) updates]) =
      _$CreateNetworkAclResult;

  const CreateNetworkAclResult._();

  /// Constructs a [CreateNetworkAclResult] from a [payload] and [response].
  factory CreateNetworkAclResult.fromResponse(
    CreateNetworkAclResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateNetworkAclResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateNetworkAclResultBuilder b) {}

  /// Information about the network ACL.
  _i2.NetworkAcl? get networkAcl;
  @override
  List<Object?> get props => [networkAcl];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateNetworkAclResult');
    helper.add(
      'networkAcl',
      networkAcl,
    );
    return helper.toString();
  }
}

class CreateNetworkAclResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateNetworkAclResult> {
  const CreateNetworkAclResultEc2QuerySerializer()
      : super('CreateNetworkAclResult');

  @override
  Iterable<Type> get types => const [
        CreateNetworkAclResult,
        _$CreateNetworkAclResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNetworkAclResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNetworkAclResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkAcl':
          if (value != null) {
            result.networkAcl.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.NetworkAcl),
            ) as _i2.NetworkAcl));
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
    final payload = (object as CreateNetworkAclResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateNetworkAclResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkAcl != null) {
      result
        ..add(const _i3.XmlElementName('NetworkAcl'))
        ..add(serializers.serialize(
          payload.networkAcl!,
          specifiedType: const FullType(_i2.NetworkAcl),
        ));
    }
    return result;
  }
}
