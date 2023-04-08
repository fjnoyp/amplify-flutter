// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.stack_set_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/deployment_targets.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_drift_detection_details.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_action.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_preferences.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_status.dart'
    as _i3;

part 'stack_set_operation.g.dart';

/// The structure that contains information about a stack set operation.
abstract class StackSetOperation
    with _i1.AWSEquatable<StackSetOperation>
    implements Built<StackSetOperation, StackSetOperationBuilder> {
  /// The structure that contains information about a stack set operation.
  factory StackSetOperation({
    String? operationId,
    String? stackSetId,
    _i2.StackSetOperationAction? action,
    _i3.StackSetOperationStatus? status,
    _i4.StackSetOperationPreferences? operationPreferences,
    bool? retainStacks,
    String? administrationRoleArn,
    String? executionRoleName,
    DateTime? creationTimestamp,
    DateTime? endTimestamp,
    _i5.DeploymentTargets? deploymentTargets,
    _i6.StackSetDriftDetectionDetails? stackSetDriftDetectionDetails,
    String? statusReason,
  }) {
    return _$StackSetOperation._(
      operationId: operationId,
      stackSetId: stackSetId,
      action: action,
      status: status,
      operationPreferences: operationPreferences,
      retainStacks: retainStacks,
      administrationRoleArn: administrationRoleArn,
      executionRoleName: executionRoleName,
      creationTimestamp: creationTimestamp,
      endTimestamp: endTimestamp,
      deploymentTargets: deploymentTargets,
      stackSetDriftDetectionDetails: stackSetDriftDetectionDetails,
      statusReason: statusReason,
    );
  }

  /// The structure that contains information about a stack set operation.
  factory StackSetOperation.build(
      [void Function(StackSetOperationBuilder) updates]) = _$StackSetOperation;

  const StackSetOperation._();

  static const List<_i7.SmithySerializer> serializers = [
    StackSetOperationAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StackSetOperationBuilder b) {}

  /// The unique ID of a stack set operation.
  String? get operationId;

  /// The ID of the stack set.
  String? get stackSetId;

  /// The type of stack set operation: `CREATE`, `UPDATE`, or `DELETE`. Create and delete operations affect only the specified stack set instances that are associated with the specified stack set. Update operations affect both the stack set itself, in addition to _all_ associated stack set instances.
  _i2.StackSetOperationAction? get action;

  /// The status of the operation.
  ///
  /// *   `FAILED`: The operation exceeded the specified failure tolerance. The failure tolerance value that you've set for an operation is applied for each Region during stack create and update operations. If the number of failed stacks within a Region exceeds the failure tolerance, the status of the operation in the Region is set to `FAILED`. This in turn sets the status of the operation as a whole to `FAILED`, and CloudFormation cancels the operation in any remaining Regions.
  ///
  /// *   `QUEUED`: \[Service-managed permissions\] For automatic deployments that require a sequence of operations, the operation is queued to be performed. For more information, see the [stack set operation status codes](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-status-codes) in the CloudFormation User Guide.
  ///
  /// *   `RUNNING`: The operation is currently being performed.
  ///
  /// *   `STOPPED`: The user has canceled the operation.
  ///
  /// *   `STOPPING`: The operation is in the process of stopping, at user request.
  ///
  /// *   `SUCCEEDED`: The operation completed creating or updating all the specified stacks without exceeding the failure tolerance for the operation.
  _i3.StackSetOperationStatus? get status;

  /// The preferences for how CloudFormation performs this stack set operation.
  _i4.StackSetOperationPreferences? get operationPreferences;

  /// For stack set operations of action type `DELETE`, specifies whether to remove the stack instances from the specified stack set, but doesn't delete the stacks. You can't re-associate a retained stack, or add an existing, saved stack to a new stack set.
  bool? get retainStacks;

  /// The Amazon Resource Name (ARN) of the IAM role used to perform this stack set operation.
  ///
  /// Use customized administrator roles to control which users or groups can manage specific stack sets within the same administrator account. For more information, see [Define Permissions for Multiple Administrators](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html) in the _CloudFormation User Guide_.
  String? get administrationRoleArn;

  /// The name of the IAM execution role used to create or update the stack set.
  ///
  /// Use customized execution roles to control which stack resources users and groups can include in their stack sets.
  String? get executionRoleName;

  /// The time at which the operation was initiated. Note that the creation times for the stack set operation might differ from the creation time of the individual stacks themselves. This is because CloudFormation needs to perform preparatory work for the operation, such as dispatching the work to the requested Regions, before actually creating the first stacks.
  DateTime? get creationTimestamp;

  /// The time at which the stack set operation ended, across all accounts and Regions specified. Note that this doesn't necessarily mean that the stack set operation was successful, or even attempted, in each account or Region.
  DateTime? get endTimestamp;

  /// \[Service-managed permissions\] The Organizations accounts affected by the stack operation.
  _i5.DeploymentTargets? get deploymentTargets;

  /// Detailed information about the drift status of the stack set. This includes information about drift operations currently being performed on the stack set.
  ///
  /// This information will only be present for stack set operations whose `Action` type is `DETECT_DRIFT`.
  ///
  /// For more information, see [Detecting Unmanaged Changes in Stack Sets](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html) in the CloudFormation User Guide.
  _i6.StackSetDriftDetectionDetails? get stackSetDriftDetectionDetails;

  /// The status of the operation in details.
  String? get statusReason;
  @override
  List<Object?> get props => [
        operationId,
        stackSetId,
        action,
        status,
        operationPreferences,
        retainStacks,
        administrationRoleArn,
        executionRoleName,
        creationTimestamp,
        endTimestamp,
        deploymentTargets,
        stackSetDriftDetectionDetails,
        statusReason,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StackSetOperation');
    helper.add(
      'operationId',
      operationId,
    );
    helper.add(
      'stackSetId',
      stackSetId,
    );
    helper.add(
      'action',
      action,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'operationPreferences',
      operationPreferences,
    );
    helper.add(
      'retainStacks',
      retainStacks,
    );
    helper.add(
      'administrationRoleArn',
      administrationRoleArn,
    );
    helper.add(
      'executionRoleName',
      executionRoleName,
    );
    helper.add(
      'creationTimestamp',
      creationTimestamp,
    );
    helper.add(
      'endTimestamp',
      endTimestamp,
    );
    helper.add(
      'deploymentTargets',
      deploymentTargets,
    );
    helper.add(
      'stackSetDriftDetectionDetails',
      stackSetDriftDetectionDetails,
    );
    helper.add(
      'statusReason',
      statusReason,
    );
    return helper.toString();
  }
}

