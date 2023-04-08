// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.revoke_security_group_ingress_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/ip_permission.dart' as _i2;

part 'revoke_security_group_ingress_result.g.dart';

abstract class RevokeSecurityGroupIngressResult
    with
        _i1.AWSEquatable<RevokeSecurityGroupIngressResult>
    implements
        Built<RevokeSecurityGroupIngressResult,
            RevokeSecurityGroupIngressResultBuilder> {
  factory RevokeSecurityGroupIngressResult({
    bool? return_,
    List<_i2.IpPermission>? unknownIpPermissions,
  }) {
    return_ ??= false;
    return _$RevokeSecurityGroupIngressResult._(
      return_: return_,
      unknownIpPermissions: unknownIpPermissions == null
          ? null
          : _i3.BuiltList(unknownIpPermissions),
    );
  }

  factory RevokeSecurityGroupIngressResult.build(
          [void Function(RevokeSecurityGroupIngressResultBuilder) updates]) =
      _$RevokeSecurityGroupIngressResult;

  const RevokeSecurityGroupIngressResult._();

  /// Constructs a [RevokeSecurityGroupIngressResult] from a [payload] and [response].
  factory RevokeSecurityGroupIngressResult.fromResponse(
    RevokeSecurityGroupIngressResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    RevokeSecurityGroupIngressResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RevokeSecurityGroupIngressResultBuilder b) {
    b.return_ = false;
  }

  /// Returns `true` if the request succeeds; otherwise, returns an error.
  bool get return_;

  /// The inbound rules that were unknown to the service. In some cases, `unknownIpPermissionSet` might be in a different format from the request parameter.
  _i3.BuiltList<_i2.IpPermission>? get unknownIpPermissions;
  @override
  List<Object?> get props => [
        return_,
        unknownIpPermissions,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RevokeSecurityGroupIngressResult');
    helper.add(
      'return_',
      return_,
    );
    helper.add(
      'unknownIpPermissions',
      unknownIpPermissions,
    );
    return helper.toString();
  }
}

class RevokeSecurityGroupIngressResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<RevokeSecurityGroupIngressResult> {
  const RevokeSecurityGroupIngressResultEc2QuerySerializer()
      : super('RevokeSecurityGroupIngressResult');

  @override
  Iterable<Type> get types => const [
        RevokeSecurityGroupIngressResult,
        _$RevokeSecurityGroupIngressResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RevokeSecurityGroupIngressResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RevokeSecurityGroupIngressResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'return':
          result.return_ = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'unknownIpPermissionSet':
          if (value != null) {
            result.unknownIpPermissions
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.IpPermission)],
              ),
            ) as _i3.BuiltList<_i2.IpPermission>));
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
    final payload = (object as RevokeSecurityGroupIngressResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'RevokeSecurityGroupIngressResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i4.XmlElementName('Return'))
      ..add(serializers.serialize(
        payload.return_,
        specifiedType: const FullType(bool),
      ));
    if (payload.unknownIpPermissions != null) {
      result
        ..add(const _i4.XmlElementName('UnknownIpPermissionSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.unknownIpPermissions!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.IpPermission)],
          ),
        ));
    }
    return result;
  }
}
