// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.http_tokens_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class HttpTokensState extends _i1.SmithyEnum<HttpTokensState> {
  const HttpTokensState._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const HttpTokensState._sdkUnknown(String value) : super.sdkUnknown(value);

  static const optional = HttpTokensState._(
    0,
    'optional',
    'optional',
  );

  static const required = HttpTokensState._(
    1,
    'required',
    'required',
  );

  /// All values of [HttpTokensState].
  static const values = <HttpTokensState>[
    HttpTokensState.optional,
    HttpTokensState.required,
  ];

  static const List<_i1.SmithySerializer<HttpTokensState>> serializers = [
    _i1.SmithyEnumSerializer(
      'HttpTokensState',
      values: values,
      sdkUnknown: HttpTokensState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension HttpTokensStateHelpers on List<HttpTokensState> {
  /// Returns the value of [HttpTokensState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  HttpTokensState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [HttpTokensState] whose value matches [value].
  HttpTokensState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
