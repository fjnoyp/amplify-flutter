// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.client_login_banner_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'client_login_banner_options.g.dart';

/// Options for enabling a customizable text banner that will be displayed on Amazon Web Services provided clients when a VPN session is established.
abstract class ClientLoginBannerOptions
    with _i1.AWSEquatable<ClientLoginBannerOptions>
    implements
        Built<ClientLoginBannerOptions, ClientLoginBannerOptionsBuilder> {
  /// Options for enabling a customizable text banner that will be displayed on Amazon Web Services provided clients when a VPN session is established.
  factory ClientLoginBannerOptions({
    bool? enabled,
    String? bannerText,
  }) {
    enabled ??= false;
    return _$ClientLoginBannerOptions._(
      enabled: enabled,
      bannerText: bannerText,
    );
  }

  /// Options for enabling a customizable text banner that will be displayed on Amazon Web Services provided clients when a VPN session is established.
  factory ClientLoginBannerOptions.build(
          [void Function(ClientLoginBannerOptionsBuilder) updates]) =
      _$ClientLoginBannerOptions;

  const ClientLoginBannerOptions._();

  static const List<_i2.SmithySerializer> serializers = [
    ClientLoginBannerOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClientLoginBannerOptionsBuilder b) {
    b.enabled = false;
  }

  /// Enable or disable a customizable text banner that will be displayed on Amazon Web Services provided clients when a VPN session is established.
  ///
  /// Valid values: `true | false`
  ///
  /// Default value: `false`
  bool get enabled;

  /// Customizable text that will be displayed in a banner on Amazon Web Services provided clients when a VPN session is established. UTF-8 encoded characters only. Maximum of 1400 characters.
  String? get bannerText;
  @override
  List<Object?> get props => [
        enabled,
        bannerText,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClientLoginBannerOptions');
    helper.add(
      'enabled',
      enabled,
    );
    helper.add(
      'bannerText',
      bannerText,
    );
    return helper.toString();
  }
}

class ClientLoginBannerOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ClientLoginBannerOptions> {
  const ClientLoginBannerOptionsEc2QuerySerializer()
      : super('ClientLoginBannerOptions');

  @override
  Iterable<Type> get types => const [
        ClientLoginBannerOptions,
        _$ClientLoginBannerOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientLoginBannerOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientLoginBannerOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Enabled':
          result.enabled = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'BannerText':
          if (value != null) {
            result.bannerText = (serializers.deserialize(
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
    final payload = (object as ClientLoginBannerOptions);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ClientLoginBannerOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Enabled'))
      ..add(serializers.serialize(
        payload.enabled,
        specifiedType: const FullType(bool),
      ));
    if (payload.bannerText != null) {
      result
        ..add(const _i2.XmlElementName('BannerText'))
        ..add(serializers.serialize(
          payload.bannerText!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
