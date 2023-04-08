// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_dhcp_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/new_dhcp_configuration.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i4;

part 'create_dhcp_options_request.g.dart';

abstract class CreateDhcpOptionsRequest
    with
        _i1.HttpInput<CreateDhcpOptionsRequest>,
        _i2.AWSEquatable<CreateDhcpOptionsRequest>
    implements
        Built<CreateDhcpOptionsRequest, CreateDhcpOptionsRequestBuilder> {
  factory CreateDhcpOptionsRequest({
    required List<_i3.NewDhcpConfiguration> dhcpConfigurations,
    List<_i4.TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateDhcpOptionsRequest._(
      dhcpConfigurations: _i5.BuiltList(dhcpConfigurations),
      tagSpecifications:
          tagSpecifications == null ? null : _i5.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CreateDhcpOptionsRequest.build(
          [void Function(CreateDhcpOptionsRequestBuilder) updates]) =
      _$CreateDhcpOptionsRequest;

  const CreateDhcpOptionsRequest._();

  factory CreateDhcpOptionsRequest.fromRequest(
    CreateDhcpOptionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateDhcpOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateDhcpOptionsRequestBuilder b) {
    b.dryRun = false;
  }

  /// A DHCP configuration option.
  _i5.BuiltList<_i3.NewDhcpConfiguration> get dhcpConfigurations;

  /// The tags to assign to the DHCP option.
  _i5.BuiltList<_i4.TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateDhcpOptionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dhcpConfigurations,
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateDhcpOptionsRequest');
    helper.add(
      'dhcpConfigurations',
      dhcpConfigurations,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class CreateDhcpOptionsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateDhcpOptionsRequest> {
  const CreateDhcpOptionsRequestEc2QuerySerializer()
      : super('CreateDhcpOptionsRequest');

  @override
  Iterable<Type> get types => const [
        CreateDhcpOptionsRequest,
        _$CreateDhcpOptionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateDhcpOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateDhcpOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'dhcpConfiguration':
          result.dhcpConfigurations.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i3.NewDhcpConfiguration)],
            ),
          ) as _i5.BuiltList<_i3.NewDhcpConfiguration>));
          break;
        case 'TagSpecification':
          if (value != null) {
            result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.TagSpecification)],
              ),
            ) as _i5.BuiltList<_i4.TagSpecification>));
          }
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
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
    final payload = (object as CreateDhcpOptionsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateDhcpOptionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DhcpConfiguration'))
      ..add(const _i1.XmlBuiltListSerializer(
        memberName: 'item',
        indexer: _i1.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        payload.dhcpConfigurations,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(_i3.NewDhcpConfiguration)],
        ),
      ));
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.TagSpecification)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
