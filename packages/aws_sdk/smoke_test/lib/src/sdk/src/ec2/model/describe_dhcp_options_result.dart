// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_dhcp_options_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/dhcp_options.dart' as _i2;

part 'describe_dhcp_options_result.g.dart';

abstract class DescribeDhcpOptionsResult
    with _i1.AWSEquatable<DescribeDhcpOptionsResult>
    implements
        Built<DescribeDhcpOptionsResult, DescribeDhcpOptionsResultBuilder> {
  factory DescribeDhcpOptionsResult({
    List<_i2.DhcpOptions>? dhcpOptions,
    String? nextToken,
  }) {
    return _$DescribeDhcpOptionsResult._(
      dhcpOptions: dhcpOptions == null ? null : _i3.BuiltList(dhcpOptions),
      nextToken: nextToken,
    );
  }

  factory DescribeDhcpOptionsResult.build(
          [void Function(DescribeDhcpOptionsResultBuilder) updates]) =
      _$DescribeDhcpOptionsResult;

  const DescribeDhcpOptionsResult._();

  /// Constructs a [DescribeDhcpOptionsResult] from a [payload] and [response].
  factory DescribeDhcpOptionsResult.fromResponse(
    DescribeDhcpOptionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeDhcpOptionsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeDhcpOptionsResultBuilder b) {}

  /// Information about one or more DHCP options sets.
  _i3.BuiltList<_i2.DhcpOptions>? get dhcpOptions;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        dhcpOptions,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeDhcpOptionsResult');
    helper.add(
      'dhcpOptions',
      dhcpOptions,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeDhcpOptionsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeDhcpOptionsResult> {
  const DescribeDhcpOptionsResultEc2QuerySerializer()
      : super('DescribeDhcpOptionsResult');

  @override
  Iterable<Type> get types => const [
        DescribeDhcpOptionsResult,
        _$DescribeDhcpOptionsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeDhcpOptionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeDhcpOptionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'dhcpOptionsSet':
          if (value != null) {
            result.dhcpOptions.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.DhcpOptions)],
              ),
            ) as _i3.BuiltList<_i2.DhcpOptions>));
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
    final payload = (object as DescribeDhcpOptionsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeDhcpOptionsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.dhcpOptions != null) {
      result
        ..add(const _i4.XmlElementName('DhcpOptionsSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.dhcpOptions!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.DhcpOptions)],
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
