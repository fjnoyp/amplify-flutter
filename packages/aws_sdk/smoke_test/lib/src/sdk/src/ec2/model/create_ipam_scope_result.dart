// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_ipam_scope_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_scope.dart' as _i2;

part 'create_ipam_scope_result.g.dart';

abstract class CreateIpamScopeResult
    with _i1.AWSEquatable<CreateIpamScopeResult>
    implements Built<CreateIpamScopeResult, CreateIpamScopeResultBuilder> {
  factory CreateIpamScopeResult({_i2.IpamScope? ipamScope}) {
    return _$CreateIpamScopeResult._(ipamScope: ipamScope);
  }

  factory CreateIpamScopeResult.build(
          [void Function(CreateIpamScopeResultBuilder) updates]) =
      _$CreateIpamScopeResult;

  const CreateIpamScopeResult._();

  /// Constructs a [CreateIpamScopeResult] from a [payload] and [response].
  factory CreateIpamScopeResult.fromResponse(
    CreateIpamScopeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateIpamScopeResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateIpamScopeResultBuilder b) {}

  /// Information about the created scope.
  _i2.IpamScope? get ipamScope;
  @override
  List<Object?> get props => [ipamScope];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateIpamScopeResult');
    helper.add(
      'ipamScope',
      ipamScope,
    );
    return helper.toString();
  }
}

class CreateIpamScopeResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateIpamScopeResult> {
  const CreateIpamScopeResultEc2QuerySerializer()
      : super('CreateIpamScopeResult');

  @override
  Iterable<Type> get types => const [
        CreateIpamScopeResult,
        _$CreateIpamScopeResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateIpamScopeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateIpamScopeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ipamScope':
          if (value != null) {
            result.ipamScope.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.IpamScope),
            ) as _i2.IpamScope));
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
    final payload = (object as CreateIpamScopeResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateIpamScopeResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ipamScope != null) {
      result
        ..add(const _i3.XmlElementName('IpamScope'))
        ..add(serializers.serialize(
          payload.ipamScope!,
          specifiedType: const FullType(_i2.IpamScope),
        ));
    }
    return result;
  }
}
