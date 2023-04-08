// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_coip_cidr_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/coip_cidr.dart' as _i2;

part 'delete_coip_cidr_result.g.dart';

abstract class DeleteCoipCidrResult
    with _i1.AWSEquatable<DeleteCoipCidrResult>
    implements Built<DeleteCoipCidrResult, DeleteCoipCidrResultBuilder> {
  factory DeleteCoipCidrResult({_i2.CoipCidr? coipCidr}) {
    return _$DeleteCoipCidrResult._(coipCidr: coipCidr);
  }

  factory DeleteCoipCidrResult.build(
          [void Function(DeleteCoipCidrResultBuilder) updates]) =
      _$DeleteCoipCidrResult;

  const DeleteCoipCidrResult._();

  /// Constructs a [DeleteCoipCidrResult] from a [payload] and [response].
  factory DeleteCoipCidrResult.fromResponse(
    DeleteCoipCidrResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeleteCoipCidrResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteCoipCidrResultBuilder b) {}

  /// Information about a range of customer-owned IP addresses.
  _i2.CoipCidr? get coipCidr;
  @override
  List<Object?> get props => [coipCidr];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteCoipCidrResult');
    helper.add(
      'coipCidr',
      coipCidr,
    );
    return helper.toString();
  }
}

class DeleteCoipCidrResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DeleteCoipCidrResult> {
  const DeleteCoipCidrResultEc2QuerySerializer()
      : super('DeleteCoipCidrResult');

  @override
  Iterable<Type> get types => const [
        DeleteCoipCidrResult,
        _$DeleteCoipCidrResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteCoipCidrResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteCoipCidrResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'coipCidr':
          if (value != null) {
            result.coipCidr.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CoipCidr),
            ) as _i2.CoipCidr));
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
    final payload = (object as DeleteCoipCidrResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteCoipCidrResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.coipCidr != null) {
      result
        ..add(const _i3.XmlElementName('CoipCidr'))
        ..add(serializers.serialize(
          payload.coipCidr!,
          specifiedType: const FullType(_i2.CoipCidr),
        ));
    }
    return result;
  }
}
