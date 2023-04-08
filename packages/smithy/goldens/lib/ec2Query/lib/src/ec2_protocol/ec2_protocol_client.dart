// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library ec2_query_v1.ec2_protocol.ec2_protocol_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:ec2_query_v1/src/ec2_protocol/model/datetime_offsets_output.dart'
    as _i3;
import 'package:ec2_query_v1/src/ec2_protocol/model/empty_input_and_empty_output_input.dart'
    as _i6;
import 'package:ec2_query_v1/src/ec2_protocol/model/empty_input_and_empty_output_output.dart'
    as _i5;
import 'package:ec2_query_v1/src/ec2_protocol/model/fractional_seconds_output.dart'
    as _i11;
import 'package:ec2_query_v1/src/ec2_protocol/model/greeting_with_errors_output.dart'
    as _i13;
import 'package:ec2_query_v1/src/ec2_protocol/model/host_label_input.dart'
    as _i9;
import 'package:ec2_query_v1/src/ec2_protocol/model/ignores_wrapping_xml_name_output.dart'
    as _i16;
import 'package:ec2_query_v1/src/ec2_protocol/model/nested_structures_input.dart'
    as _i18;
import 'package:ec2_query_v1/src/ec2_protocol/model/no_input_and_output_output.dart'
    as _i20;
import 'package:ec2_query_v1/src/ec2_protocol/model/query_idempotency_token_auto_fill_input.dart'
    as _i22;
import 'package:ec2_query_v1/src/ec2_protocol/model/query_lists_input.dart'
    as _i24;
import 'package:ec2_query_v1/src/ec2_protocol/model/query_timestamps_input.dart'
    as _i26;
import 'package:ec2_query_v1/src/ec2_protocol/model/recursive_xml_shapes_output.dart'
    as _i28;
import 'package:ec2_query_v1/src/ec2_protocol/model/simple_input_params_input.dart'
    as _i30;
import 'package:ec2_query_v1/src/ec2_protocol/model/simple_scalar_xml_properties_output.dart'
    as _i32;
import 'package:ec2_query_v1/src/ec2_protocol/model/xml_blobs_output.dart'
    as _i34;
import 'package:ec2_query_v1/src/ec2_protocol/model/xml_enums_output.dart'
    as _i39;
import 'package:ec2_query_v1/src/ec2_protocol/model/xml_int_enums_output.dart'
    as _i41;
import 'package:ec2_query_v1/src/ec2_protocol/model/xml_lists_output.dart'
    as _i37;
import 'package:ec2_query_v1/src/ec2_protocol/model/xml_namespaces_output.dart'
    as _i44;
import 'package:ec2_query_v1/src/ec2_protocol/model/xml_timestamps_output.dart'
    as _i46;
import 'package:ec2_query_v1/src/ec2_protocol/operation/datetime_offsets_operation.dart'
    as _i4;
import 'package:ec2_query_v1/src/ec2_protocol/operation/empty_input_and_empty_output_operation.dart'
    as _i7;
import 'package:ec2_query_v1/src/ec2_protocol/operation/endpoint_operation.dart'
    as _i8;
import 'package:ec2_query_v1/src/ec2_protocol/operation/endpoint_with_host_label_operation.dart'
    as _i10;
import 'package:ec2_query_v1/src/ec2_protocol/operation/fractional_seconds_operation.dart'
    as _i12;
import 'package:ec2_query_v1/src/ec2_protocol/operation/greeting_with_errors_operation.dart'
    as _i14;
import 'package:ec2_query_v1/src/ec2_protocol/operation/host_with_path_operation.dart'
    as _i15;
import 'package:ec2_query_v1/src/ec2_protocol/operation/ignores_wrapping_xml_name_operation.dart'
    as _i17;
import 'package:ec2_query_v1/src/ec2_protocol/operation/nested_structures_operation.dart'
    as _i19;
import 'package:ec2_query_v1/src/ec2_protocol/operation/no_input_and_output_operation.dart'
    as _i21;
