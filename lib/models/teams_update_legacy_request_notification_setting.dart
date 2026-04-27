/// The notification setting the team has chosen. Editing teams without
/// specifying this parameter leaves `notification_setting` intact. The options
/// are:
/// * `notifications_enabled` - team members receive notifications when the team
/// is @mentioned.
///  * `notifications_disabled` - no one receives notifications.
enum TeamsUpdateLegacyRequestNotificationSetting {
  notificationsEnabled._('notifications_enabled'),
  notificationsDisabled._('notifications_disabled');

  const TeamsUpdateLegacyRequestNotificationSetting._(this.value);

  /// Creates a TeamsUpdateLegacyRequestNotificationSetting from a json string.
  factory TeamsUpdateLegacyRequestNotificationSetting.fromJson(String json) {
    return TeamsUpdateLegacyRequestNotificationSetting.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown TeamsUpdateLegacyRequestNotificationSetting value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static TeamsUpdateLegacyRequestNotificationSetting? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return TeamsUpdateLegacyRequestNotificationSetting.fromJson(json);
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
