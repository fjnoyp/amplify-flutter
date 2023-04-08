// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_managed_prefix_list_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/managed_prefix_list.dart'
    as _i2;

part 'delete_managed_prefix_list_result.g.dart';

abstract class DeleteManagedPrefixListResult
    with
        _i1.AWSEquatable<DeleteManagedPrefixListResult>
    implements
        Built<DeleteManagedPrefixListResult,
            DeleteManagedPrefixListResultBuilder> {
  factory DeleteManagedPrefixListResult({_i2.ManagedPrefixList? prefixList}) {
    return _$DeleteManagedPrefixListResult._(prefixList: prefixList);
  }

  factory DeleteManagedPrefixListResult.build(
          [void Function(DeleteManagedPrefixListResultBuilder) updates]) =
      _$DeleteManagedPrefixListResult;

  const DeleteManagedPrefixListResult._();

  /// Constructs a [DeleteManagedPrefixListResult] from a [payload] and [response].
  factory DeleteManagedPrefixListResult.fromResponse(
    DeleteManagedPrefixListResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeleteManagedPrefixListResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteManagedPrefixListResultBuilder b) {}

  /// Information about the prefix list.
  _i2.ManagedPrefixList? get prefixList;
  @override
  List<Object?> get props => [prefixList];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteManagedPrefixListResult');
    helper.add(
      'prefixList',
      prefixList,
    );
    return helper.toString();
  }
}

class DeleteManagedPrefixListResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DeleteManagedPrefixListResult> {
  const DeleteManagedPrefixListResultEc2QuerySerializer()
      : super('DeleteManagedPrefixListResult');

  @override
  Iterable<Type> get types => const [
        DeleteManagedPrefixListResult,
        _$DeleteManagedPrefixListResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteManagedPrefixListResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteManagedPrefixListResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'prefixList':
          if (value != null) {
            result.prefixList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ManagedPrefixList),
            ) as _i2.ManagedPrefixList));
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
    final payload = (object as DeleteManagedPrefixListResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteManagedPrefixListResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.prefixList != null) {
      result
        ..add(const _i3.XmlElementName('PrefixList'))
        ..add(serializers.serialize(
          payload.prefixList!,
          specifiedType: const FullType(_i2.ManagedPrefixList),
        ));
    }
    return result;
  }
}
