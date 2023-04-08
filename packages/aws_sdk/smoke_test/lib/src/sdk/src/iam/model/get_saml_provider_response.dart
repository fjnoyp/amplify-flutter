// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.get_saml_provider_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i2;

part 'get_saml_provider_response.g.dart';

/// Contains the response to a successful GetSAMLProvider request.
abstract class GetSamlProviderResponse
    with _i1.AWSEquatable<GetSamlProviderResponse>
    implements Built<GetSamlProviderResponse, GetSamlProviderResponseBuilder> {
  /// Contains the response to a successful GetSAMLProvider request.
  factory GetSamlProviderResponse({
    String? samlMetadataDocument,
    DateTime? createDate,
    DateTime? validUntil,
    List<_i2.Tag>? tags,
  }) {
    return _$GetSamlProviderResponse._(
      samlMetadataDocument: samlMetadataDocument,
      createDate: createDate,
      validUntil: validUntil,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  /// Contains the response to a successful GetSAMLProvider request.
  factory GetSamlProviderResponse.build(
          [void Function(GetSamlProviderResponseBuilder) updates]) =
      _$GetSamlProviderResponse;

  const GetSamlProviderResponse._();

  /// Constructs a [GetSamlProviderResponse] from a [payload] and [response].
  factory GetSamlProviderResponse.fromResponse(
    GetSamlProviderResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetSamlProviderResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetSamlProviderResponseBuilder b) {}

  /// The XML metadata document that includes information about an identity provider.
  String? get samlMetadataDocument;

  /// The date and time when the SAML provider was created.
  DateTime? get createDate;

  /// The expiration date and time for the SAML provider.
  DateTime? get validUntil;

  /// A list of tags that are attached to the specified IAM SAML provider. The returned list of tags is sorted by tag key. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i3.BuiltList<_i2.Tag>? get tags;
  @override
  List<Object?> get props => [
        samlMetadataDocument,
        createDate,
        validUntil,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetSamlProviderResponse');
    helper.add(
      'samlMetadataDocument',
      samlMetadataDocument,
    );
    helper.add(
      'createDate',
      createDate,
    );
    helper.add(
      'validUntil',
      validUntil,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class GetSamlProviderResponseAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<GetSamlProviderResponse> {
  const GetSamlProviderResponseAwsQuerySerializer()
      : super('GetSamlProviderResponse');

  @override
  Iterable<Type> get types => const [
        GetSamlProviderResponse,
        _$GetSamlProviderResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetSamlProviderResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSamlProviderResponseBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'SAMLMetadataDocument':
          if (value != null) {
            result.samlMetadataDocument = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'CreateDate':
          if (value != null) {
            result.createDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'ValidUntil':
          if (value != null) {
            result.validUntil = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'Tags':
          if (value != null) {
            result.tags.replace((const _i4.XmlBuiltListSerializer(
                    indexer: _i4.XmlIndexer.awsQueryList)
                .deserialize(
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
    final payload = (object as GetSamlProviderResponse);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GetSamlProviderResponseResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.samlMetadataDocument != null) {
      result
        ..add(const _i4.XmlElementName('SAMLMetadataDocument'))
        ..add(serializers.serialize(
          payload.samlMetadataDocument!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.createDate != null) {
      result
        ..add(const _i4.XmlElementName('CreateDate'))
        ..add(serializers.serialize(
          payload.createDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.validUntil != null) {
      result
        ..add(const _i4.XmlElementName('ValidUntil'))
        ..add(serializers.serialize(
          payload.validUntil!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i4.XmlElementName('Tags'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
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
