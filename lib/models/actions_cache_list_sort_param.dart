enum ActionsCacheListSortParam {
  createdAt._('created_at'),
  lastAccessedAt._('last_accessed_at'),
  sizeInBytes._('size_in_bytes');

  const ActionsCacheListSortParam._(this.value);

  /// Creates a ActionsCacheListSortParam from a json string.
  factory ActionsCacheListSortParam.fromJson(String json) {
    return ActionsCacheListSortParam.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ActionsCacheListSortParam value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ActionsCacheListSortParam? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ActionsCacheListSortParam.fromJson(json);
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
