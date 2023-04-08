// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_network_insights_path_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/protocol.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i4;

part 'create_network_insights_path_request.g.dart';

abstract class CreateNetworkInsightsPathRequest
    with
        _i1.HttpInput<CreateNetworkInsightsPathRequest>,
        _i2.AWSEquatable<CreateNetworkInsightsPathRequest>
    implements
        Built<CreateNetworkInsightsPathRequest,
            CreateNetworkInsightsPathRequestBuilder> {
  factory CreateNetworkInsightsPathRequest({
    String? sourceIp,
    String? destinationIp,
    required String source,
    required String destination,
    required _i3.Protocol protocol,
    int? destinationPort,
    List<_i4.TagSpecification>? tagSpecifications,
    bool? dryRun,
    String? clientToken,
  }) {
    destinationPort ??= 0;
    dryRun ??= false;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientToken ??= _i2.uuid(secure: true);
    }
    return _$CreateNetworkInsightsPathRequest._(
      sourceIp: sourceIp,
      destinationIp: destinationIp,
      source: source,
      destination: destination,
      protocol: protocol,
      destinationPort: destinationPort,
      tagSpecifications:
          tagSpecifications == null ? null : _i5.BuiltList(tagSpecifications),
      dryRun: dryRun,
      clientToken: clientToken,
    );
  }

  factory CreateNetworkInsightsPathRequest.build(
          [void Function(CreateNetworkInsightsPathRequestBuilder) updates]) =
      _$CreateNetworkInsightsPathRequest;

  const CreateNetworkInsightsPathRequest._();

  factory CreateNetworkInsightsPathRequest.fromRequest(
    CreateNetworkInsightsPathRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateNetworkInsightsPathRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateNetworkInsightsPathRequestBuilder b) {
    b.destinationPort = 0;
    b.dryRun = false;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientToken = _i2.uuid(secure: true);
    }
  }

  /// The IP address of the Amazon Web Services resource that is the source of the path.
  String? get sourceIp;

  /// The IP address of the Amazon Web Services resource that is the destination of the path.
  String? get destinationIp;

  /// The Amazon Web Services resource that is the source of the path.
  String get source;

  /// The Amazon Web Services resource that is the destination of the path.
  String get destination;

  /// The protocol.
  _i3.Protocol get protocol;

  /// The destination port.
  int get destinationPort;

  /// The tags to add to the path.
  _i5.BuiltList<_i4.TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String get clientToken;
  @override
  CreateNetworkInsightsPathRequest getPayload() => this;
  @override
  List<Object?> get props => [
        sourceIp,
        destinationIp,
        source,
        destination,
        protocol,
        destinationPort,
        tagSpecifications,
        dryRun,
        clientToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateNetworkInsightsPathRequest');
    helper.add(
      'sourceIp',
      sourceIp,
    );
    helper.add(
      'destinationIp',
      destinationIp,
    );
    helper.add(
      'source',
      source,
    );
    helper.add(
      'destination',
      destination,
    );
    helper.add(
      'protocol',
      protocol,
    );
    helper.add(
      'destinationPort',
      destinationPort,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    return helper.toString();
  }
}

class CreateNetworkInsightsPathRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateNetworkInsightsPathRequest> {
  const CreateNetworkInsightsPathRequestEc2QuerySerializer()
      : super('CreateNetworkInsightsPathRequest');

  @override
  Iterable<Type> get types => const [
        CreateNetworkInsightsPathRequest,
        _$CreateNetworkInsightsPathRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNetworkInsightsPathRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNetworkInsightsPathRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'SourceIp':
          if (value != null) {
            result.sourceIp = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DestinationIp':
          if (value != null) {
            result.destinationIp = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Source':
          result.source = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Destination':
          result.destination = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Protocol':
          result.protocol = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.Protocol),
          ) as _i3.Protocol);
          break;
        case 'DestinationPort':
          result.destinationPort = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as CreateNetworkInsightsPathRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateNetworkInsightsPathRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.sourceIp != null) {
      result
        ..add(const _i1.XmlElementName('SourceIp'))
        ..add(serializers.serialize(
          payload.sourceIp!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.destinationIp != null) {
      result
        ..add(const _i1.XmlElementName('DestinationIp'))
        ..add(serializers.serialize(
          payload.destinationIp!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('Source'))
      ..add(serializers.serialize(
        payload.source,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('Destination'))
      ..add(serializers.serialize(
        payload.destination,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('Protocol'))
      ..add(serializers.serialize(
        payload.protocol,
        specifiedType: const FullType.nullable(_i3.Protocol),
      ));
    result
      ..add(const _i1.XmlElementName('DestinationPort'))
      ..add(serializers.serialize(
        payload.destinationPort,
        specifiedType: const FullType(int),
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
    result
      ..add(const _i1.XmlElementName('ClientToken'))
      ..add(serializers.serialize(
        payload.clientToken,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
