// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_managed_prefix_list_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/managed_prefix_list.dart'
    as _i2;

part 'modify_managed_prefix_list_result.g.dart';

abstract class ModifyManagedPrefixListResult
    with
        _i1.AWSEquatable<ModifyManagedPrefixListResult>
    implements
        Built<ModifyManagedPrefixListResult,
            ModifyManagedPrefixListResultBuilder> {
  factory ModifyManagedPrefixListResult({_i2.ManagedPrefixList? prefixList}) {
    return _$ModifyManagedPrefixListResult._(prefixList: prefixList);
  }

  factory ModifyManagedPrefixListResult.build(
          [void Function(ModifyManagedPrefixListResultBuilder) updates]) =
      _$ModifyManagedPrefixListResult;

  const ModifyManagedPrefixListResult._();

  /// Constructs a [ModifyManagedPrefixListResult] from a [payload] and [response].
  factory ModifyManagedPrefixListResult.fromResponse(
    ModifyManagedPrefixListResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ModifyManagedPrefixListResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyManagedPrefixListResultBuilder b) {}

  /// Information about the prefix list.
  _i2.ManagedPrefixList? get prefixList;
  @override
  List<Object?> get props => [prefixList];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyManagedPrefixListResult');
    helper.add(
      'prefixList',
      prefixList,
    );
    return helper.toString();
  }
}

class ModifyManagedPrefixListResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ModifyManagedPrefixListResult> {
  const ModifyManagedPrefixListResultEc2QuerySerializer()
      : super('ModifyManagedPrefixListResult');

  @override
  Iterable<Type> get types => const [
        ModifyManagedPrefixListResult,
        _$ModifyManagedPrefixListResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyManagedPrefixListResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyManagedPrefixListResultBuilder();
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
    final payload = (object as ModifyManagedPrefixListResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ModifyManagedPrefixListResultResponse',
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
