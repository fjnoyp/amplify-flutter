// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.path_component; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i10;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/additional_detail.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_acl_rule.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_component.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_packet_header.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_route_table_route.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_security_group_rule.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/explanation.dart' as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_route.dart'
    as _i8;

part 'path_component.g.dart';

/// Describes a path component.
abstract class PathComponent
    with _i1.AWSEquatable<PathComponent>
    implements Built<PathComponent, PathComponentBuilder> {
  /// Describes a path component.
  factory PathComponent({
    int? sequenceNumber,
    _i2.AnalysisAclRule? aclRule,
    _i3.AnalysisComponent? attachedTo,
    _i3.AnalysisComponent? component,
    _i3.AnalysisComponent? destinationVpc,
    _i4.AnalysisPacketHeader? outboundHeader,
    _i4.AnalysisPacketHeader? inboundHeader,
    _i5.AnalysisRouteTableRoute? routeTableRoute,
    _i6.AnalysisSecurityGroupRule? securityGroupRule,
    _i3.AnalysisComponent? sourceVpc,
    _i3.AnalysisComponent? subnet,
    _i3.AnalysisComponent? vpc,
    List<_i7.AdditionalDetail>? additionalDetails,
    _i3.AnalysisComponent? transitGateway,
    _i8.TransitGatewayRouteTableRoute? transitGatewayRouteTableRoute,
    List<_i9.Explanation>? explanations,
    _i3.AnalysisComponent? elasticLoadBalancerListener,
  }) {
    sequenceNumber ??= 0;
    return _$PathComponent._(
      sequenceNumber: sequenceNumber,
      aclRule: aclRule,
      attachedTo: attachedTo,
      component: component,
      destinationVpc: destinationVpc,
      outboundHeader: outboundHeader,
      inboundHeader: inboundHeader,
      routeTableRoute: routeTableRoute,
      securityGroupRule: securityGroupRule,
      sourceVpc: sourceVpc,
      subnet: subnet,
      vpc: vpc,
      additionalDetails:
          additionalDetails == null ? null : _i10.BuiltList(additionalDetails),
      transitGateway: transitGateway,
      transitGatewayRouteTableRoute: transitGatewayRouteTableRoute,
      explanations: explanations == null ? null : _i10.BuiltList(explanations),
      elasticLoadBalancerListener: elasticLoadBalancerListener,
    );
  }

  /// Describes a path component.
  factory PathComponent.build([void Function(PathComponentBuilder) updates]) =
      _$PathComponent;

  const PathComponent._();

  static const List<_i11.SmithySerializer> serializers = [
    PathComponentEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PathComponentBuilder b) {
    b.sequenceNumber = 0;
  }

  /// The sequence number.
  int get sequenceNumber;

  /// The network ACL rule.
  _i2.AnalysisAclRule? get aclRule;

  /// The resource to which the path component is attached.
  _i3.AnalysisComponent? get attachedTo;

  /// The component.
  _i3.AnalysisComponent? get component;

  /// The destination VPC.
  _i3.AnalysisComponent? get destinationVpc;

  /// The outbound header.
  _i4.AnalysisPacketHeader? get outboundHeader;

  /// The inbound header.
  _i4.AnalysisPacketHeader? get inboundHeader;

  /// The route table route.
  _i5.AnalysisRouteTableRoute? get routeTableRoute;

  /// The security group rule.
  _i6.AnalysisSecurityGroupRule? get securityGroupRule;

  /// The source VPC.
  _i3.AnalysisComponent? get sourceVpc;

  /// The subnet.
  _i3.AnalysisComponent? get subnet;

  /// The component VPC.
  _i3.AnalysisComponent? get vpc;

  /// The additional details.
  _i10.BuiltList<_i7.AdditionalDetail>? get additionalDetails;

  /// The transit gateway.
  _i3.AnalysisComponent? get transitGateway;

  /// The route in a transit gateway route table.
  _i8.TransitGatewayRouteTableRoute? get transitGatewayRouteTableRoute;

  /// The explanation codes.
  _i10.BuiltList<_i9.Explanation>? get explanations;

  /// The load balancer listener.
  _i3.AnalysisComponent? get elasticLoadBalancerListener;
  @override
  List<Object?> get props => [
        sequenceNumber,
        aclRule,
        attachedTo,
        component,
        destinationVpc,
        outboundHeader,
        inboundHeader,
        routeTableRoute,
        securityGroupRule,
        sourceVpc,
        subnet,
        vpc,
        additionalDetails,
        transitGateway,
        transitGatewayRouteTableRoute,
        explanations,
        elasticLoadBalancerListener,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PathComponent');
    helper.add(
      'sequenceNumber',
      sequenceNumber,
    );
    helper.add(
      'aclRule',
      aclRule,
    );
    helper.add(
      'attachedTo',
      attachedTo,
    );
    helper.add(
      'component',
      component,
    );
    helper.add(
      'destinationVpc',
      destinationVpc,
    );
    helper.add(
      'outboundHeader',
      outboundHeader,
    );
    helper.add(
      'inboundHeader',
      inboundHeader,
    );
    helper.add(
      'routeTableRoute',
      routeTableRoute,
    );
    helper.add(
      'securityGroupRule',
      securityGroupRule,
    );
    helper.add(
      'sourceVpc',
      sourceVpc,
    );
    helper.add(
      'subnet',
      subnet,
    );
    helper.add(
      'vpc',
      vpc,
    );
    helper.add(
      'additionalDetails',
      additionalDetails,
    );
    helper.add(
      'transitGateway',
      transitGateway,
    );
    helper.add(
      'transitGatewayRouteTableRoute',
      transitGatewayRouteTableRoute,
    );
    helper.add(
      'explanations',
      explanations,
    );
    helper.add(
      'elasticLoadBalancerListener',
      elasticLoadBalancerListener,
    );
    return helper.toString();
  }
}

