// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.service_specific_credential; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/status_type.dart' as _i2;

part 'service_specific_credential.g.dart';

/// Contains the details of a service-specific credential.
abstract class ServiceSpecificCredential
    with _i1.AWSEquatable<ServiceSpecificCredential>
    implements
        Built<ServiceSpecificCredential, ServiceSpecificCredentialBuilder> {
  /// Contains the details of a service-specific credential.
  factory ServiceSpecificCredential({
    required DateTime createDate,
    required String serviceName,
    required String serviceUserName,
    required String servicePassword,
    required String serviceSpecificCredentialId,
    required String userName,
    required _i2.StatusType status,
  }) {
    return _$ServiceSpecificCredential._(
      createDate: createDate,
      serviceName: serviceName,
      serviceUserName: serviceUserName,
      servicePassword: servicePassword,
      serviceSpecificCredentialId: serviceSpecificCredentialId,
      userName: userName,
      status: status,
    );
  }

  /// Contains the details of a service-specific credential.
  factory ServiceSpecificCredential.build(
          [void Function(ServiceSpecificCredentialBuilder) updates]) =
      _$ServiceSpecificCredential;

  const ServiceSpecificCredential._();

  static const List<_i3.SmithySerializer> serializers = [
    ServiceSpecificCredentialAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServiceSpecificCredentialBuilder b) {}

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the service-specific credential were created.
  DateTime get createDate;

  /// The name of the service associated with the service-specific credential.
  String get serviceName;

  /// The generated user name for the service-specific credential. This value is generated by combining the IAM user's name combined with the ID number of the Amazon Web Services account, as in `jane-at-123456789012`, for example. This value cannot be configured by the user.
  String get serviceUserName;

  /// The generated password for the service-specific credential.
  String get servicePassword;

  /// The unique identifier for the service-specific credential.
  String get serviceSpecificCredentialId;

  /// The name of the IAM user associated with the service-specific credential.
  String get userName;

  /// The status of the service-specific credential. `Active` means that the key is valid for API calls, while `Inactive` means it is not.
  _i2.StatusType get status;
  @override
  List<Object?> get props => [
        createDate,
        serviceName,
        serviceUserName,
        servicePassword,
        serviceSpecificCredentialId,
        userName,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ServiceSpecificCredential');
    helper.add(
      'createDate',
      createDate,
    );
    helper.add(
      'serviceName',
      serviceName,
    );
    helper.add(
      'serviceUserName',
      serviceUserName,
    );
    helper.add(
      'servicePassword',
      '***SENSITIVE***',
    );
    helper.add(
      'serviceSpecificCredentialId',
      serviceSpecificCredentialId,
    );
    helper.add(
      'userName',
      userName,
    );
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class ServiceSpecificCredentialAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ServiceSpecificCredential> {
  const ServiceSpecificCredentialAwsQuerySerializer()
      : super('ServiceSpecificCredential');

  @override
  Iterable<Type> get types => const [
        ServiceSpecificCredential,
        _$ServiceSpecificCredential,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ServiceSpecificCredential deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceSpecificCredentialBuilder();
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
        case 'CreateDate':
          result.createDate = (serializers.deserialize(
            value!,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
          break;
        case 'ServiceName':
          result.serviceName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ServiceUserName':
          result.serviceUserName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ServicePassword':
          result.servicePassword = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ServiceSpecificCredentialId':
          result.serviceSpecificCredentialId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'UserName':
          result.userName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Status':
          result.status = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.StatusType),
          ) as _i2.StatusType);
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
    final payload = (object as ServiceSpecificCredential);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ServiceSpecificCredentialResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('CreateDate'))
      ..add(serializers.serialize(
        payload.createDate,
        specifiedType: const FullType.nullable(DateTime),
      ));
    result
      ..add(const _i3.XmlElementName('ServiceName'))
      ..add(serializers.serialize(
        payload.serviceName,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i3.XmlElementName('ServiceUserName'))
      ..add(serializers.serialize(
        payload.serviceUserName,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i3.XmlElementName('ServicePassword'))
      ..add(serializers.serialize(
        payload.servicePassword,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i3.XmlElementName('ServiceSpecificCredentialId'))
      ..add(serializers.serialize(
        payload.serviceSpecificCredentialId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i3.XmlElementName('UserName'))
      ..add(serializers.serialize(
        payload.userName,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i3.XmlElementName('Status'))
      ..add(serializers.serialize(
        payload.status,
        specifiedType: const FullType.nullable(_i2.StatusType),
      ));
    return result;
  }
}
