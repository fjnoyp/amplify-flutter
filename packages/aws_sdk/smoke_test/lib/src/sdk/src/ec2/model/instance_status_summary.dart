// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_status_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_status_details.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/summary_status.dart' as _i3;

part 'instance_status_summary.g.dart';

/// Describes the status of an instance.
abstract class InstanceStatusSummary
    with _i1.AWSEquatable<InstanceStatusSummary>
    implements Built<InstanceStatusSummary, InstanceStatusSummaryBuilder> {
  /// Describes the status of an instance.
  factory InstanceStatusSummary({
    List<_i2.InstanceStatusDetails>? details,
    _i3.SummaryStatus? status,
  }) {
    return _$InstanceStatusSummary._(
      details: details == null ? null : _i4.BuiltList(details),
      status: status,
    );
  }

  /// Describes the status of an instance.
  factory InstanceStatusSummary.build(
          [void Function(InstanceStatusSummaryBuilder) updates]) =
      _$InstanceStatusSummary;

  const InstanceStatusSummary._();

  static const List<_i5.SmithySerializer> serializers = [
    InstanceStatusSummaryEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceStatusSummaryBuilder b) {}

  /// The system instance health or application instance health.
  _i4.BuiltList<_i2.InstanceStatusDetails>? get details;

  /// The status.
  _i3.SummaryStatus? get status;
  @override
  List<Object?> get props => [
        details,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceStatusSummary');
    helper.add(
      'details',
      details,
    );
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class InstanceStatusSummaryEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<InstanceStatusSummary> {
  const InstanceStatusSummaryEc2QuerySerializer()
      : super('InstanceStatusSummary');

  @override
  Iterable<Type> get types => const [
        InstanceStatusSummary,
        _$InstanceStatusSummary,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceStatusSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceStatusSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'details':
          if (value != null) {
            result.details.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.InstanceStatusDetails)],
              ),
            ) as _i4.BuiltList<_i2.InstanceStatusDetails>));
          }
          break;
        case 'status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.SummaryStatus),
            ) as _i3.SummaryStatus);
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
    final payload = (object as InstanceStatusSummary);
    final result = <Object?>[
      const _i5.XmlElementName(
        'InstanceStatusSummaryResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.details != null) {
      result
        ..add(const _i5.XmlElementName('Details'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.details!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.InstanceStatusDetails)],
          ),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i5.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i3.SummaryStatus),
        ));
    }
    return result;
  }
}
