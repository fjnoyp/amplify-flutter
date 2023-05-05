// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.list_stack_set_operation_results_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/call_as.dart'
    as _i3;

part 'list_stack_set_operation_results_input.g.dart';

abstract class ListStackSetOperationResultsInput
    with
        _i1.HttpInput<ListStackSetOperationResultsInput>,
        _i2.AWSEquatable<ListStackSetOperationResultsInput>
    implements
        Built<ListStackSetOperationResultsInput,
            ListStackSetOperationResultsInputBuilder> {
  factory ListStackSetOperationResultsInput({
    required String stackSetName,
    required String operationId,
    String? nextToken,
    int? maxResults,
    _i3.CallAs? callAs,
  }) {
    return _$ListStackSetOperationResultsInput._(
      stackSetName: stackSetName,
      operationId: operationId,
      nextToken: nextToken,
      maxResults: maxResults,
      callAs: callAs,
    );
  }

  factory ListStackSetOperationResultsInput.build(
          [void Function(ListStackSetOperationResultsInputBuilder) updates]) =
      _$ListStackSetOperationResultsInput;

  const ListStackSetOperationResultsInput._();

  factory ListStackSetOperationResultsInput.fromRequest(
    ListStackSetOperationResultsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListStackSetOperationResultsInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListStackSetOperationResultsInputBuilder b) {}

  /// The name or unique ID of the stack set that you want to get operation results for.
  String get stackSetName;

  /// The ID of the stack set operation.
  String get operationId;

  /// If the previous request didn't return all the remaining results, the response object's `NextToken` parameter value is set to a token. To retrieve the next set of results, call `ListStackSetOperationResults` again and assign that token to the request object's `NextToken` parameter. If there are no remaining results, the previous response object's `NextToken` parameter is set to `null`.
  String? get nextToken;

  /// The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a `NextToken` value that you can assign to the `NextToken` request parameter to get the next set of results.
  int? get maxResults;

  /// \[Service-managed permissions\] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.
  ///
  /// By default, `SELF` is specified. Use `SELF` for stack sets with self-managed permissions.
  ///
  /// *   If you are signed in to the management account, specify `SELF`.
  ///
  /// *   If you are signed in to a delegated administrator account, specify `DELEGATED_ADMIN`.
  ///
  ///     Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see [Register a delegated administrator](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html) in the _CloudFormation User Guide_.
  _i3.CallAs? get callAs;
  @override
  ListStackSetOperationResultsInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackSetName,
        operationId,
        nextToken,
        maxResults,
        callAs,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListStackSetOperationResultsInput');
    helper.add(
      'stackSetName',
      stackSetName,
    );
    helper.add(
      'operationId',
      operationId,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'callAs',
      callAs,
    );
    return helper.toString();
  }
}

class ListStackSetOperationResultsInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ListStackSetOperationResultsInput> {
  const ListStackSetOperationResultsInputAwsQuerySerializer()
      : super('ListStackSetOperationResultsInput');

  @override
  Iterable<Type> get types => const [
        ListStackSetOperationResultsInput,
        _$ListStackSetOperationResultsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListStackSetOperationResultsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListStackSetOperationResultsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'StackSetName':
          result.stackSetName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'OperationId':
          result.operationId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
          if (value != null) {
            result.maxResults = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'CallAs':
          if (value != null) {
            result.callAs = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.CallAs),
            ) as _i3.CallAs);
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
    final payload = (object as ListStackSetOperationResultsInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ListStackSetOperationResultsInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('StackSetName'))
      ..add(serializers.serialize(
        payload.stackSetName,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('OperationId'))
      ..add(serializers.serialize(
        payload.operationId,
        specifiedType: const FullType(String),
      ));
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.maxResults != null) {
      result
        ..add(const _i1.XmlElementName('MaxResults'))
        ..add(serializers.serialize(
          payload.maxResults!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.callAs != null) {
      result
        ..add(const _i1.XmlElementName('CallAs'))
        ..add(serializers.serialize(
          payload.callAs!,
          specifiedType: const FullType.nullable(_i3.CallAs),
        ));
    }
    return result;
  }
}