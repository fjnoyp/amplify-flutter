// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.import_instance_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/import_instance_launch_specification.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/platform_values.dart' as _i5;

part 'import_instance_request.g.dart';

abstract class ImportInstanceRequest
    with
        _i1.HttpInput<ImportInstanceRequest>,
        _i2.AWSEquatable<ImportInstanceRequest>
    implements Built<ImportInstanceRequest, ImportInstanceRequestBuilder> {
  factory ImportInstanceRequest({
    String? description,
    List<_i3.DiskImage>? diskImages,
    bool? dryRun,
    _i4.ImportInstanceLaunchSpecification? launchSpecification,
    required _i5.PlatformValues platform,
  }) {
    dryRun ??= false;
    return _$ImportInstanceRequest._(
      description: description,
      diskImages: diskImages == null ? null : _i6.BuiltList(diskImages),
      dryRun: dryRun,
      launchSpecification: launchSpecification,
      platform: platform,
    );
  }

  factory ImportInstanceRequest.build(
          [void Function(ImportInstanceRequestBuilder) updates]) =
      _$ImportInstanceRequest;

  const ImportInstanceRequest._();

  factory ImportInstanceRequest.fromRequest(
    ImportInstanceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ImportInstanceRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportInstanceRequestBuilder b) {
    b.dryRun = false;
  }

  /// A description for the instance being imported.
  String? get description;

  /// The disk image.
  _i6.BuiltList<_i3.DiskImage>? get diskImages;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The launch specification.
  _i4.ImportInstanceLaunchSpecification? get launchSpecification;

  /// The instance operating system.
  _i5.PlatformValues get platform;
  @override
  ImportInstanceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        description,
        diskImages,
        dryRun,
        launchSpecification,
        platform,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportInstanceRequest');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'diskImages',
      diskImages,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'launchSpecification',
      launchSpecification,
    );
    helper.add(
      'platform',
      platform,
    );
    return helper.toString();
  }
}

class ImportInstanceRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ImportInstanceRequest> {
  const ImportInstanceRequestEc2QuerySerializer()
      : super('ImportInstanceRequest');

  @override
  Iterable<Type> get types => const [
        ImportInstanceRequest,
        _$ImportInstanceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportInstanceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportInstanceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'diskImage':
          if (value != null) {
            result.diskImages.replace((const _i1.XmlBuiltListSerializer(
                    indexer: _i1.XmlIndexer.ec2QueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i3.DiskImage)],
              ),
            ) as _i6.BuiltList<_i3.DiskImage>));
          }
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'launchSpecification':
          if (value != null) {
            result.launchSpecification.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i4.ImportInstanceLaunchSpecification),
            ) as _i4.ImportInstanceLaunchSpecification));
          }
          break;
        case 'platform':
          result.platform = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i5.PlatformValues),
          ) as _i5.PlatformValues);
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
    final payload = (object as ImportInstanceRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ImportInstanceRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.description != null) {
      result
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.diskImages != null) {
      result
        ..add(const _i1.XmlElementName('DiskImage'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          payload.diskImages!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i3.DiskImage)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.launchSpecification != null) {
      result
        ..add(const _i1.XmlElementName('LaunchSpecification'))
        ..add(serializers.serialize(
          payload.launchSpecification!,
          specifiedType: const FullType(_i4.ImportInstanceLaunchSpecification),
        ));
    }
    result
      ..add(const _i1.XmlElementName('Platform'))
      ..add(serializers.serialize(
        payload.platform,
        specifiedType: const FullType.nullable(_i5.PlatformValues),
      ));
    return result;
  }
}
