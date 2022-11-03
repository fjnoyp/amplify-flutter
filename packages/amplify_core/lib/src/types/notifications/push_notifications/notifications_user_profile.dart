class NotificationsUserProfile {
// EndpointUser user;

// Rest are endpoint specific fields which can be put into it's own class
  dynamic demographic;
// EndpointLocation location;
  Map<String, double> metrics;
  String? optOut;

// User attributes or endpoint attributes?
  Map<String, List<String>> attributes;

// Should we expose this?
  String address;

  NotificationsUserProfile({
    required this.demographic,
    required this.metrics,
    required this.optOut,
    required this.attributes,
    required this.address,
  });
}
