// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_push_notifications_pinpoint.pinpoint.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/bad_request_exception.dart'
    as _i10;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/channel_type.dart'
    as _i2;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/endpoint_demographic.dart'
    as _i3;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/endpoint_location.dart'
    as _i4;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/endpoint_request.dart'
    as _i6;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/endpoint_user.dart'
    as _i5;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/forbidden_exception.dart'
    as _i11;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/internal_server_error_exception.dart'
    as _i12;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/message_body.dart'
    as _i8;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/method_not_allowed_exception.dart'
    as _i13;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/not_found_exception.dart'
    as _i14;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/payload_too_large_exception.dart'
    as _i15;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/too_many_requests_exception.dart'
    as _i16;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/update_endpoint_request.dart'
    as _i7;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/update_endpoint_response.dart'
    as _i9;
import 'package:built_collection/built_collection.dart' as _i17;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.ChannelType.serializers,
  ..._i3.EndpointDemographic.serializers,
  ..._i4.EndpointLocation.serializers,
  ..._i5.EndpointUser.serializers,
  ..._i6.EndpointRequest.serializers,
  ..._i7.UpdateEndpointRequest.serializers,
  ..._i8.MessageBody.serializers,
  ..._i9.UpdateEndpointResponse.serializers,
  ..._i10.BadRequestException.serializers,
  ..._i11.ForbiddenException.serializers,
  ..._i12.InternalServerErrorException.serializers,
  ..._i13.MethodNotAllowedException.serializers,
  ..._i14.NotFoundException.serializers,
  ..._i15.PayloadTooLargeException.serializers,
  ..._i16.TooManyRequestsException.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i17.BuiltListMultimap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i17.ListMultimapBuilder<String, String>.new,
  const FullType(
    _i17.BuiltMap,
    [
      FullType(String),
      FullType(double),
    ],
  ): _i17.MapBuilder<String, double>.new,
};
