// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_account_attributes_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/account_attribute.dart' as _i2;

part 'describe_account_attributes_result.g.dart';

abstract class DescribeAccountAttributesResult
    with
        _i1.AWSEquatable<DescribeAccountAttributesResult>
    implements
        Built<DescribeAccountAttributesResult,
            DescribeAccountAttributesResultBuilder> {
  factory DescribeAccountAttributesResult(
      {List<_i2.AccountAttribute>? accountAttributes}) {
    return _$DescribeAccountAttributesResult._(
        accountAttributes: accountAttributes == null
            ? null
            : _i3.BuiltList(accountAttributes));
  }

  factory DescribeAccountAttributesResult.build(
          [void Function(DescribeAccountAttributesResultBuilder) updates]) =
      _$DescribeAccountAttributesResult;

  const DescribeAccountAttributesResult._();

  /// Constructs a [DescribeAccountAttributesResult] from a [payload] and [response].
  factory DescribeAccountAttributesResult.fromResponse(
    DescribeAccountAttributesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeAccountAttributesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeAccountAttributesResultBuilder b) {}

  /// Information about the account attributes.
  _i3.BuiltList<_i2.AccountAttribute>? get accountAttributes;
  @override
  List<Object?> get props => [accountAttributes];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeAccountAttributesResult');
    helper.add(
      'accountAttributes',
      accountAttributes,
    );
    return helper.toString();
  }
}

class DescribeAccountAttributesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeAccountAttributesResult> {
  const DescribeAccountAttributesResultEc2QuerySerializer()
      : super('DescribeAccountAttributesResult');

  @override
  Iterable<Type> get types => const [
        DescribeAccountAttributesResult,
        _$DescribeAccountAttributesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeAccountAttributesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAccountAttributesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'accountAttributeSet':
          if (value != null) {
            result.accountAttributes.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.AccountAttribute)],
              ),
            ) as _i3.BuiltList<_i2.AccountAttribute>));
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
    final payload = (object as DescribeAccountAttributesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeAccountAttributesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.accountAttributes != null) {
      result
        ..add(const _i4.XmlElementName('AccountAttributeSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.accountAttributes!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.AccountAttribute)],
          ),
        ));
    }
    return result;
  }
}
