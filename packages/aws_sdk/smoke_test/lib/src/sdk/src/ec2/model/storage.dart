// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.storage; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/s3_storage.dart' as _i2;

part 'storage.g.dart';

/// Describes the storage location for an instance store-backed AMI.
abstract class Storage
    with _i1.AWSEquatable<Storage>
    implements Built<Storage, StorageBuilder> {
  /// Describes the storage location for an instance store-backed AMI.
  factory Storage({_i2.S3Storage? s3}) {
    return _$Storage._(s3: s3);
  }

  /// Describes the storage location for an instance store-backed AMI.
  factory Storage.build([void Function(StorageBuilder) updates]) = _$Storage;

  const Storage._();

  static const List<_i3.SmithySerializer> serializers = [
    StorageEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StorageBuilder b) {}

  /// An Amazon S3 storage location.
  _i2.S3Storage? get s3;
  @override
  List<Object?> get props => [s3];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Storage');
    helper.add(
      's3',
      s3,
    );
    return helper.toString();
  }
}

class StorageEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<Storage> {
  const StorageEc2QuerySerializer() : super('Storage');

  @override
  Iterable<Type> get types => const [
        Storage,
        _$Storage,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Storage deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StorageBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'S3':
          if (value != null) {
            result.s3.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.S3Storage),
            ) as _i2.S3Storage));
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
    final payload = (object as Storage);
    final result = <Object?>[
      const _i3.XmlElementName(
        'StorageResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.s3 != null) {
      result
        ..add(const _i3.XmlElementName('S3'))
        ..add(serializers.serialize(
          payload.s3!,
          specifiedType: const FullType(_i2.S3Storage),
        ));
    }
    return result;
  }
}
