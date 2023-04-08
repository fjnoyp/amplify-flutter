// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.revoke_security_group_egress_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/ip_permission.dart' as _i2;

part 'revoke_security_group_egress_result.g.dart';

abstract class RevokeSecurityGroupEgressResult
    with
        _i1.AWSEquatable<RevokeSecurityGroupEgressResult>
    implements
        Built<RevokeSecurityGroupEgressResult,
            RevokeSecurityGroupEgressResultBuilder> {
  factory RevokeSecurityGroupEgressResult({
    bool? return_,
    List<_i2.IpPermission>? unknownIpPermissions,
  }) {
    return_ ??= false;
    return _$RevokeSecurityGroupEgressResult._(
      return_: return_,
      unknownIpPermissions: unknownIpPermissions == null
          ? null
          : _i3.BuiltList(unknownIpPermissions),
    );
  }

  factory RevokeSecurityGroupEgressResult.build(
          [void Function(RevokeSecurityGroupEgressResultBuilder) updates]) =
      _$RevokeSecurityGroupEgressResult;

  const RevokeSecurityGroupEgressResult._();

  /// Constructs a [RevokeSecurityGroupEgressResult] from a [payload] and [response].
  factory RevokeSecurityGroupEgressResult.fromResponse(
    RevokeSecurityGroupEgressResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    RevokeSecurityGroupEgressResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RevokeSecurityGroupEgressResultBuilder b) {
    b.return_ = false;
  }

  /// Returns `true` if the request succeeds; otherwise, returns an error.
  bool get return_;

  /// The outbound rules that were unknown to the service. In some cases, `unknownIpPermissionSet` might be in a different format from the request parameter.
  _i3.BuiltList<_i2.IpPermission>? get unknownIpPermissions;
  @override
  List<Object?> get props => [
        return_,
        unknownIpPermissions,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RevokeSecurityGroupEgressResult');
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

class RevokeSecurityGroupEgressResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<RevokeSecurityGroupEgressResult> {
  const RevokeSecurityGroupEgressResultEc2QuerySerializer()
      : super('RevokeSecurityGroupEgressResult');

  @override
  Iterable<Type> get types => const [
        RevokeSecurityGroupEgressResult,
        _$RevokeSecurityGroupEgressResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RevokeSecurityGroupEgressResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RevokeSecurityGroupEgressResultBuilder();
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
    final payload = (object as RevokeSecurityGroupEgressResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'RevokeSecurityGroupEgressResultResponse',
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
