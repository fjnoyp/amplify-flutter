import '../notification_types.dart';

class PinpointPayload {
  String campaignId;
  RemotePushNotification notification;

  PinpointPayload({
    required this.campaignId,
    required this.notification,
  });
}
