/// The hosted compute service the network configuration supports.
enum NetworkConfigurationComputeService {
  none._('none'),
  actions._('actions'),
  codespaces._('codespaces');

  const NetworkConfigurationComputeService._(this.value);

  /// Creates a NetworkConfigurationComputeService from a json string.
  factory NetworkConfigurationComputeService.fromJson(String json) {
    return NetworkConfigurationComputeService.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown NetworkConfigurationComputeService value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static NetworkConfigurationComputeService? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return NetworkConfigurationComputeService.fromJson(json);
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
