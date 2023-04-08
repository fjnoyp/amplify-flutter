// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_dhcp_options_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/dhcp_options.dart' as _i2;

part 'create_dhcp_options_result.g.dart';

abstract class CreateDhcpOptionsResult
    with _i1.AWSEquatable<CreateDhcpOptionsResult>
    implements Built<CreateDhcpOptionsResult, CreateDhcpOptionsResultBuilder> {
  factory CreateDhcpOptionsResult({_i2.DhcpOptions? dhcpOptions}) {
    return _$CreateDhcpOptionsResult._(dhcpOptions: dhcpOptions);
  }

  factory CreateDhcpOptionsResult.build(
          [void Function(CreateDhcpOptionsResultBuilder) updates]) =
      _$CreateDhcpOptionsResult;

  const CreateDhcpOptionsResult._();

  /// Constructs a [CreateDhcpOptionsResult] from a [payload] and [response].
  factory CreateDhcpOptionsResult.fromResponse(
    CreateDhcpOptionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateDhcpOptionsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateDhcpOptionsResultBuilder b) {}

  /// A set of DHCP options.
  _i2.DhcpOptions? get dhcpOptions;
  @override
  List<Object?> get props => [dhcpOptions];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateDhcpOptionsResult');
    helper.add(
      'dhcpOptions',
      dhcpOptions,
    );
    return helper.toString();
  }
}

class CreateDhcpOptionsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateDhcpOptionsResult> {
  const CreateDhcpOptionsResultEc2QuerySerializer()
      : super('CreateDhcpOptionsResult');

  @override
  Iterable<Type> get types => const [
        CreateDhcpOptionsResult,
        _$CreateDhcpOptionsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateDhcpOptionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateDhcpOptionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'dhcpOptions':
          if (value != null) {
            result.dhcpOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.DhcpOptions),
            ) as _i2.DhcpOptions));
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
    final payload = (object as CreateDhcpOptionsResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateDhcpOptionsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.dhcpOptions != null) {
      result
        ..add(const _i3.XmlElementName('DhcpOptions'))
        ..add(serializers.serialize(
          payload.dhcpOptions!,
          specifiedType: const FullType(_i2.DhcpOptions),
        ));
    }
    return result;
  }
}
