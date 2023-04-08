// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.vpc_classic_link; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i2;

part 'vpc_classic_link.g.dart';

/// We are retiring EC2-Classic. We recommend that you migrate from EC2-Classic to a VPC. For more information, see [Migrate from EC2-Classic to a VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in the _Amazon Elastic Compute Cloud User Guide_.
///
/// Describes whether a VPC is enabled for ClassicLink.
abstract class VpcClassicLink
    with _i1.AWSEquatable<VpcClassicLink>
    implements Built<VpcClassicLink, VpcClassicLinkBuilder> {
  /// We are retiring EC2-Classic. We recommend that you migrate from EC2-Classic to a VPC. For more information, see [Migrate from EC2-Classic to a VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// Describes whether a VPC is enabled for ClassicLink.
  factory VpcClassicLink({
    bool? classicLinkEnabled,
    List<_i2.Tag>? tags,
    String? vpcId,
  }) {
    classicLinkEnabled ??= false;
    return _$VpcClassicLink._(
      classicLinkEnabled: classicLinkEnabled,
      tags: tags == null ? null : _i3.BuiltList(tags),
      vpcId: vpcId,
    );
  }

  /// We are retiring EC2-Classic. We recommend that you migrate from EC2-Classic to a VPC. For more information, see [Migrate from EC2-Classic to a VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// Describes whether a VPC is enabled for ClassicLink.
  factory VpcClassicLink.build([void Function(VpcClassicLinkBuilder) updates]) =
      _$VpcClassicLink;

  const VpcClassicLink._();

  static const List<_i4.SmithySerializer> serializers = [
    VpcClassicLinkEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpcClassicLinkBuilder b) {
    b.classicLinkEnabled = false;
  }

  /// Indicates whether the VPC is enabled for ClassicLink.
  bool get classicLinkEnabled;

  /// Any tags assigned to the VPC.
  _i3.BuiltList<_i2.Tag>? get tags;

  /// The ID of the VPC.
  String? get vpcId;
  @override
  List<Object?> get props => [
        classicLinkEnabled,
        tags,
        vpcId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpcClassicLink');
    helper.add(
      'classicLinkEnabled',
      classicLinkEnabled,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    return helper.toString();
  }
}

class VpcClassicLinkEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<VpcClassicLink> {
  const VpcClassicLinkEc2QuerySerializer() : super('VpcClassicLink');

  @override
  Iterable<Type> get types => const [
        VpcClassicLink,
        _$VpcClassicLink,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpcClassicLink deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpcClassicLinkBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'classicLinkEnabled':
          result.classicLinkEnabled = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Tag)],
              ),
            ) as _i3.BuiltList<_i2.Tag>));
          }
          break;
        case 'vpcId':
          if (value != null) {
            result.vpcId = (serializers.deserialize(
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
    final payload = (object as VpcClassicLink);
    final result = <Object?>[
      const _i4.XmlElementName(
        'VpcClassicLinkResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i4.XmlElementName('ClassicLinkEnabled'))
      ..add(serializers.serialize(
        payload.classicLinkEnabled,
        specifiedType: const FullType(bool),
      ));
    if (payload.tags != null) {
      result
        ..add(const _i4.XmlElementName('TagSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Tag)],
          ),
        ));
    }
    if (payload.vpcId != null) {
      result
        ..add(const _i4.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          payload.vpcId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
