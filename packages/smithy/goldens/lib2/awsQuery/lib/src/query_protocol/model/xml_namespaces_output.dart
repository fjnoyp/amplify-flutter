// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library aws_query_v2.query_protocol.model.xml_namespaces_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_query_v2/src/query_protocol/model/xml_namespace_nested.dart'
    as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'xml_namespaces_output.g.dart';

abstract class XmlNamespacesOutput
    with _i1.AWSEquatable<XmlNamespacesOutput>
    implements Built<XmlNamespacesOutput, XmlNamespacesOutputBuilder> {
  factory XmlNamespacesOutput({_i2.XmlNamespaceNested? nested}) {
    return _$XmlNamespacesOutput._(nested: nested);
  }

  factory XmlNamespacesOutput.build(
          [void Function(XmlNamespacesOutputBuilder) updates]) =
      _$XmlNamespacesOutput;

  const XmlNamespacesOutput._();

  /// Constructs a [XmlNamespacesOutput] from a [payload] and [response].
  factory XmlNamespacesOutput.fromResponse(
    XmlNamespacesOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    XmlNamespacesOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlNamespacesOutputBuilder b) {}
  _i2.XmlNamespaceNested? get nested;
  @override
  List<Object?> get props => [nested];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlNamespacesOutput');
    helper.add(
      'nested',
      nested,
    );
    return helper.toString();
  }
}

class XmlNamespacesOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<XmlNamespacesOutput> {
  const XmlNamespacesOutputAwsQuerySerializer() : super('XmlNamespacesOutput');

  @override
  Iterable<Type> get types => const [
        XmlNamespacesOutput,
        _$XmlNamespacesOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  XmlNamespacesOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlNamespacesOutputBuilder();
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
        case 'nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.XmlNamespaceNested),
            ) as _i2.XmlNamespaceNested));
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
    final payload = (object as XmlNamespacesOutput);
    final result = <Object?>[
      const _i3.XmlElementName(
        'XmlNamespacesOutputResponse',
        _i3.XmlNamespace('http://foo.com'),
      )
    ];
    if (payload.nested != null) {
      result
        ..add(const _i3.XmlElementName('nested'))
        ..add(serializers.serialize(
          payload.nested!,
          specifiedType: const FullType(_i2.XmlNamespaceNested),
        ));
    }
    return result;
  }
}
