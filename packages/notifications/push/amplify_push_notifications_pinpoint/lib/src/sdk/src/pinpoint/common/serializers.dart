// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_push_notifications_pinpoint.pinpoint.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/bad_request_exception.dart'
    as _i17;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/channel_type.dart'
    as _i2;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/endpoint_demographic.dart'
    as _i3;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/endpoint_item_response.dart'
    as _i12;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/endpoint_location.dart'
    as _i4;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/endpoint_request.dart'
    as _i24;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/endpoint_user.dart'
    as _i5;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/event.dart'
    as _i8;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/event_item_response.dart'
    as _i13;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/events_batch.dart'
    as _i9;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/events_request.dart'
    as _i10;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/events_response.dart'
    as _i15;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/forbidden_exception.dart'
    as _i18;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/internal_server_error_exception.dart'
    as _i19;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/item_response.dart'
    as _i14;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/message_body.dart'
    as _i26;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/method_not_allowed_exception.dart'
    as _i20;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/not_found_exception.dart'
    as _i21;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/payload_too_large_exception.dart'
    as _i22;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/public_endpoint.dart'
    as _i6;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/put_events_request.dart'
    as _i11;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/put_events_response.dart'
    as _i16;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/session.dart'
    as _i7;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/too_many_requests_exception.dart'
    as _i23;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/update_endpoint_request.dart'
    as _i25;
import 'package:amplify_push_notifications_pinpoint/src/sdk/src/pinpoint/model/update_endpoint_response.dart'
    as _i27;
import 'package:built_collection/built_collection.dart' as _i28;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.ChannelType.serializers,
  ..._i3.EndpointDemographic.serializers,
  ..._i4.EndpointLocation.serializers,
  ..._i5.EndpointUser.serializers,
  ..._i6.PublicEndpoint.serializers,
  ..._i7.Session.serializers,
  ..._i8.Event.serializers,
  ..._i9.EventsBatch.serializers,
  ..._i10.EventsRequest.serializers,
  ..._i11.PutEventsRequest.serializers,
  ..._i12.EndpointItemResponse.serializers,
  ..._i13.EventItemResponse.serializers,
  ..._i14.ItemResponse.serializers,
  ..._i15.EventsResponse.serializers,
  ..._i16.PutEventsResponse.serializers,
  ..._i17.BadRequestException.serializers,
  ..._i18.ForbiddenException.serializers,
  ..._i19.InternalServerErrorException.serializers,
  ..._i20.MethodNotAllowedException.serializers,
  ..._i21.NotFoundException.serializers,
  ..._i22.PayloadTooLargeException.serializers,
  ..._i23.TooManyRequestsException.serializers,
  ..._i24.EndpointRequest.serializers,
  ..._i25.UpdateEndpointRequest.serializers,
  ..._i26.MessageBody.serializers,
  ..._i27.UpdateEndpointResponse.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i28.BuiltListMultimap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i28.ListMultimapBuilder<String, String>.new,
  const FullType(
    _i28.BuiltMap,
    [
      FullType(String),
      FullType(double),
    ],
  ): _i28.MapBuilder<String, double>.new,
  const FullType(
    _i28.BuiltMap,
    [
      FullType(String),
      FullType(String),
    ],
  ): _i28.MapBuilder<String, String>.new,
  const FullType(
    _i28.BuiltMap,
    [
      FullType(String),
      FullType(_i8.Event),
    ],
  ): _i28.MapBuilder<String, _i8.Event>.new,
  const FullType(
    _i28.BuiltMap,
    [
      FullType(String),
      FullType(_i9.EventsBatch),
    ],
  ): _i28.MapBuilder<String, _i9.EventsBatch>.new,
  const FullType(
    _i28.BuiltMap,
    [
      FullType(String),
      FullType(_i13.EventItemResponse),
    ],
  ): _i28.MapBuilder<String, _i13.EventItemResponse>.new,
  const FullType(
    _i28.BuiltMap,
    [
      FullType(String),
      FullType(_i14.ItemResponse),
    ],
  ): _i28.MapBuilder<String, _i14.ItemResponse>.new,
};
