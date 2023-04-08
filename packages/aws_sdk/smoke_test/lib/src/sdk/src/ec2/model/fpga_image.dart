// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.fpga_image; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image_state.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/pci_id.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/product_code.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i5;

part 'fpga_image.g.dart';

/// Describes an Amazon FPGA image (AFI).
abstract class FpgaImage
    with _i1.AWSEquatable<FpgaImage>
    implements Built<FpgaImage, FpgaImageBuilder> {
  /// Describes an Amazon FPGA image (AFI).
  factory FpgaImage({
    String? fpgaImageId,
    String? fpgaImageGlobalId,
    String? name,
    String? description,
    String? shellVersion,
    _i2.PciId? pciId,
    _i3.FpgaImageState? state,
    DateTime? createTime,
    DateTime? updateTime,
    String? ownerId,
    String? ownerAlias,
    List<_i4.ProductCode>? productCodes,
    List<_i5.Tag>? tags,
    bool? public,
    bool? dataRetentionSupport,
  }) {
    public ??= false;
    dataRetentionSupport ??= false;
    return _$FpgaImage._(
      fpgaImageId: fpgaImageId,
      fpgaImageGlobalId: fpgaImageGlobalId,
      name: name,
      description: description,
      shellVersion: shellVersion,
      pciId: pciId,
      state: state,
      createTime: createTime,
      updateTime: updateTime,
      ownerId: ownerId,
      ownerAlias: ownerAlias,
      productCodes: productCodes == null ? null : _i6.BuiltList(productCodes),
      tags: tags == null ? null : _i6.BuiltList(tags),
      public: public,
      dataRetentionSupport: dataRetentionSupport,
    );
  }

  /// Describes an Amazon FPGA image (AFI).
  factory FpgaImage.build([void Function(FpgaImageBuilder) updates]) =
      _$FpgaImage;

  const FpgaImage._();

  static const List<_i7.SmithySerializer> serializers = [
    FpgaImageEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FpgaImageBuilder b) {
    b.public = false;
    b.dataRetentionSupport = false;
  }

  /// The FPGA image identifier (AFI ID).
  String? get fpgaImageId;

  /// The global FPGA image identifier (AGFI ID).
  String? get fpgaImageGlobalId;

  /// The name of the AFI.
  String? get name;

  /// The description of the AFI.
  String? get description;

  /// The version of the Amazon Web Services Shell that was used to create the bitstream.
  String? get shellVersion;

  /// Information about the PCI bus.
  _i2.PciId? get pciId;

  /// Information about the state of the AFI.
  _i3.FpgaImageState? get state;

  /// The date and time the AFI was created.
  DateTime? get createTime;

  /// The time of the most recent update to the AFI.
  DateTime? get updateTime;

  /// The ID of the Amazon Web Services account that owns the AFI.
  String? get ownerId;

  /// The alias of the AFI owner. Possible values include `self`, `amazon`, and `aws-marketplace`.
  String? get ownerAlias;

  /// The product codes for the AFI.
  _i6.BuiltList<_i4.ProductCode>? get productCodes;

  /// Any tags assigned to the AFI.
  _i6.BuiltList<_i5.Tag>? get tags;

  /// Indicates whether the AFI is public.
  bool get public;

  /// Indicates whether data retention support is enabled for the AFI.
  bool get dataRetentionSupport;
  @override
  List<Object?> get props => [
        fpgaImageId,
        fpgaImageGlobalId,
        name,
        description,
        shellVersion,
        pciId,
        state,
        createTime,
        updateTime,
        ownerId,
        ownerAlias,
        productCodes,
        tags,
        public,
        dataRetentionSupport,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FpgaImage');
    helper.add(
      'fpgaImageId',
      fpgaImageId,
    );
    helper.add(
      'fpgaImageGlobalId',
      fpgaImageGlobalId,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'shellVersion',
      shellVersion,
    );
    helper.add(
      'pciId',
      pciId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'createTime',
      createTime,
    );
    helper.add(
      'updateTime',
      updateTime,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'ownerAlias',
      ownerAlias,
    );
    helper.add(
      'productCodes',
      productCodes,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'public',
      public,
    );
    helper.add(
      'dataRetentionSupport',
      dataRetentionSupport,
    );
    return helper.toString();
  }
}

class FpgaImageEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<FpgaImage> {
  const FpgaImageEc2QuerySerializer() : super('FpgaImage');

  @override
  Iterable<Type> get types => const [
        FpgaImage,
        _$FpgaImage,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FpgaImage deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FpgaImageBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'fpgaImageId':
          if (value != null) {
            result.fpgaImageId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'fpgaImageGlobalId':
          if (value != null) {
            result.fpgaImageGlobalId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'shellVersion':
          if (value != null) {
            result.shellVersion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'pciId':
          if (value != null) {
            result.pciId.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PciId),
            ) as _i2.PciId));
          }
          break;
        case 'state':
          if (value != null) {
            result.state.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.FpgaImageState),
            ) as _i3.FpgaImageState));
          }
          break;
        case 'createTime':
          if (value != null) {
            result.createTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'updateTime':
          if (value != null) {
            result.updateTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'ownerId':
          if (value != null) {
            result.ownerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ownerAlias':
          if (value != null) {
            result.ownerAlias = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'productCodes':
          if (value != null) {
            result.productCodes.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i4.ProductCode)],
              ),
            ) as _i6.BuiltList<_i4.ProductCode>));
          }
          break;
        case 'tags':
          if (value != null) {
            result.tags.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i5.Tag)],
              ),
            ) as _i6.BuiltList<_i5.Tag>));
          }
          break;
        case 'public':
          result.public = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'dataRetentionSupport':
          result.dataRetentionSupport = (serializers.deserialize(
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
    final payload = (object as FpgaImage);
    final result = <Object?>[
      const _i7.XmlElementName(
        'FpgaImageResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.fpgaImageId != null) {
      result
        ..add(const _i7.XmlElementName('FpgaImageId'))
        ..add(serializers.serialize(
          payload.fpgaImageId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.fpgaImageGlobalId != null) {
      result
        ..add(const _i7.XmlElementName('FpgaImageGlobalId'))
        ..add(serializers.serialize(
          payload.fpgaImageGlobalId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.name != null) {
      result
        ..add(const _i7.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i7.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.shellVersion != null) {
      result
        ..add(const _i7.XmlElementName('ShellVersion'))
        ..add(serializers.serialize(
          payload.shellVersion!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.pciId != null) {
      result
        ..add(const _i7.XmlElementName('PciId'))
        ..add(serializers.serialize(
          payload.pciId!,
          specifiedType: const FullType(_i2.PciId),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i7.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType(_i3.FpgaImageState),
        ));
    }
    if (payload.createTime != null) {
      result
        ..add(const _i7.XmlElementName('CreateTime'))
        ..add(serializers.serialize(
          payload.createTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.updateTime != null) {
      result
        ..add(const _i7.XmlElementName('UpdateTime'))
        ..add(serializers.serialize(
          payload.updateTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.ownerId != null) {
      result
        ..add(const _i7.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ownerAlias != null) {
      result
        ..add(const _i7.XmlElementName('OwnerAlias'))
        ..add(serializers.serialize(
          payload.ownerAlias!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.productCodes != null) {
      result
        ..add(const _i7.XmlElementName('ProductCodes'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.productCodes!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i4.ProductCode)],
          ),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i7.XmlElementName('Tags'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i5.Tag)],
          ),
        ));
    }
    result
      ..add(const _i7.XmlElementName('Public'))
      ..add(serializers.serialize(
        payload.public,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i7.XmlElementName('DataRetentionSupport'))
      ..add(serializers.serialize(
        payload.dataRetentionSupport,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
