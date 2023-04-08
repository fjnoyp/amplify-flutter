// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_principal_id_format_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/principal_id_format.dart'
    as _i2;

part 'describe_principal_id_format_result.g.dart';

abstract class DescribePrincipalIdFormatResult
    with
        _i1.AWSEquatable<DescribePrincipalIdFormatResult>
    implements
        Built<DescribePrincipalIdFormatResult,
            DescribePrincipalIdFormatResultBuilder> {
  factory DescribePrincipalIdFormatResult({
    List<_i2.PrincipalIdFormat>? principals,
    String? nextToken,
  }) {
    return _$DescribePrincipalIdFormatResult._(
      principals: principals == null ? null : _i3.BuiltList(principals),
      nextToken: nextToken,
    );
  }

  factory DescribePrincipalIdFormatResult.build(
          [void Function(DescribePrincipalIdFormatResultBuilder) updates]) =
      _$DescribePrincipalIdFormatResult;

  const DescribePrincipalIdFormatResult._();

  /// Constructs a [DescribePrincipalIdFormatResult] from a [payload] and [response].
  factory DescribePrincipalIdFormatResult.fromResponse(
    DescribePrincipalIdFormatResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribePrincipalIdFormatResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribePrincipalIdFormatResultBuilder b) {}

  /// Information about the ID format settings for the ARN.
  _i3.BuiltList<_i2.PrincipalIdFormat>? get principals;

  /// The token to use to retrieve the next page of results. This value is null when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        principals,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribePrincipalIdFormatResult');
    helper.add(
      'principals',
      principals,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribePrincipalIdFormatResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribePrincipalIdFormatResult> {
  const DescribePrincipalIdFormatResultEc2QuerySerializer()
      : super('DescribePrincipalIdFormatResult');

  @override
  Iterable<Type> get types => const [
        DescribePrincipalIdFormatResult,
        _$DescribePrincipalIdFormatResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribePrincipalIdFormatResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribePrincipalIdFormatResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'principalSet':
          if (value != null) {
            result.principals.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.PrincipalIdFormat)],
              ),
            ) as _i3.BuiltList<_i2.PrincipalIdFormat>));
          }
          break;
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as DescribePrincipalIdFormatResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribePrincipalIdFormatResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.principals != null) {
      result
        ..add(const _i4.XmlElementName('PrincipalSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.principals!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.PrincipalIdFormat)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
