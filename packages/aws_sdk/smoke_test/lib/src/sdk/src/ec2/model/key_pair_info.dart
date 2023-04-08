// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.key_pair_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/key_type.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'key_pair_info.g.dart';

/// Describes a key pair.
abstract class KeyPairInfo
    with _i1.AWSEquatable<KeyPairInfo>
    implements Built<KeyPairInfo, KeyPairInfoBuilder> {
  /// Describes a key pair.
  factory KeyPairInfo({
    String? keyPairId,
    String? keyFingerprint,
    String? keyName,
    _i2.KeyType? keyType,
    List<_i3.Tag>? tags,
    String? publicKey,
    DateTime? createTime,
  }) {
    return _$KeyPairInfo._(
      keyPairId: keyPairId,
      keyFingerprint: keyFingerprint,
      keyName: keyName,
      keyType: keyType,
      tags: tags == null ? null : _i4.BuiltList(tags),
      publicKey: publicKey,
      createTime: createTime,
    );
  }

  /// Describes a key pair.
  factory KeyPairInfo.build([void Function(KeyPairInfoBuilder) updates]) =
      _$KeyPairInfo;

  const KeyPairInfo._();

  static const List<_i5.SmithySerializer> serializers = [
    KeyPairInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(KeyPairInfoBuilder b) {}

  /// The ID of the key pair.
  String? get keyPairId;

  /// If you used CreateKeyPair to create the key pair:
  ///
  /// *   For RSA key pairs, the key fingerprint is the SHA-1 digest of the DER encoded private key.
  ///
  /// *   For ED25519 key pairs, the key fingerprint is the base64-encoded SHA-256 digest, which is the default for OpenSSH, starting with [OpenSSH 6.8](http://www.openssh.com/txt/release-6.8).
  ///
  ///
  /// If you used ImportKeyPair to provide Amazon Web Services the public key:
  ///
  /// *   For RSA key pairs, the key fingerprint is the MD5 public key fingerprint as specified in section 4 of RFC4716.
  ///
  /// *   For ED25519 key pairs, the key fingerprint is the base64-encoded SHA-256 digest, which is the default for OpenSSH, starting with [OpenSSH 6.8](http://www.openssh.com/txt/release-6.8).
  String? get keyFingerprint;

  /// The name of the key pair.
  String? get keyName;

  /// The type of key pair.
  _i2.KeyType? get keyType;

  /// Any tags applied to the key pair.
  _i4.BuiltList<_i3.Tag>? get tags;

  /// The public key material.
  String? get publicKey;

  /// If you used Amazon EC2 to create the key pair, this is the date and time when the key was created, in [ISO 8601 date-time format](https://www.iso.org/iso-8601-date-and-time-format.html), in the UTC time zone.
  ///
  /// If you imported an existing key pair to Amazon EC2, this is the date and time the key was imported, in [ISO 8601 date-time format](https://www.iso.org/iso-8601-date-and-time-format.html), in the UTC time zone.
  DateTime? get createTime;
  @override
  List<Object?> get props => [
        keyPairId,
        keyFingerprint,
        keyName,
        keyType,
        tags,
        publicKey,
        createTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('KeyPairInfo');
    helper.add(
      'keyPairId',
      keyPairId,
    );
    helper.add(
      'keyFingerprint',
      keyFingerprint,
    );
    helper.add(
      'keyName',
      keyName,
    );
    helper.add(
      'keyType',
      keyType,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'publicKey',
      publicKey,
    );
    helper.add(
      'createTime',
      createTime,
    );
    return helper.toString();
  }
}

class KeyPairInfoEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<KeyPairInfo> {
  const KeyPairInfoEc2QuerySerializer() : super('KeyPairInfo');

  @override
  Iterable<Type> get types => const [
        KeyPairInfo,
        _$KeyPairInfo,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  KeyPairInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeyPairInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'keyPairId':
          if (value != null) {
            result.keyPairId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'keyFingerprint':
          if (value != null) {
            result.keyFingerprint = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'keyName':
          if (value != null) {
            result.keyName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'keyType':
          if (value != null) {
            result.keyType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.KeyType),
            ) as _i2.KeyType);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Tag)],
              ),
            ) as _i4.BuiltList<_i3.Tag>));
          }
          break;
        case 'publicKey':
          if (value != null) {
            result.publicKey = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'createTime':
          if (value != null) {
            result.createTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
    final payload = (object as KeyPairInfo);
    final result = <Object?>[
      const _i5.XmlElementName(
        'KeyPairInfoResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.keyPairId != null) {
      result
        ..add(const _i5.XmlElementName('KeyPairId'))
        ..add(serializers.serialize(
          payload.keyPairId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.keyFingerprint != null) {
      result
        ..add(const _i5.XmlElementName('KeyFingerprint'))
        ..add(serializers.serialize(
          payload.keyFingerprint!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.keyName != null) {
      result
        ..add(const _i5.XmlElementName('KeyName'))
        ..add(serializers.serialize(
          payload.keyName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.keyType != null) {
      result
        ..add(const _i5.XmlElementName('KeyType'))
        ..add(serializers.serialize(
          payload.keyType!,
          specifiedType: const FullType.nullable(_i2.KeyType),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i5.XmlElementName('TagSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    if (payload.publicKey != null) {
      result
        ..add(const _i5.XmlElementName('PublicKey'))
        ..add(serializers.serialize(
          payload.publicKey!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.createTime != null) {
      result
        ..add(const _i5.XmlElementName('CreateTime'))
        ..add(serializers.serialize(
          payload.createTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result;
  }
}
