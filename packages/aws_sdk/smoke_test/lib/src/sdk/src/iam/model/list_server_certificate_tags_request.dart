// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.list_server_certificate_tags_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_server_certificate_tags_request.g.dart';

abstract class ListServerCertificateTagsRequest
    with
        _i1.HttpInput<ListServerCertificateTagsRequest>,
        _i2.AWSEquatable<ListServerCertificateTagsRequest>
    implements
        Built<ListServerCertificateTagsRequest,
            ListServerCertificateTagsRequestBuilder> {
  factory ListServerCertificateTagsRequest({
    required String serverCertificateName,
    String? marker,
    int? maxItems,
  }) {
    return _$ListServerCertificateTagsRequest._(
      serverCertificateName: serverCertificateName,
      marker: marker,
      maxItems: maxItems,
    );
  }

  factory ListServerCertificateTagsRequest.build(
          [void Function(ListServerCertificateTagsRequestBuilder) updates]) =
      _$ListServerCertificateTagsRequest;

  const ListServerCertificateTagsRequest._();

  factory ListServerCertificateTagsRequest.fromRequest(
    ListServerCertificateTagsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListServerCertificateTagsRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListServerCertificateTagsRequestBuilder b) {}

  /// The name of the IAM server certificate whose tags you want to see.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get serverCertificateName;

  /// Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.
  String? get marker;

  /// Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.
  ///
  /// If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true`, and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.
  int? get maxItems;
  @override
  ListServerCertificateTagsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        serverCertificateName,
        marker,
        maxItems,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListServerCertificateTagsRequest');
    helper.add(
      'serverCertificateName',
      serverCertificateName,
    );
    helper.add(
      'marker',
      marker,
    );
    helper.add(
      'maxItems',
      maxItems,
    );
    return helper.toString();
  }
}

class ListServerCertificateTagsRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ListServerCertificateTagsRequest> {
  const ListServerCertificateTagsRequestAwsQuerySerializer()
      : super('ListServerCertificateTagsRequest');

  @override
  Iterable<Type> get types => const [
        ListServerCertificateTagsRequest,
        _$ListServerCertificateTagsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListServerCertificateTagsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListServerCertificateTagsRequestBuilder();
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
        case 'ServerCertificateName':
          result.serverCertificateName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Marker':
          if (value != null) {
            result.marker = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'MaxItems':
          if (value != null) {
            result.maxItems = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as ListServerCertificateTagsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ListServerCertificateTagsRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('ServerCertificateName'))
      ..add(serializers.serialize(
        payload.serverCertificateName,
        specifiedType: const FullType(String),
      ));
    if (payload.marker != null) {
      result
        ..add(const _i1.XmlElementName('Marker'))
        ..add(serializers.serialize(
          payload.marker!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.maxItems != null) {
      result
        ..add(const _i1.XmlElementName('MaxItems'))
        ..add(serializers.serialize(
          payload.maxItems!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result;
  }
}