class PathComponentEc2QuerySerializer
    extends _i11.StructuredSmithySerializer<PathComponent> {
  const PathComponentEc2QuerySerializer() : super('PathComponent');

  @override
  Iterable<Type> get types => const [
        PathComponent,
        _$PathComponent,
      ];
  @override
  Iterable<_i11.ShapeId> get supportedProtocols => const [
        _i11.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PathComponent deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PathComponentBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'sequenceNumber':
          result.sequenceNumber = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'aclRule':
          if (value != null) {
            result.aclRule.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisAclRule),
            ) as _i2.AnalysisAclRule));
          }
          break;
        case 'attachedTo':
          if (value != null) {
            result.attachedTo.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AnalysisComponent),
            ) as _i3.AnalysisComponent));
          }
          break;
        case 'component':
          if (value != null) {
            result.component.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AnalysisComponent),
            ) as _i3.AnalysisComponent));
          }
          break;
        case 'destinationVpc':
          if (value != null) {
            result.destinationVpc.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AnalysisComponent),
            ) as _i3.AnalysisComponent));
          }
          break;
        case 'outboundHeader':
          if (value != null) {
            result.outboundHeader.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.AnalysisPacketHeader),
            ) as _i4.AnalysisPacketHeader));
          }
          break;
        case 'inboundHeader':
          if (value != null) {
            result.inboundHeader.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.AnalysisPacketHeader),
            ) as _i4.AnalysisPacketHeader));
          }
          break;
        case 'routeTableRoute':
          if (value != null) {
            result.routeTableRoute.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.AnalysisRouteTableRoute),
            ) as _i5.AnalysisRouteTableRoute));
          }
          break;
        case 'securityGroupRule':
          if (value != null) {
            result.securityGroupRule.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.AnalysisSecurityGroupRule),
            ) as _i6.AnalysisSecurityGroupRule));
          }
          break;
        case 'sourceVpc':
          if (value != null) {
            result.sourceVpc.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AnalysisComponent),
            ) as _i3.AnalysisComponent));
          }
          break;
        case 'subnet':
          if (value != null) {
            result.subnet.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AnalysisComponent),
            ) as _i3.AnalysisComponent));
          }
          break;
        case 'vpc':
          if (value != null) {
            result.vpc.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AnalysisComponent),
            ) as _i3.AnalysisComponent));
          }
          break;
        case 'additionalDetailSet':
          if (value != null) {
            result.additionalDetails.replace((const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i7.AdditionalDetail)],
              ),
            ) as _i10.BuiltList<_i7.AdditionalDetail>));
          }
          break;
        case 'transitGateway':
          if (value != null) {
            result.transitGateway.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AnalysisComponent),
            ) as _i3.AnalysisComponent));
          }
          break;
        case 'transitGatewayRouteTableRoute':
          if (value != null) {
            result.transitGatewayRouteTableRoute
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.TransitGatewayRouteTableRoute),
            ) as _i8.TransitGatewayRouteTableRoute));
          }
          break;
        case 'explanationSet':
          if (value != null) {
            result.explanations.replace((const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i9.Explanation)],
              ),
            ) as _i10.BuiltList<_i9.Explanation>));
          }
          break;
        case 'elasticLoadBalancerListener':
          if (value != null) {
            result.elasticLoadBalancerListener.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AnalysisComponent),
            ) as _i3.AnalysisComponent));
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
    final payload = (object as PathComponent);
    final result = <Object?>[
      const _i11.XmlElementName(
        'PathComponentResponse',
        _i11.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i11.XmlElementName('SequenceNumber'))
      ..add(serializers.serialize(
        payload.sequenceNumber,
        specifiedType: const FullType(int),
      ));
    if (payload.aclRule != null) {
      result
        ..add(const _i11.XmlElementName('AclRule'))
        ..add(serializers.serialize(
          payload.aclRule!,
          specifiedType: const FullType(_i2.AnalysisAclRule),
        ));
    }
    if (payload.attachedTo != null) {
      result
        ..add(const _i11.XmlElementName('AttachedTo'))
        ..add(serializers.serialize(
          payload.attachedTo!,
          specifiedType: const FullType(_i3.AnalysisComponent),
        ));
    }
    if (payload.component != null) {
      result
        ..add(const _i11.XmlElementName('Component'))
        ..add(serializers.serialize(
          payload.component!,
          specifiedType: const FullType(_i3.AnalysisComponent),
        ));
    }
    if (payload.destinationVpc != null) {
      result
        ..add(const _i11.XmlElementName('DestinationVpc'))
        ..add(serializers.serialize(
          payload.destinationVpc!,
          specifiedType: const FullType(_i3.AnalysisComponent),
        ));
    }
    if (payload.outboundHeader != null) {
      result
        ..add(const _i11.XmlElementName('OutboundHeader'))
        ..add(serializers.serialize(
          payload.outboundHeader!,
          specifiedType: const FullType(_i4.AnalysisPacketHeader),
        ));
    }
    if (payload.inboundHeader != null) {
      result
        ..add(const _i11.XmlElementName('InboundHeader'))
        ..add(serializers.serialize(
          payload.inboundHeader!,
          specifiedType: const FullType(_i4.AnalysisPacketHeader),
        ));
    }
    if (payload.routeTableRoute != null) {
      result
        ..add(const _i11.XmlElementName('RouteTableRoute'))
        ..add(serializers.serialize(
          payload.routeTableRoute!,
          specifiedType: const FullType(_i5.AnalysisRouteTableRoute),
        ));
    }
    if (payload.securityGroupRule != null) {
      result
        ..add(const _i11.XmlElementName('SecurityGroupRule'))
        ..add(serializers.serialize(
          payload.securityGroupRule!,
          specifiedType: const FullType(_i6.AnalysisSecurityGroupRule),
        ));
    }
    if (payload.sourceVpc != null) {
      result
        ..add(const _i11.XmlElementName('SourceVpc'))
        ..add(serializers.serialize(
          payload.sourceVpc!,
          specifiedType: const FullType(_i3.AnalysisComponent),
        ));
    }
    if (payload.subnet != null) {
      result
        ..add(const _i11.XmlElementName('Subnet'))
        ..add(serializers.serialize(
          payload.subnet!,
          specifiedType: const FullType(_i3.AnalysisComponent),
        ));
    }
    if (payload.vpc != null) {
      result
        ..add(const _i11.XmlElementName('Vpc'))
        ..add(serializers.serialize(
          payload.vpc!,
          specifiedType: const FullType(_i3.AnalysisComponent),
        ));
    }
    if (payload.additionalDetails != null) {
      result
        ..add(const _i11.XmlElementName('AdditionalDetailSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.additionalDetails!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i7.AdditionalDetail)],
          ),
        ));
    }
    if (payload.transitGateway != null) {
      result
        ..add(const _i11.XmlElementName('TransitGateway'))
        ..add(serializers.serialize(
          payload.transitGateway!,
          specifiedType: const FullType(_i3.AnalysisComponent),
        ));
    }
    if (payload.transitGatewayRouteTableRoute != null) {
      result
        ..add(const _i11.XmlElementName('TransitGatewayRouteTableRoute'))
        ..add(serializers.serialize(
          payload.transitGatewayRouteTableRoute!,
          specifiedType: const FullType(_i8.TransitGatewayRouteTableRoute),
        ));
    }
    if (payload.explanations != null) {
      result
        ..add(const _i11.XmlElementName('ExplanationSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.explanations!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i9.Explanation)],
          ),
        ));
    }
    if (payload.elasticLoadBalancerListener != null) {
      result
        ..add(const _i11.XmlElementName('ElasticLoadBalancerListener'))
        ..add(serializers.serialize(
          payload.elasticLoadBalancerListener!,
          specifiedType: const FullType(_i3.AnalysisComponent),
        ));
    }
    return result;
  }
}
