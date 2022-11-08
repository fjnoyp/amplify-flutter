// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_push_notifications_pinpoint.pinpoint.pinpoint_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/update_endpoint_request.dart'
    as _i5;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/update_endpoint_response.dart'
    as _i4;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/operation/update_endpoint_operation.dart'
    as _i6;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

/// Doc Engage API - Amazon Pinpoint API
class PinpointClient {
  /// Doc Engage API - Amazon Pinpoint API
  const PinpointClient({
    _i1.AWSHttpClient? client,
    required String region,
    Uri? baseUri,
    required _i2.AWSCredentialsProvider credentialsProvider,
  })  : _client = client,
        _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  final _i1.AWSHttpClient? _client;

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  /// Creates a new endpoint for an application or updates the settings and attributes of an existing endpoint for an application. You can also use this operation to define custom attributes for an endpoint. If an update includes one or more values for a custom attribute, Amazon Pinpoint replaces (overwrites) any existing values with the new values.
  _i3.SmithyOperation<_i4.UpdateEndpointResponse> updateEndpoint(
    _i5.UpdateEndpointRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i6.UpdateEndpointOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }
}
