// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_subnet_cidr_reservations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'get_subnet_cidr_reservations_request.g.dart';

abstract class GetSubnetCidrReservationsRequest
    with
        _i1.HttpInput<GetSubnetCidrReservationsRequest>,
        _i2.AWSEquatable<GetSubnetCidrReservationsRequest>
    implements
        Built<GetSubnetCidrReservationsRequest,
            GetSubnetCidrReservationsRequestBuilder> {
  factory GetSubnetCidrReservationsRequest({
    List<_i3.Filter>? filters,
    required String subnetId,
    bool? dryRun,
    String? nextToken,
    int? maxResults,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$GetSubnetCidrReservationsRequest._(
      filters: filters == null ? null : _i4.BuiltList(filters),
      subnetId: subnetId,
      dryRun: dryRun,
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  factory GetSubnetCidrReservationsRequest.build(
          [void Function(GetSubnetCidrReservationsRequestBuilder) updates]) =
      _$GetSubnetCidrReservationsRequest;

  const GetSubnetCidrReservationsRequest._();

  factory GetSubnetCidrReservationsRequest.fromRequest(
    GetSubnetCidrReservationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetSubnetCidrReservationsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetSubnetCidrReservationsRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// One or more filters.
  ///
  /// *   `reservationType` \- The type of reservation (`prefix` | `explicit`).
  ///
  /// *   `subnet-id` \- The ID of the subnet.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The ID of the subnet.
  String get subnetId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The token for the next page of results.
  String? get nextToken;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;
  @override
  GetSubnetCidrReservationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        subnetId,
        dryRun,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetSubnetCidrReservationsRequest');
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    return helper.toString();
  }
}

class GetSubnetCidrReservationsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<GetSubnetCidrReservationsRequest> {
  const GetSubnetCidrReservationsRequestEc2QuerySerializer()
      : super('GetSubnetCidrReservationsRequest');

  @override
  Iterable<Type> get types => const [
        GetSubnetCidrReservationsRequest,
        _$GetSubnetCidrReservationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetSubnetCidrReservationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSubnetCidrReservationsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Filter':
          if (value != null) {
            result.filters.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'Filter',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Filter)],
              ),
            ) as _i4.BuiltList<_i3.Filter>));
          }
          break;
        case 'SubnetId':
          result.subnetId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as GetSubnetCidrReservationsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetSubnetCidrReservationsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.filters != null) {
      result
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.filters!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Filter)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('SubnetId'))
      ..add(serializers.serialize(
        payload.subnetId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        payload.maxResults,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
