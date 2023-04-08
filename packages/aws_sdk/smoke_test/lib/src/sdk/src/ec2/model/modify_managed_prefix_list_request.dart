// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_managed_prefix_list_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/add_prefix_list_entry.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/remove_prefix_list_entry.dart'
    as _i5;

part 'modify_managed_prefix_list_request.g.dart';

abstract class ModifyManagedPrefixListRequest
    with
        _i1.HttpInput<ModifyManagedPrefixListRequest>,
        _i2.AWSEquatable<ModifyManagedPrefixListRequest>
    implements
        Built<ModifyManagedPrefixListRequest,
            ModifyManagedPrefixListRequestBuilder> {
  factory ModifyManagedPrefixListRequest({
    bool? dryRun,
    required String prefixListId,
    _i3.Int64? currentVersion,
    String? prefixListName,
    List<_i4.AddPrefixListEntry>? addEntries,
    List<_i5.RemovePrefixListEntry>? removeEntries,
    int? maxEntries,
  }) {
    dryRun ??= false;
    currentVersion ??= _i3.Int64.ZERO;
    maxEntries ??= 0;
    return _$ModifyManagedPrefixListRequest._(
      dryRun: dryRun,
      prefixListId: prefixListId,
      currentVersion: currentVersion,
      prefixListName: prefixListName,
      addEntries: addEntries == null ? null : _i6.BuiltList(addEntries),
      removeEntries:
          removeEntries == null ? null : _i6.BuiltList(removeEntries),
      maxEntries: maxEntries,
    );
  }

  factory ModifyManagedPrefixListRequest.build(
          [void Function(ModifyManagedPrefixListRequestBuilder) updates]) =
      _$ModifyManagedPrefixListRequest;

  const ModifyManagedPrefixListRequest._();

  factory ModifyManagedPrefixListRequest.fromRequest(
    ModifyManagedPrefixListRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyManagedPrefixListRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyManagedPrefixListRequestBuilder b) {
    b.dryRun = false;
    b.currentVersion = _i3.Int64.ZERO;
    b.maxEntries = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the prefix list.
  String get prefixListId;

  /// The current version of the prefix list.
  _i3.Int64 get currentVersion;

  /// A name for the prefix list.
  String? get prefixListName;

  /// One or more entries to add to the prefix list.
  _i6.BuiltList<_i4.AddPrefixListEntry>? get addEntries;

  /// One or more entries to remove from the prefix list.
  _i6.BuiltList<_i5.RemovePrefixListEntry>? get removeEntries;

  /// The maximum number of entries for the prefix list. You cannot modify the entries of a prefix list and modify the size of a prefix list at the same time.
  ///
  /// If any of the resources that reference the prefix list cannot support the new maximum size, the modify operation fails. Check the state message for the IDs of the first ten resources that do not support the new maximum size.
  int get maxEntries;
  @override
  ModifyManagedPrefixListRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        prefixListId,
        currentVersion,
        prefixListName,
        addEntries,
        removeEntries,
        maxEntries,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyManagedPrefixListRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'prefixListId',
      prefixListId,
    );
    helper.add(
      'currentVersion',
      currentVersion,
    );
    helper.add(
      'prefixListName',
      prefixListName,
    );
    helper.add(
      'addEntries',
      addEntries,
    );
    helper.add(
      'removeEntries',
      removeEntries,
    );
    helper.add(
      'maxEntries',
      maxEntries,
    );
    return helper.toString();
  }
}

class ModifyManagedPrefixListRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyManagedPrefixListRequest> {
  const ModifyManagedPrefixListRequestEc2QuerySerializer()
      : super('ModifyManagedPrefixListRequest');

  @override
  Iterable<Type> get types => const [
        ModifyManagedPrefixListRequest,
        _$ModifyManagedPrefixListRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyManagedPrefixListRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyManagedPrefixListRequestBuilder();
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
        case 'PrefixListId':
          result.prefixListId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'CurrentVersion':
          result.currentVersion = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.Int64),
          ) as _i3.Int64);
          break;
        case 'PrefixListName':
          if (value != null) {
            result.prefixListName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AddEntry':
          if (value != null) {
            result.addEntries.replace((const _i1.XmlBuiltListSerializer(
                    indexer: _i1.XmlIndexer.ec2QueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i4.AddPrefixListEntry)],
              ),
            ) as _i6.BuiltList<_i4.AddPrefixListEntry>));
          }
          break;
        case 'RemoveEntry':
          if (value != null) {
            result.removeEntries.replace((const _i1.XmlBuiltListSerializer(
                    indexer: _i1.XmlIndexer.ec2QueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i5.RemovePrefixListEntry)],
              ),
            ) as _i6.BuiltList<_i5.RemovePrefixListEntry>));
          }
          break;
        case 'MaxEntries':
          result.maxEntries = (serializers.deserialize(
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
    final payload = (object as ModifyManagedPrefixListRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyManagedPrefixListRequestResponse',
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
      ..add(const _i1.XmlElementName('PrefixListId'))
      ..add(serializers.serialize(
        payload.prefixListId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('CurrentVersion'))
      ..add(serializers.serialize(
        payload.currentVersion,
        specifiedType: const FullType(_i3.Int64),
      ));
    if (payload.prefixListName != null) {
      result
        ..add(const _i1.XmlElementName('PrefixListName'))
        ..add(serializers.serialize(
          payload.prefixListName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.addEntries != null) {
      result
        ..add(const _i1.XmlElementName('AddEntry'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          payload.addEntries!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i4.AddPrefixListEntry)],
          ),
        ));
    }
    if (payload.removeEntries != null) {
      result
        ..add(const _i1.XmlElementName('RemoveEntry'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          payload.removeEntries!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i5.RemovePrefixListEntry)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('MaxEntries'))
      ..add(serializers.serialize(
        payload.maxEntries,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