class StackSetOperationAwsQuerySerializer
    extends _i7.StructuredSmithySerializer<StackSetOperation> {
  const StackSetOperationAwsQuerySerializer() : super('StackSetOperation');

  @override
  Iterable<Type> get types => const [
        StackSetOperation,
        _$StackSetOperation,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackSetOperation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackSetOperationBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'OperationId':
          if (value != null) {
            result.operationId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'StackSetId':
          if (value != null) {
            result.stackSetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Action':
          if (value != null) {
            result.action = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.StackSetOperationAction),
            ) as _i2.StackSetOperationAction);
          }
          break;
        case 'Status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.StackSetOperationStatus),
            ) as _i3.StackSetOperationStatus);
          }
          break;
        case 'OperationPreferences':
          if (value != null) {
            result.operationPreferences.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.StackSetOperationPreferences),
            ) as _i4.StackSetOperationPreferences));
          }
          break;
        case 'RetainStacks':
          if (value != null) {
            result.retainStacks = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'AdministrationRoleARN':
          if (value != null) {
            result.administrationRoleArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ExecutionRoleName':
          if (value != null) {
            result.executionRoleName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'CreationTimestamp':
          if (value != null) {
            result.creationTimestamp = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'EndTimestamp':
          if (value != null) {
            result.endTimestamp = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'DeploymentTargets':
          if (value != null) {
            result.deploymentTargets.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.DeploymentTargets),
            ) as _i5.DeploymentTargets));
          }
          break;
        case 'StackSetDriftDetectionDetails':
          if (value != null) {
            result.stackSetDriftDetectionDetails
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.StackSetDriftDetectionDetails),
            ) as _i6.StackSetDriftDetectionDetails));
          }
          break;
        case 'StatusReason':
          if (value != null) {
            result.statusReason = (serializers.deserialize(
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
    final payload = (object as StackSetOperation);
    final result = <Object?>[
      const _i7.XmlElementName(
        'StackSetOperationResponse',
        _i7.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.operationId != null) {
      result
        ..add(const _i7.XmlElementName('OperationId'))
        ..add(serializers.serialize(
          payload.operationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.stackSetId != null) {
      result
        ..add(const _i7.XmlElementName('StackSetId'))
        ..add(serializers.serialize(
          payload.stackSetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.action != null) {
      result
        ..add(const _i7.XmlElementName('Action'))
        ..add(serializers.serialize(
          payload.action!,
          specifiedType: const FullType.nullable(_i2.StackSetOperationAction),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i7.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i3.StackSetOperationStatus),
        ));
    }
    if (payload.operationPreferences != null) {
      result
        ..add(const _i7.XmlElementName('OperationPreferences'))
        ..add(serializers.serialize(
          payload.operationPreferences!,
          specifiedType: const FullType(_i4.StackSetOperationPreferences),
        ));
    }
    if (payload.retainStacks != null) {
      result
        ..add(const _i7.XmlElementName('RetainStacks'))
        ..add(serializers.serialize(
          payload.retainStacks!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.administrationRoleArn != null) {
      result
        ..add(const _i7.XmlElementName('AdministrationRoleARN'))
        ..add(serializers.serialize(
          payload.administrationRoleArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.executionRoleName != null) {
      result
        ..add(const _i7.XmlElementName('ExecutionRoleName'))
        ..add(serializers.serialize(
          payload.executionRoleName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.creationTimestamp != null) {
      result
        ..add(const _i7.XmlElementName('CreationTimestamp'))
        ..add(serializers.serialize(
          payload.creationTimestamp!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.endTimestamp != null) {
      result
        ..add(const _i7.XmlElementName('EndTimestamp'))
        ..add(serializers.serialize(
          payload.endTimestamp!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.deploymentTargets != null) {
      result
        ..add(const _i7.XmlElementName('DeploymentTargets'))
        ..add(serializers.serialize(
          payload.deploymentTargets!,
          specifiedType: const FullType(_i5.DeploymentTargets),
        ));
    }
    if (payload.stackSetDriftDetectionDetails != null) {
      result
        ..add(const _i7.XmlElementName('StackSetDriftDetectionDetails'))
        ..add(serializers.serialize(
          payload.stackSetDriftDetectionDetails!,
          specifiedType: const FullType(_i6.StackSetDriftDetectionDetails),
        ));
    }
    if (payload.statusReason != null) {
      result
        ..add(const _i7.XmlElementName('StatusReason'))
        ..add(serializers.serialize(
          payload.statusReason!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
