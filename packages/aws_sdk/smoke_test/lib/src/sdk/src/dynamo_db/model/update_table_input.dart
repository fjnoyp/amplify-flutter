// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.update_table_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i11;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_definition.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/billing_mode.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index_update.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replication_group_update.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_specification.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/stream_specification.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_class.dart'
    as _i10;

part 'update_table_input.g.dart';

/// Represents the input of an `UpdateTable` operation.
abstract class UpdateTableInput
    with _i1.HttpInput<UpdateTableInput>, _i2.AWSEquatable<UpdateTableInput>
    implements Built<UpdateTableInput, UpdateTableInputBuilder> {
  /// Represents the input of an `UpdateTable` operation.
  factory UpdateTableInput({
    List<_i3.AttributeDefinition>? attributeDefinitions,
    required String tableName,
    _i4.BillingMode? billingMode,
    _i5.ProvisionedThroughput? provisionedThroughput,
    List<_i6.GlobalSecondaryIndexUpdate>? globalSecondaryIndexUpdates,
    _i7.StreamSpecification? streamSpecification,
    _i8.SseSpecification? sseSpecification,
    List<_i9.ReplicationGroupUpdate>? replicaUpdates,
    _i10.TableClass? tableClass,
    bool? deletionProtectionEnabled,
  }) {
    return _$UpdateTableInput._(
      attributeDefinitions: attributeDefinitions == null
          ? null
          : _i11.BuiltList(attributeDefinitions),
      tableName: tableName,
      billingMode: billingMode,
      provisionedThroughput: provisionedThroughput,
      globalSecondaryIndexUpdates: globalSecondaryIndexUpdates == null
          ? null
          : _i11.BuiltList(globalSecondaryIndexUpdates),
      streamSpecification: streamSpecification,
      sseSpecification: sseSpecification,
      replicaUpdates:
          replicaUpdates == null ? null : _i11.BuiltList(replicaUpdates),
      tableClass: tableClass,
      deletionProtectionEnabled: deletionProtectionEnabled,
    );
  }

  /// Represents the input of an `UpdateTable` operation.
  factory UpdateTableInput.build(
      [void Function(UpdateTableInputBuilder) updates]) = _$UpdateTableInput;

  const UpdateTableInput._();

  factory UpdateTableInput.fromRequest(
    UpdateTableInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    UpdateTableInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateTableInputBuilder b) {}

  /// An array of attributes that describe the key schema for the table and indexes. If you are adding a new global secondary index to the table, `AttributeDefinitions` must include the key element(s) of the new index.
  _i11.BuiltList<_i3.AttributeDefinition>? get attributeDefinitions;

  /// The name of the table to be updated.
  String get tableName;

  /// Controls how you are charged for read and write throughput and how you manage capacity. When switching from pay-per-request to provisioned capacity, initial provisioned capacity values must be set. The initial provisioned capacity values are estimated based on the consumed read and write capacity of your table and global secondary indexes over the past 30 minutes.
  ///
  /// *   `PROVISIONED` \- We recommend using `PROVISIONED` for predictable workloads. `PROVISIONED` sets the billing mode to [Provisioned Mode](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.ProvisionedThroughput.Manual).
  ///
  /// *   `PAY\_PER\_REQUEST` \- We recommend using `PAY\_PER\_REQUEST` for unpredictable workloads. `PAY\_PER\_REQUEST` sets the billing mode to [On-Demand Mode](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.OnDemand).
  _i4.BillingMode? get billingMode;

  /// The new provisioned throughput settings for the specified table or index.
  _i5.ProvisionedThroughput? get provisionedThroughput;

  /// An array of one or more global secondary indexes for the table. For each index in the array, you can request one action:
  ///
  /// *   `Create` \- add a new global secondary index to the table.
  ///
  /// *   `Update` \- modify the provisioned throughput settings of an existing global secondary index.
  ///
  /// *   `Delete` \- remove a global secondary index from the table.
  ///
  ///
  /// You can create or delete only one global secondary index per `UpdateTable` operation.
  ///
  /// For more information, see [Managing Global Secondary Indexes](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.OnlineOps.html) in the _Amazon DynamoDB Developer Guide_.
  _i11.BuiltList<_i6.GlobalSecondaryIndexUpdate>?
      get globalSecondaryIndexUpdates;

  /// Represents the DynamoDB Streams configuration for the table.
  ///
  /// You receive a `ResourceInUseException` if you try to enable a stream on a table that already has a stream, or if you try to disable a stream on a table that doesn't have a stream.
  _i7.StreamSpecification? get streamSpecification;

  /// The new server-side encryption settings for the specified table.
  _i8.SseSpecification? get sseSpecification;

  /// A list of replica update actions (create, delete, or update) for the table.
  ///
  /// This property only applies to [Version 2019.11.21 (Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html) of global tables.
  _i11.BuiltList<_i9.ReplicationGroupUpdate>? get replicaUpdates;

  /// The table class of the table to be updated. Valid values are `STANDARD` and `STANDARD\_INFREQUENT\_ACCESS`.
  _i10.TableClass? get tableClass;

  /// Indicates whether deletion protection is to be enabled (true) or disabled (false) on the table.
  bool? get deletionProtectionEnabled;
  @override
  UpdateTableInput getPayload() => this;
  @override
  List<Object?> get props => [
        attributeDefinitions,
        tableName,
        billingMode,
        provisionedThroughput,
        globalSecondaryIndexUpdates,
        streamSpecification,
        sseSpecification,
        replicaUpdates,
        tableClass,
        deletionProtectionEnabled,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateTableInput');
    helper.add(
      'attributeDefinitions',
      attributeDefinitions,
    );
    helper.add(
      'tableName',
      tableName,
    );
    helper.add(
      'billingMode',
      billingMode,
    );
    helper.add(
      'provisionedThroughput',
      provisionedThroughput,
    );
    helper.add(
      'globalSecondaryIndexUpdates',
      globalSecondaryIndexUpdates,
    );
    helper.add(
      'streamSpecification',
      streamSpecification,
    );
    helper.add(
      'sseSpecification',
      sseSpecification,
    );
    helper.add(
      'replicaUpdates',
      replicaUpdates,
    );
    helper.add(
      'tableClass',
      tableClass,
    );
    helper.add(
      'deletionProtectionEnabled',
      deletionProtectionEnabled,
    );
    return helper.toString();
  }
}

class UpdateTableInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<UpdateTableInput> {
  const UpdateTableInputAwsJson10Serializer() : super('UpdateTableInput');

  @override
  Iterable<Type> get types => const [
        UpdateTableInput,
        _$UpdateTableInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  UpdateTableInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTableInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AttributeDefinitions':
          if (value != null) {
            result.attributeDefinitions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i11.BuiltList,
                [FullType(_i3.AttributeDefinition)],
              ),
            ) as _i11.BuiltList<_i3.AttributeDefinition>));
          }
          break;
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'BillingMode':
          if (value != null) {
            result.billingMode = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.BillingMode),
            ) as _i4.BillingMode);
          }
          break;
        case 'ProvisionedThroughput':
          if (value != null) {
            result.provisionedThroughput.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.ProvisionedThroughput),
            ) as _i5.ProvisionedThroughput));
          }
          break;
        case 'GlobalSecondaryIndexUpdates':
          if (value != null) {
            result.globalSecondaryIndexUpdates.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i11.BuiltList,
                [FullType(_i6.GlobalSecondaryIndexUpdate)],
              ),
            ) as _i11.BuiltList<_i6.GlobalSecondaryIndexUpdate>));
          }
          break;
        case 'StreamSpecification':
          if (value != null) {
            result.streamSpecification.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.StreamSpecification),
            ) as _i7.StreamSpecification));
          }
          break;
        case 'SSESpecification':
          if (value != null) {
            result.sseSpecification.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.SseSpecification),
            ) as _i8.SseSpecification));
          }
          break;
        case 'ReplicaUpdates':
          if (value != null) {
            result.replicaUpdates.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i11.BuiltList,
                [FullType(_i9.ReplicationGroupUpdate)],
              ),
            ) as _i11.BuiltList<_i9.ReplicationGroupUpdate>));
          }
          break;
        case 'TableClass':
          if (value != null) {
            result.tableClass = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i10.TableClass),
            ) as _i10.TableClass);
          }
          break;
        case 'DeletionProtectionEnabled':
          if (value != null) {
            result.deletionProtectionEnabled = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
    final payload = (object as UpdateTableInput);
    final result = <Object?>[
      'TableName',
      serializers.serialize(
        payload.tableName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.attributeDefinitions != null) {
      result
        ..add('AttributeDefinitions')
        ..add(serializers.serialize(
          payload.attributeDefinitions!,
          specifiedType: const FullType(
            _i11.BuiltList,
            [FullType(_i3.AttributeDefinition)],
          ),
        ));
    }
    if (payload.billingMode != null) {
      result
        ..add('BillingMode')
        ..add(serializers.serialize(
          payload.billingMode!,
          specifiedType: const FullType(_i4.BillingMode),
        ));
    }
    if (payload.provisionedThroughput != null) {
      result
        ..add('ProvisionedThroughput')
        ..add(serializers.serialize(
          payload.provisionedThroughput!,
          specifiedType: const FullType(_i5.ProvisionedThroughput),
        ));
    }
    if (payload.globalSecondaryIndexUpdates != null) {
      result
        ..add('GlobalSecondaryIndexUpdates')
        ..add(serializers.serialize(
          payload.globalSecondaryIndexUpdates!,
          specifiedType: const FullType(
            _i11.BuiltList,
            [FullType(_i6.GlobalSecondaryIndexUpdate)],
          ),
        ));
    }
    if (payload.streamSpecification != null) {
      result
        ..add('StreamSpecification')
        ..add(serializers.serialize(
          payload.streamSpecification!,
          specifiedType: const FullType(_i7.StreamSpecification),
        ));
    }
    if (payload.sseSpecification != null) {
      result
        ..add('SSESpecification')
        ..add(serializers.serialize(
          payload.sseSpecification!,
          specifiedType: const FullType(_i8.SseSpecification),
        ));
    }
    if (payload.replicaUpdates != null) {
      result
        ..add('ReplicaUpdates')
        ..add(serializers.serialize(
          payload.replicaUpdates!,
          specifiedType: const FullType(
            _i11.BuiltList,
            [FullType(_i9.ReplicationGroupUpdate)],
          ),
        ));
    }
    if (payload.tableClass != null) {
      result
        ..add('TableClass')
        ..add(serializers.serialize(
          payload.tableClass!,
          specifiedType: const FullType(_i10.TableClass),
        ));
    }
    if (payload.deletionProtectionEnabled != null) {
      result
        ..add('DeletionProtectionEnabled')
        ..add(serializers.serialize(
          payload.deletionProtectionEnabled!,
          specifiedType: const FullType(bool),
        ));
    }
    return result;
  }
}
