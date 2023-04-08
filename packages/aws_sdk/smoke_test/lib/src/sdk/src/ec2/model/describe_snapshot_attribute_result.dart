// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_snapshot_attribute_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/create_volume_permission.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/product_code.dart' as _i3;

part 'describe_snapshot_attribute_result.g.dart';

abstract class DescribeSnapshotAttributeResult
    with
        _i1.AWSEquatable<DescribeSnapshotAttributeResult>
    implements
        Built<DescribeSnapshotAttributeResult,
            DescribeSnapshotAttributeResultBuilder> {
  factory DescribeSnapshotAttributeResult({
    List<_i2.CreateVolumePermission>? createVolumePermissions,
    List<_i3.ProductCode>? productCodes,
    String? snapshotId,
  }) {
    return _$DescribeSnapshotAttributeResult._(
      createVolumePermissions: createVolumePermissions == null
          ? null
          : _i4.BuiltList(createVolumePermissions),
      productCodes: productCodes == null ? null : _i4.BuiltList(productCodes),
      snapshotId: snapshotId,
    );
  }

  factory DescribeSnapshotAttributeResult.build(
          [void Function(DescribeSnapshotAttributeResultBuilder) updates]) =
      _$DescribeSnapshotAttributeResult;

  const DescribeSnapshotAttributeResult._();

  /// Constructs a [DescribeSnapshotAttributeResult] from a [payload] and [response].
  factory DescribeSnapshotAttributeResult.fromResponse(
    DescribeSnapshotAttributeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    DescribeSnapshotAttributeResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSnapshotAttributeResultBuilder b) {}

  /// The users and groups that have the permissions for creating volumes from the snapshot.
  _i4.BuiltList<_i2.CreateVolumePermission>? get createVolumePermissions;

  /// The product codes.
  _i4.BuiltList<_i3.ProductCode>? get productCodes;

  /// The ID of the EBS snapshot.
  String? get snapshotId;
  @override
  List<Object?> get props => [
        createVolumePermissions,
        productCodes,
        snapshotId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSnapshotAttributeResult');
    helper.add(
      'createVolumePermissions',
      createVolumePermissions,
    );
    helper.add(
      'productCodes',
      productCodes,
    );
    helper.add(
      'snapshotId',
      snapshotId,
    );
    return helper.toString();
  }
}

class DescribeSnapshotAttributeResultEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<DescribeSnapshotAttributeResult> {
  const DescribeSnapshotAttributeResultEc2QuerySerializer()
      : super('DescribeSnapshotAttributeResult');

  @override
  Iterable<Type> get types => const [
        DescribeSnapshotAttributeResult,
        _$DescribeSnapshotAttributeResult,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSnapshotAttributeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSnapshotAttributeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'createVolumePermission':
          if (value != null) {
            result.createVolumePermissions
                .replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.CreateVolumePermission)],
              ),
            ) as _i4.BuiltList<_i2.CreateVolumePermission>));
          }
          break;
        case 'productCodes':
          if (value != null) {
            result.productCodes.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.ProductCode)],
              ),
            ) as _i4.BuiltList<_i3.ProductCode>));
          }
          break;
        case 'snapshotId':
          if (value != null) {
            result.snapshotId = (serializers.deserialize(
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
    final payload = (object as DescribeSnapshotAttributeResult);
    final result = <Object?>[
      const _i5.XmlElementName(
        'DescribeSnapshotAttributeResultResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.createVolumePermissions != null) {
      result
        ..add(const _i5.XmlElementName('CreateVolumePermission'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.createVolumePermissions!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.CreateVolumePermission)],
          ),
        ));
    }
    if (payload.productCodes != null) {
      result
        ..add(const _i5.XmlElementName('ProductCodes'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.productCodes!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.ProductCode)],
          ),
        ));
    }
    if (payload.snapshotId != null) {
      result
        ..add(const _i5.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          payload.snapshotId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
