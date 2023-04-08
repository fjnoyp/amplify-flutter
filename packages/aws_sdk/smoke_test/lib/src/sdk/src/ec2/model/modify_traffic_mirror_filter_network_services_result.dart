// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_traffic_mirror_filter_network_services_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_filter.dart'
    as _i2;

part 'modify_traffic_mirror_filter_network_services_result.g.dart';

abstract class ModifyTrafficMirrorFilterNetworkServicesResult
    with
        _i1.AWSEquatable<ModifyTrafficMirrorFilterNetworkServicesResult>
    implements
        Built<ModifyTrafficMirrorFilterNetworkServicesResult,
            ModifyTrafficMirrorFilterNetworkServicesResultBuilder> {
  factory ModifyTrafficMirrorFilterNetworkServicesResult(
      {_i2.TrafficMirrorFilter? trafficMirrorFilter}) {
    return _$ModifyTrafficMirrorFilterNetworkServicesResult._(
        trafficMirrorFilter: trafficMirrorFilter);
  }

  factory ModifyTrafficMirrorFilterNetworkServicesResult.build(
      [void Function(ModifyTrafficMirrorFilterNetworkServicesResultBuilder)
          updates]) = _$ModifyTrafficMirrorFilterNetworkServicesResult;

  const ModifyTrafficMirrorFilterNetworkServicesResult._();

  /// Constructs a [ModifyTrafficMirrorFilterNetworkServicesResult] from a [payload] and [response].
  factory ModifyTrafficMirrorFilterNetworkServicesResult.fromResponse(
    ModifyTrafficMirrorFilterNetworkServicesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ModifyTrafficMirrorFilterNetworkServicesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyTrafficMirrorFilterNetworkServicesResultBuilder b) {}

  /// The Traffic Mirror filter that the network service is associated with.
  _i2.TrafficMirrorFilter? get trafficMirrorFilter;
  @override
  List<Object?> get props => [trafficMirrorFilter];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ModifyTrafficMirrorFilterNetworkServicesResult');
    helper.add(
      'trafficMirrorFilter',
      trafficMirrorFilter,
    );
    return helper.toString();
  }
}

class ModifyTrafficMirrorFilterNetworkServicesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        ModifyTrafficMirrorFilterNetworkServicesResult> {
  const ModifyTrafficMirrorFilterNetworkServicesResultEc2QuerySerializer()
      : super('ModifyTrafficMirrorFilterNetworkServicesResult');

  @override
  Iterable<Type> get types => const [
        ModifyTrafficMirrorFilterNetworkServicesResult,
        _$ModifyTrafficMirrorFilterNetworkServicesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyTrafficMirrorFilterNetworkServicesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyTrafficMirrorFilterNetworkServicesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'trafficMirrorFilter':
          if (value != null) {
            result.trafficMirrorFilter.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TrafficMirrorFilter),
            ) as _i2.TrafficMirrorFilter));
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
    final payload = (object as ModifyTrafficMirrorFilterNetworkServicesResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ModifyTrafficMirrorFilterNetworkServicesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.trafficMirrorFilter != null) {
      result
        ..add(const _i3.XmlElementName('TrafficMirrorFilter'))
        ..add(serializers.serialize(
          payload.trafficMirrorFilter!,
          specifiedType: const FullType(_i2.TrafficMirrorFilter),
        ));
    }
    return result;
  }
}
