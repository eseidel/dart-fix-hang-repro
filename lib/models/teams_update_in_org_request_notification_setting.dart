/// The notification setting the team has chosen. Editing teams without
/// specifying this parameter leaves `notification_setting` intact. The options
/// are:
/// * `notifications_enabled` - team members receive notifications when the team
/// is @mentioned.
///  * `notifications_disabled` - no one receives notifications.
enum TeamsUpdateInOrgRequestNotificationSetting {
  notificationsEnabled._('notifications_enabled'),
  notificationsDisabled._('notifications_disabled');

  const TeamsUpdateInOrgRequestNotificationSetting._(this.value);

  /// Creates a TeamsUpdateInOrgRequestNotificationSetting from a json string.
  factory TeamsUpdateInOrgRequestNotificationSetting.fromJson(String json) {
    return TeamsUpdateInOrgRequestNotificationSetting.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown TeamsUpdateInOrgRequestNotificationSetting value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static TeamsUpdateInOrgRequestNotificationSetting? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return TeamsUpdateInOrgRequestNotificationSetting.fromJson(json);
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