import 'package:ec2_query_v1/src/ec2_protocol/operation/query_idempotency_token_auto_fill_operation.dart'
    as _i23;
import 'package:ec2_query_v1/src/ec2_protocol/operation/query_lists_operation.dart'
    as _i25;
import 'package:ec2_query_v1/src/ec2_protocol/operation/query_timestamps_operation.dart'
    as _i27;
import 'package:ec2_query_v1/src/ec2_protocol/operation/recursive_xml_shapes_operation.dart'
    as _i29;
import 'package:ec2_query_v1/src/ec2_protocol/operation/simple_input_params_operation.dart'
    as _i31;
import 'package:ec2_query_v1/src/ec2_protocol/operation/simple_scalar_xml_properties_operation.dart'
    as _i33;
import 'package:ec2_query_v1/src/ec2_protocol/operation/xml_blobs_operation.dart'
    as _i35;
import 'package:ec2_query_v1/src/ec2_protocol/operation/xml_empty_blobs_operation.dart'
    as _i36;
import 'package:ec2_query_v1/src/ec2_protocol/operation/xml_empty_lists_operation.dart'
    as _i38;
import 'package:ec2_query_v1/src/ec2_protocol/operation/xml_enums_operation.dart'
    as _i40;
import 'package:ec2_query_v1/src/ec2_protocol/operation/xml_int_enums_operation.dart'
    as _i42;
import 'package:ec2_query_v1/src/ec2_protocol/operation/xml_lists_operation.dart'
    as _i43;
import 'package:ec2_query_v1/src/ec2_protocol/operation/xml_namespaces_operation.dart'
    as _i45;
import 'package:ec2_query_v1/src/ec2_protocol/operation/xml_timestamps_operation.dart'
    as _i47;
import 'package:smithy/smithy.dart' as _i2;

