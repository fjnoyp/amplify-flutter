// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.ebs_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_encryption_support.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_nvme_support.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_optimized_info.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_optimized_support.dart'
    as _i2;

part 'ebs_info.g.dart';

/// Describes the Amazon EBS features supported by the instance type.
abstract class EbsInfo
    with _i1.AWSEquatable<EbsInfo>
    implements Built<EbsInfo, EbsInfoBuilder> {
  /// Describes the Amazon EBS features supported by the instance type.
  factory EbsInfo({
    _i2.EbsOptimizedSupport? ebsOptimizedSupport,
    _i3.EbsEncryptionSupport? encryptionSupport,
    _i4.EbsOptimizedInfo? ebsOptimizedInfo,
    _i5.EbsNvmeSupport? nvmeSupport,
  }) {
    return _$EbsInfo._(
      ebsOptimizedSupport: ebsOptimizedSupport,
      encryptionSupport: encryptionSupport,
      ebsOptimizedInfo: ebsOptimizedInfo,
      nvmeSupport: nvmeSupport,
    );
  }

  /// Describes the Amazon EBS features supported by the instance type.
  factory EbsInfo.build([void Function(EbsInfoBuilder) updates]) = _$EbsInfo;

  const EbsInfo._();

  static const List<_i6.SmithySerializer> serializers = [
    EbsInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EbsInfoBuilder b) {}

  /// Indicates whether the instance type is Amazon EBS-optimized. For more information, see [Amazon EBS-optimized instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html) in _Amazon EC2 User Guide_.
  _i2.EbsOptimizedSupport? get ebsOptimizedSupport;

  /// Indicates whether Amazon EBS encryption is supported.
  _i3.EbsEncryptionSupport? get encryptionSupport;

  /// Describes the optimized EBS performance for the instance type.
  _i4.EbsOptimizedInfo? get ebsOptimizedInfo;

  /// Indicates whether non-volatile memory express (NVMe) is supported.
  _i5.EbsNvmeSupport? get nvmeSupport;
  @override
  List<Object?> get props => [
        ebsOptimizedSupport,
        encryptionSupport,
        ebsOptimizedInfo,
        nvmeSupport,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EbsInfo');
    helper.add(
      'ebsOptimizedSupport',
      ebsOptimizedSupport,
    );
    helper.add(
      'encryptionSupport',
      encryptionSupport,
    );
    helper.add(
      'ebsOptimizedInfo',
      ebsOptimizedInfo,
    );
    helper.add(
      'nvmeSupport',
      nvmeSupport,
    );
    return helper.toString();
  }
}

class EbsInfoEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<EbsInfo> {
  const EbsInfoEc2QuerySerializer() : super('EbsInfo');

  @override
  Iterable<Type> get types => const [
        EbsInfo,
        _$EbsInfo,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EbsInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EbsInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ebsOptimizedSupport':
          if (value != null) {
            result.ebsOptimizedSupport = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.EbsOptimizedSupport),
            ) as _i2.EbsOptimizedSupport);
          }
          break;
        case 'encryptionSupport':
          if (value != null) {
            result.encryptionSupport = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.EbsEncryptionSupport),
            ) as _i3.EbsEncryptionSupport);
          }
          break;
        case 'ebsOptimizedInfo':
          if (value != null) {
            result.ebsOptimizedInfo.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.EbsOptimizedInfo),
            ) as _i4.EbsOptimizedInfo));
          }
          break;
        case 'nvmeSupport':
          if (value != null) {
            result.nvmeSupport = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.EbsNvmeSupport),
            ) as _i5.EbsNvmeSupport);
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
    final payload = (object as EbsInfo);
    final result = <Object?>[
      const _i6.XmlElementName(
        'EbsInfoResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ebsOptimizedSupport != null) {
      result
        ..add(const _i6.XmlElementName('EbsOptimizedSupport'))
        ..add(serializers.serialize(
          payload.ebsOptimizedSupport!,
          specifiedType: const FullType.nullable(_i2.EbsOptimizedSupport),
        ));
    }
    if (payload.encryptionSupport != null) {
      result
        ..add(const _i6.XmlElementName('EncryptionSupport'))
        ..add(serializers.serialize(
          payload.encryptionSupport!,
          specifiedType: const FullType.nullable(_i3.EbsEncryptionSupport),
        ));
    }
    if (payload.ebsOptimizedInfo != null) {
      result
        ..add(const _i6.XmlElementName('EbsOptimizedInfo'))
        ..add(serializers.serialize(
          payload.ebsOptimizedInfo!,
          specifiedType: const FullType(_i4.EbsOptimizedInfo),
        ));
    }
    if (payload.nvmeSupport != null) {
      result
        ..add(const _i6.XmlElementName('NvmeSupport'))
        ..add(serializers.serialize(
          payload.nvmeSupport!,
          specifiedType: const FullType.nullable(_i5.EbsNvmeSupport),
        ));
    }
    return result;
  }
}
