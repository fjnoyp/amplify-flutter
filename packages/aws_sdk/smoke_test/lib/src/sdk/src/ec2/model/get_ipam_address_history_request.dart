// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_ipam_address_history_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_ipam_address_history_request.g.dart';

abstract class GetIpamAddressHistoryRequest
    with
        _i1.HttpInput<GetIpamAddressHistoryRequest>,
        _i2.AWSEquatable<GetIpamAddressHistoryRequest>
    implements
        Built<GetIpamAddressHistoryRequest,
            GetIpamAddressHistoryRequestBuilder> {
  factory GetIpamAddressHistoryRequest({
    bool? dryRun,
    required String cidr,
    required String ipamScopeId,
    String? vpcId,
    DateTime? startTime,
    DateTime? endTime,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$GetIpamAddressHistoryRequest._(
      dryRun: dryRun,
      cidr: cidr,
      ipamScopeId: ipamScopeId,
      vpcId: vpcId,
      startTime: startTime,
      endTime: endTime,
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory GetIpamAddressHistoryRequest.build(
          [void Function(GetIpamAddressHistoryRequestBuilder) updates]) =
      _$GetIpamAddressHistoryRequest;

  const GetIpamAddressHistoryRequest._();

  factory GetIpamAddressHistoryRequest.fromRequest(
    GetIpamAddressHistoryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetIpamAddressHistoryRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetIpamAddressHistoryRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The CIDR you want the history of. The CIDR can be an IPv4 or IPv6 IP address range. If you enter a /16 IPv4 CIDR, you will get records that match it exactly. You will not get records for any subnets within the /16 CIDR.
  String get cidr;

  /// The ID of the IPAM scope that the CIDR is in.
  String get ipamScopeId;

  /// The ID of the VPC you want your history records filtered by.
  String? get vpcId;

  /// The start of the time period for which you are looking for history. If you omit this option, it will default to the value of EndTime.
  DateTime? get startTime;

  /// The end of the time period for which you are looking for history. If you omit this option, it will default to the current time.
  DateTime? get endTime;

  /// The maximum number of historical results you would like returned per page. Defaults to 100.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;
  @override
  GetIpamAddressHistoryRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        cidr,
        ipamScopeId,
        vpcId,
        startTime,
        endTime,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetIpamAddressHistoryRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'cidr',
      cidr,
    );
    helper.add(
      'ipamScopeId',
      ipamScopeId,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'startTime',
      startTime,
    );
    helper.add(
      'endTime',
      endTime,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetIpamAddressHistoryRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<GetIpamAddressHistoryRequest> {
  const GetIpamAddressHistoryRequestEc2QuerySerializer()
      : super('GetIpamAddressHistoryRequest');

  @override
  Iterable<Type> get types => const [
        GetIpamAddressHistoryRequest,
        _$GetIpamAddressHistoryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetIpamAddressHistoryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIpamAddressHistoryRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'Cidr':
          result.cidr = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'IpamScopeId':
          result.ipamScopeId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'VpcId':
          if (value != null) {
            result.vpcId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'StartTime':
          if (value != null) {
            result.startTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'EndTime':
          if (value != null) {
            result.endTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as GetIpamAddressHistoryRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetIpamAddressHistoryRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('Cidr'))
      ..add(serializers.serialize(
        payload.cidr,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('IpamScopeId'))
      ..add(serializers.serialize(
        payload.ipamScopeId,
        specifiedType: const FullType(String),
      ));
    if (payload.vpcId != null) {
      result
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          payload.vpcId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.startTime != null) {
      result
        ..add(const _i1.XmlElementName('StartTime'))
        ..add(serializers.serialize(
          payload.startTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.endTime != null) {
      result
        ..add(const _i1.XmlElementName('EndTime'))
        ..add(serializers.serialize(
          payload.endTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    result
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        payload.maxResults,
        specifiedType: const FullType(int),
      ));
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
