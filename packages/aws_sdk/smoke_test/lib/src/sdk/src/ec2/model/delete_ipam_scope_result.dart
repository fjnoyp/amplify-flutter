// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_ipam_scope_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_scope.dart' as _i2;

part 'delete_ipam_scope_result.g.dart';

abstract class DeleteIpamScopeResult
    with _i1.AWSEquatable<DeleteIpamScopeResult>
    implements Built<DeleteIpamScopeResult, DeleteIpamScopeResultBuilder> {
  factory DeleteIpamScopeResult({_i2.IpamScope? ipamScope}) {
    return _$DeleteIpamScopeResult._(ipamScope: ipamScope);
  }

  factory DeleteIpamScopeResult.build(
          [void Function(DeleteIpamScopeResultBuilder) updates]) =
      _$DeleteIpamScopeResult;

  const DeleteIpamScopeResult._();

  /// Constructs a [DeleteIpamScopeResult] from a [payload] and [response].
  factory DeleteIpamScopeResult.fromResponse(
    DeleteIpamScopeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeleteIpamScopeResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteIpamScopeResultBuilder b) {}

  /// Information about the results of the deletion.
  _i2.IpamScope? get ipamScope;
  @override
  List<Object?> get props => [ipamScope];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteIpamScopeResult');
    helper.add(
      'ipamScope',
      ipamScope,
    );
    return helper.toString();
  }
}

class DeleteIpamScopeResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DeleteIpamScopeResult> {
  const DeleteIpamScopeResultEc2QuerySerializer()
      : super('DeleteIpamScopeResult');

  @override
  Iterable<Type> get types => const [
        DeleteIpamScopeResult,
        _$DeleteIpamScopeResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteIpamScopeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteIpamScopeResultBuilder();
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
    final payload = (object as DeleteIpamScopeResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteIpamScopeResultResponse',
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
