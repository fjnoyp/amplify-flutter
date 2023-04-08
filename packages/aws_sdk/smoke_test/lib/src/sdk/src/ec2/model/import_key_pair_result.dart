// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.import_key_pair_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i2;

part 'import_key_pair_result.g.dart';

abstract class ImportKeyPairResult
    with _i1.AWSEquatable<ImportKeyPairResult>
    implements Built<ImportKeyPairResult, ImportKeyPairResultBuilder> {
  factory ImportKeyPairResult({
    String? keyFingerprint,
    String? keyName,
    String? keyPairId,
    List<_i2.Tag>? tags,
  }) {
    return _$ImportKeyPairResult._(
      keyFingerprint: keyFingerprint,
      keyName: keyName,
      keyPairId: keyPairId,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  factory ImportKeyPairResult.build(
          [void Function(ImportKeyPairResultBuilder) updates]) =
      _$ImportKeyPairResult;

  const ImportKeyPairResult._();

  /// Constructs a [ImportKeyPairResult] from a [payload] and [response].
  factory ImportKeyPairResult.fromResponse(
    ImportKeyPairResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ImportKeyPairResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportKeyPairResultBuilder b) {}

  /// *   For RSA key pairs, the key fingerprint is the MD5 public key fingerprint as specified in section 4 of RFC 4716.
  ///
  /// *   For ED25519 key pairs, the key fingerprint is the base64-encoded SHA-256 digest, which is the default for OpenSSH, starting with [OpenSSH 6.8](http://www.openssh.com/txt/release-6.8).
  String? get keyFingerprint;

  /// The key pair name that you provided.
  String? get keyName;

  /// The ID of the resulting key pair.
  String? get keyPairId;

  /// The tags applied to the imported key pair.
  _i3.BuiltList<_i2.Tag>? get tags;
  @override
  List<Object?> get props => [
        keyFingerprint,
        keyName,
        keyPairId,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportKeyPairResult');
    helper.add(
      'keyFingerprint',
      keyFingerprint,
    );
    helper.add(
      'keyName',
      keyName,
    );
    helper.add(
      'keyPairId',
      keyPairId,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class ImportKeyPairResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<ImportKeyPairResult> {
  const ImportKeyPairResultEc2QuerySerializer() : super('ImportKeyPairResult');

  @override
  Iterable<Type> get types => const [
        ImportKeyPairResult,
        _$ImportKeyPairResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportKeyPairResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportKeyPairResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
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
        case 'keyPairId':
          if (value != null) {
            result.keyPairId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Tag)],
              ),
            ) as _i3.BuiltList<_i2.Tag>));
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
    final payload = (object as ImportKeyPairResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ImportKeyPairResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.keyFingerprint != null) {
      result
        ..add(const _i4.XmlElementName('KeyFingerprint'))
        ..add(serializers.serialize(
          payload.keyFingerprint!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.keyName != null) {
      result
        ..add(const _i4.XmlElementName('KeyName'))
        ..add(serializers.serialize(
          payload.keyName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.keyPairId != null) {
      result
        ..add(const _i4.XmlElementName('KeyPairId'))
        ..add(serializers.serialize(
          payload.keyPairId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i4.XmlElementName('TagSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Tag)],
          ),
        ));
    }
    return result;
  }
}
