// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_instance_credit_specification_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/successful_instance_credit_specification_item.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_instance_credit_specification_item.dart'
    as _i3;

part 'modify_instance_credit_specification_result.g.dart';

abstract class ModifyInstanceCreditSpecificationResult
    with
        _i1.AWSEquatable<ModifyInstanceCreditSpecificationResult>
    implements
        Built<ModifyInstanceCreditSpecificationResult,
            ModifyInstanceCreditSpecificationResultBuilder> {
  factory ModifyInstanceCreditSpecificationResult({
    List<_i2.SuccessfulInstanceCreditSpecificationItem>?
        successfulInstanceCreditSpecifications,
    List<_i3.UnsuccessfulInstanceCreditSpecificationItem>?
        unsuccessfulInstanceCreditSpecifications,
  }) {
    return _$ModifyInstanceCreditSpecificationResult._(
      successfulInstanceCreditSpecifications:
          successfulInstanceCreditSpecifications == null
              ? null
              : _i4.BuiltList(successfulInstanceCreditSpecifications),
      unsuccessfulInstanceCreditSpecifications:
          unsuccessfulInstanceCreditSpecifications == null
              ? null
              : _i4.BuiltList(unsuccessfulInstanceCreditSpecifications),
    );
  }

  factory ModifyInstanceCreditSpecificationResult.build(
      [void Function(ModifyInstanceCreditSpecificationResultBuilder)
          updates]) = _$ModifyInstanceCreditSpecificationResult;

  const ModifyInstanceCreditSpecificationResult._();

  /// Constructs a [ModifyInstanceCreditSpecificationResult] from a [payload] and [response].
  factory ModifyInstanceCreditSpecificationResult.fromResponse(
    ModifyInstanceCreditSpecificationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    ModifyInstanceCreditSpecificationResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyInstanceCreditSpecificationResultBuilder b) {}

  /// Information about the instances whose credit option for CPU usage was successfully modified.
  _i4.BuiltList<_i2.SuccessfulInstanceCreditSpecificationItem>?
      get successfulInstanceCreditSpecifications;

  /// Information about the instances whose credit option for CPU usage was not modified.
  _i4.BuiltList<_i3.UnsuccessfulInstanceCreditSpecificationItem>?
      get unsuccessfulInstanceCreditSpecifications;
  @override
  List<Object?> get props => [
        successfulInstanceCreditSpecifications,
        unsuccessfulInstanceCreditSpecifications,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyInstanceCreditSpecificationResult');
    helper.add(
      'successfulInstanceCreditSpecifications',
      successfulInstanceCreditSpecifications,
    );
    helper.add(
      'unsuccessfulInstanceCreditSpecifications',
      unsuccessfulInstanceCreditSpecifications,
    );
    return helper.toString();
  }
}

class ModifyInstanceCreditSpecificationResultEc2QuerySerializer extends _i5
    .StructuredSmithySerializer<ModifyInstanceCreditSpecificationResult> {
  const ModifyInstanceCreditSpecificationResultEc2QuerySerializer()
      : super('ModifyInstanceCreditSpecificationResult');

  @override
  Iterable<Type> get types => const [
        ModifyInstanceCreditSpecificationResult,
        _$ModifyInstanceCreditSpecificationResult,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyInstanceCreditSpecificationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyInstanceCreditSpecificationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'successfulInstanceCreditSpecificationSet':
          if (value != null) {
            result.successfulInstanceCreditSpecifications
                .replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.SuccessfulInstanceCreditSpecificationItem)],
              ),
            ) as _i4.BuiltList<_i2.SuccessfulInstanceCreditSpecificationItem>));
          }
          break;
        case 'unsuccessfulInstanceCreditSpecificationSet':
          if (value != null) {
            result.unsuccessfulInstanceCreditSpecifications.replace(
                (const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.UnsuccessfulInstanceCreditSpecificationItem)],
              ),
            ) as _i4.BuiltList<
                    _i3.UnsuccessfulInstanceCreditSpecificationItem>));
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
    final payload = (object as ModifyInstanceCreditSpecificationResult);
    final result = <Object?>[
      const _i5.XmlElementName(
        'ModifyInstanceCreditSpecificationResultResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.successfulInstanceCreditSpecifications != null) {
      result
        ..add(const _i5.XmlElementName(
            'SuccessfulInstanceCreditSpecificationSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.successfulInstanceCreditSpecifications!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.SuccessfulInstanceCreditSpecificationItem)],
          ),
        ));
    }
    if (payload.unsuccessfulInstanceCreditSpecifications != null) {
      result
        ..add(const _i5.XmlElementName(
            'UnsuccessfulInstanceCreditSpecificationSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.unsuccessfulInstanceCreditSpecifications!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.UnsuccessfulInstanceCreditSpecificationItem)],
          ),
        ));
    }
    return result;
  }
}