/// An EC2 query service that sends query requests and XML responses.
class Ec2ProtocolClient {
  /// An EC2 query service that sends query requests and XML responses.
  const Ec2ProtocolClient({
    _i1.AWSHttpClient? client,
    required String region,
    Uri? baseUri,
    List<_i2.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i2.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _client = client,
        _region = region,
        _baseUri = baseUri,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  final _i1.AWSHttpClient? _client;

  final String _region;

  final Uri? _baseUri;

  final List<_i2.HttpRequestInterceptor> _requestInterceptors;

  final List<_i2.HttpResponseInterceptor> _responseInterceptors;

  _i2.SmithyOperation<_i3.DatetimeOffsetsOutput> datetimeOffsets(
      {_i1.AWSHttpClient? client}) {
    return _i4.DatetimeOffsetsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// The example tests how requests and responses are serialized when there's no request or response members. While this should be rare, code generators must support this.
  _i2.SmithyOperation<_i5.EmptyInputAndEmptyOutputOutput>
      emptyInputAndEmptyOutput(
    _i6.EmptyInputAndEmptyOutputInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i7.EmptyInputAndEmptyOutputOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> endpointOperation({_i1.AWSHttpClient? client}) {
    return _i8.EndpointOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> endpointWithHostLabelOperation(
    _i9.HostLabelInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i10.EndpointWithHostLabelOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<_i11.FractionalSecondsOutput> fractionalSeconds(
      {_i1.AWSHttpClient? client}) {
    return _i12.FractionalSecondsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// This operation has three possible return values: 1. A successful response in the form of GreetingWithErrorsOutput 2. An InvalidGreeting error. 3. A BadRequest error.
  _i2.SmithyOperation<_i13.GreetingWithErrorsOutput> greetingWithErrors(
      {_i1.AWSHttpClient? client}) {
    return _i14.GreetingWithErrorsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<void> hostWithPathOperation({_i1.AWSHttpClient? client}) {
    return _i15.HostWithPathOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// The xmlName trait on the output structure is ignored in AWS Query. The wrapping element is always operation name + "Response".
  _i2.SmithyOperation<_i16.IgnoresWrappingXmlNameOutput> ignoresWrappingXmlName(
      {_i1.AWSHttpClient? client}) {
    return _i17.IgnoresWrappingXmlNameOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// This test serializes nested and recursive structure members.
  _i2.SmithyOperation<void> nestedStructures(
    _i18.NestedStructuresInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i19.NestedStructuresOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// The example tests how requests and responses are serialized when there's no request payload or response members. While this should be rare, code generators must support this.
  _i2.SmithyOperation<_i20.NoInputAndOutputOutput> noInputAndOutput(
      {_i1.AWSHttpClient? client}) {
    return _i21.NoInputAndOutputOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// Automatically adds idempotency tokens.
  _i2.SmithyOperation<void> queryIdempotencyTokenAutoFill(
    _i22.QueryIdempotencyTokenAutoFillInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i23.QueryIdempotencyTokenAutoFillOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This test serializes simple and complex lists.
  _i2.SmithyOperation<void> queryLists(
    _i24.QueryListsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i25.QueryListsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This test serializes timestamps. 1. Timestamps are serialized as RFC 3339 date-time values by default. 2. A timestampFormat trait on a member changes the format. 3. A timestampFormat trait on the shape targeted by the member changes the format.
  _i2.SmithyOperation<void> queryTimestamps(
    _i26.QueryTimestampsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i27.QueryTimestampsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Recursive shapes
  _i2.SmithyOperation<_i28.RecursiveXmlShapesOutput> recursiveXmlShapes(
      {_i1.AWSHttpClient? client}) {
    return _i29.RecursiveXmlShapesOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// This test serializes strings, numbers, and boolean values.
  _i2.SmithyOperation<void> simpleInputParams(
    _i30.SimpleInputParamsInput input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i31.SimpleInputParamsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<_i32.SimpleScalarXmlPropertiesOutput>
      simpleScalarXmlProperties({_i1.AWSHttpClient? client}) {
    return _i33.SimpleScalarXmlPropertiesOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// Blobs are base64 encoded
  _i2.SmithyOperation<_i34.XmlBlobsOutput> xmlBlobs(
      {_i1.AWSHttpClient? client}) {
    return _i35.XmlBlobsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<_i34.XmlBlobsOutput> xmlEmptyBlobs(
      {_i1.AWSHttpClient? client}) {
    return _i36.XmlEmptyBlobsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<_i37.XmlListsOutput> xmlEmptyLists(
      {_i1.AWSHttpClient? client}) {
    return _i38.XmlEmptyListsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// This example serializes enums as top level properties, in lists, sets, and maps.
  _i2.SmithyOperation<_i39.XmlEnumsOutput> xmlEnums(
      {_i1.AWSHttpClient? client}) {
    return _i40.XmlEnumsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// This example serializes intEnums as top level properties, in lists, sets, and maps.
  _i2.SmithyOperation<_i41.XmlIntEnumsOutput> xmlIntEnums(
      {_i1.AWSHttpClient? client}) {
    return _i42.XmlIntEnumsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// This test case serializes XML lists for the following cases for both input and output: 1. Normal XML lists. 2. Normal XML sets. 3. XML lists of lists. 4. XML lists with @xmlName on its members 5. Flattened XML lists. 6. Flattened XML lists with @xmlName. 7. Flattened XML lists with @xmlNamespace. 8. Lists of structures.
  _i2.SmithyOperation<_i37.XmlListsOutput> xmlLists(
      {_i1.AWSHttpClient? client}) {
    return _i43.XmlListsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  _i2.SmithyOperation<_i44.XmlNamespacesOutput> xmlNamespaces(
      {_i1.AWSHttpClient? client}) {
    return _i45.XmlNamespacesOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }

  /// This tests how timestamps are serialized, including using the default format of date-time and various @timestampFormat trait values.
  _i2.SmithyOperation<_i46.XmlTimestampsOutput> xmlTimestamps(
      {_i1.AWSHttpClient? client}) {
    return _i47.XmlTimestampsOperation(
      region: _region,
      baseUri: _baseUri,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      const _i2.Unit(),
      client: client ?? _client,
    );
  }
}
