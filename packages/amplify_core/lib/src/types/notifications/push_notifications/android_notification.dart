class AndroidNotification {
  String channelId;
  String color;
  String imageUrl;
  String smallIcon;

// Determine if needed for initial release
  // String ticker;
  // String tag;
  // String sound;
  // AndroidNotificationPriority priority;
  // AndroidNotificationVisibility visibility;
  // String clickAction;

  AndroidNotification({
    required this.channelId,
    required this.color,
    required this.imageUrl,
    required this.smallIcon,
  });
}
