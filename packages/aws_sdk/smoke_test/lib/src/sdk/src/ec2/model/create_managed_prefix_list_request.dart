// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_managed_prefix_list_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/add_prefix_list_entry.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i4;

part 'create_managed_prefix_list_request.g.dart';

abstract class CreateManagedPrefixListRequest
    with
        _i1.HttpInput<CreateManagedPrefixListRequest>,
        _i2.AWSEquatable<CreateManagedPrefixListRequest>
    implements
        Built<CreateManagedPrefixListRequest,
            CreateManagedPrefixListRequestBuilder> {
  factory CreateManagedPrefixListRequest({
    bool? dryRun,
    required String prefixListName,
    List<_i3.AddPrefixListEntry>? entries,
    int? maxEntries,
    List<_i4.TagSpecification>? tagSpecifications,
    required String addressFamily,
    String? clientToken,
  }) {
    dryRun ??= false;
    maxEntries ??= 0;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientToken ??= _i2.uuid(secure: true);
    }
    return _$CreateManagedPrefixListRequest._(
      dryRun: dryRun,
      prefixListName: prefixListName,
      entries: entries == null ? null : _i5.BuiltList(entries),
      maxEntries: maxEntries,
      tagSpecifications:
          tagSpecifications == null ? null : _i5.BuiltList(tagSpecifications),
      addressFamily: addressFamily,
      clientToken: clientToken,
    );
  }

  factory CreateManagedPrefixListRequest.build(
          [void Function(CreateManagedPrefixListRequestBuilder) updates]) =
      _$CreateManagedPrefixListRequest;

  const CreateManagedPrefixListRequest._();

  factory CreateManagedPrefixListRequest.fromRequest(
    CreateManagedPrefixListRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateManagedPrefixListRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateManagedPrefixListRequestBuilder b) {
    b.dryRun = false;
    b.maxEntries = 0;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientToken = _i2.uuid(secure: true);
    }
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// A name for the prefix list.
  ///
  /// Constraints: Up to 255 characters in length. The name cannot start with `com.amazonaws`.
  String get prefixListName;

  /// One or more entries for the prefix list.
  _i5.BuiltList<_i3.AddPrefixListEntry>? get entries;

  /// The maximum number of entries for the prefix list.
  int get maxEntries;

  /// The tags to apply to the prefix list during creation.
  _i5.BuiltList<_i4.TagSpecification>? get tagSpecifications;

  /// The IP address type.
  ///
  /// Valid Values: `IPv4` | `IPv6`
  String get addressFamily;

  /// Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  ///
  /// Constraints: Up to 255 UTF-8 characters in length.
  String? get clientToken;
  @override
  CreateManagedPrefixListRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        prefixListName,
        entries,
        maxEntries,
        tagSpecifications,
        addressFamily,
        clientToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateManagedPrefixListRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'prefixListName',
      prefixListName,
    );
    helper.add(
      'entries',
      entries,
    );
    helper.add(
      'maxEntries',
      maxEntries,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'addressFamily',
      addressFamily,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    return helper.toString();
  }
}

class CreateManagedPrefixListRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateManagedPrefixListRequest> {
  const CreateManagedPrefixListRequestEc2QuerySerializer()
      : super('CreateManagedPrefixListRequest');

  @override
  Iterable<Type> get types => const [
        CreateManagedPrefixListRequest,
        _$CreateManagedPrefixListRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateManagedPrefixListRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateManagedPrefixListRequestBuilder();
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
        case 'PrefixListName':
          result.prefixListName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Entry':
          if (value != null) {
            result.entries.replace((const _i1.XmlBuiltListSerializer(
                    indexer: _i1.XmlIndexer.ec2QueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i3.AddPrefixListEntry)],
              ),
            ) as _i5.BuiltList<_i3.AddPrefixListEntry>));
          }
          break;
        case 'MaxEntries':
          result.maxEntries = (serializers.deserialize(
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
        case 'AddressFamily':
          result.addressFamily = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
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
    final payload = (object as CreateManagedPrefixListRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateManagedPrefixListRequestResponse',
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
      ..add(const _i1.XmlElementName('PrefixListName'))
      ..add(serializers.serialize(
        payload.prefixListName,
        specifiedType: const FullType(String),
      ));
    if (payload.entries != null) {
      result
        ..add(const _i1.XmlElementName('Entry'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          payload.entries!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.AddPrefixListEntry)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('MaxEntries'))
      ..add(serializers.serialize(
        payload.maxEntries,
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
      ..add(const _i1.XmlElementName('AddressFamily'))
      ..add(serializers.serialize(
        payload.addressFamily,
        specifiedType: const FullType(String),
      ));
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
