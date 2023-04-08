// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.validation_warning; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/validation_error.dart' as _i2;

part 'validation_warning.g.dart';

/// The error codes and error messages that are returned for the parameters or parameter combinations that are not valid when a new launch template or new version of a launch template is created.
abstract class ValidationWarning
    with _i1.AWSEquatable<ValidationWarning>
    implements Built<ValidationWarning, ValidationWarningBuilder> {
  /// The error codes and error messages that are returned for the parameters or parameter combinations that are not valid when a new launch template or new version of a launch template is created.
  factory ValidationWarning({List<_i2.ValidationError>? errors}) {
    return _$ValidationWarning._(
        errors: errors == null ? null : _i3.BuiltList(errors));
  }

  /// The error codes and error messages that are returned for the parameters or parameter combinations that are not valid when a new launch template or new version of a launch template is created.
  factory ValidationWarning.build(
      [void Function(ValidationWarningBuilder) updates]) = _$ValidationWarning;

  const ValidationWarning._();

  static const List<_i4.SmithySerializer> serializers = [
    ValidationWarningEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ValidationWarningBuilder b) {}

  /// The error codes and error messages.
  _i3.BuiltList<_i2.ValidationError>? get errors;
  @override
  List<Object?> get props => [errors];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ValidationWarning');
    helper.add(
      'errors',
      errors,
    );
    return helper.toString();
  }
}

class ValidationWarningEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<ValidationWarning> {
  const ValidationWarningEc2QuerySerializer() : super('ValidationWarning');

  @override
  Iterable<Type> get types => const [
        ValidationWarning,
        _$ValidationWarning,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ValidationWarning deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidationWarningBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'errorSet':
          if (value != null) {
            result.errors.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ValidationError)],
              ),
            ) as _i3.BuiltList<_i2.ValidationError>));
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
    final payload = (object as ValidationWarning);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ValidationWarningResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.errors != null) {
      result
        ..add(const _i4.XmlElementName('ErrorSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.errors!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ValidationError)],
          ),
        ));
    }
    return result;
  }
}
