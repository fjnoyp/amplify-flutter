// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_key_pairs_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_key_pairs_request.g.dart';

abstract class DescribeKeyPairsRequest
    with
        _i1.HttpInput<DescribeKeyPairsRequest>,
        _i2.AWSEquatable<DescribeKeyPairsRequest>
    implements Built<DescribeKeyPairsRequest, DescribeKeyPairsRequestBuilder> {
  factory DescribeKeyPairsRequest({
    List<_i3.Filter>? filters,
    List<String>? keyNames,
    List<String>? keyPairIds,
    bool? dryRun,
    bool? includePublicKey,
  }) {
    dryRun ??= false;
    includePublicKey ??= false;
    return _$DescribeKeyPairsRequest._(
      filters: filters == null ? null : _i4.BuiltList(filters),
      keyNames: keyNames == null ? null : _i4.BuiltList(keyNames),
      keyPairIds: keyPairIds == null ? null : _i4.BuiltList(keyPairIds),
      dryRun: dryRun,
      includePublicKey: includePublicKey,
    );
  }

  factory DescribeKeyPairsRequest.build(
          [void Function(DescribeKeyPairsRequestBuilder) updates]) =
      _$DescribeKeyPairsRequest;

  const DescribeKeyPairsRequest._();

  factory DescribeKeyPairsRequest.fromRequest(
    DescribeKeyPairsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeKeyPairsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeKeyPairsRequestBuilder b) {
    b.dryRun = false;
    b.includePublicKey = false;
  }

  /// The filters.
  ///
  /// *   `key-pair-id` \- The ID of the key pair.
  ///
  /// *   `fingerprint` \- The fingerprint of the key pair.
  ///
  /// *   `key-name` \- The name of the key pair.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The key pair names.
  ///
  /// Default: Describes all of your key pairs.
  _i4.BuiltList<String>? get keyNames;

  /// The IDs of the key pairs.
  _i4.BuiltList<String>? get keyPairIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// If `true`, the public key material is included in the response.
  ///
  /// Default: `false`
  bool get includePublicKey;
  @override
  DescribeKeyPairsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        keyNames,
        keyPairIds,
        dryRun,
        includePublicKey,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeKeyPairsRequest');
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'keyNames',
      keyNames,
    );
    helper.add(
      'keyPairIds',
      keyPairIds,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'includePublicKey',
      includePublicKey,
    );
    return helper.toString();
  }
}

class DescribeKeyPairsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeKeyPairsRequest> {
  const DescribeKeyPairsRequestEc2QuerySerializer()
      : super('DescribeKeyPairsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeKeyPairsRequest,
        _$DescribeKeyPairsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeKeyPairsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeKeyPairsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Filter':
          if (value != null) {
            result.filters.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'Filter',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Filter)],
              ),
            ) as _i4.BuiltList<_i3.Filter>));
          }
          break;
        case 'KeyName':
          if (value != null) {
            result.keyNames.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'KeyName',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'KeyPairId':
          if (value != null) {
            result.keyPairIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'KeyPairId',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'IncludePublicKey':
          result.includePublicKey = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as DescribeKeyPairsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeKeyPairsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.filters != null) {
      result
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.filters!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Filter)],
          ),
        ));
    }
    if (payload.keyNames != null) {
      result
        ..add(const _i1.XmlElementName('KeyName'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'KeyName',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.keyNames!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.keyPairIds != null) {
      result
        ..add(const _i1.XmlElementName('KeyPairId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'KeyPairId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.keyPairIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('IncludePublicKey'))
      ..add(serializers.serialize(
        payload.includePublicKey,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
