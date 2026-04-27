/// The notification setting the team has set
/// example: `'notifications_enabled'`
enum TeamFullNotificationSetting {
  notificationsEnabled._('notifications_enabled'),
  notificationsDisabled._('notifications_disabled');

  const TeamFullNotificationSetting._(this.value);

  /// Creates a TeamFullNotificationSetting from a json string.
  factory TeamFullNotificationSetting.fromJson(String json) {
    return TeamFullNotificationSetting.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown TeamFullNotificationSetting value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static TeamFullNotificationSetting? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return TeamFullNotificationSetting.fromJson(json);
  }

  /// The value of the enum, as a string.  This is the exact value
  /// from the OpenAPI spec and will be used for network transport.
  final String value;

  /// Converts the enum to a json string.
  String toJson() => value;

  /// Returns the string value of the enum.
  @override
  String toString() => value;
}
