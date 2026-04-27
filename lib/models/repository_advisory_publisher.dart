import 'package:meta/meta.dart';

/// The publisher of the advisory.
sealed class RepositoryAdvisoryPublisher {
  const RepositoryAdvisoryPublisher();

  factory RepositoryAdvisoryPublisher.fromJson(dynamic json) {
    return switch (json) {
      _ => throw FormatException(
        'Unsupported shape for RepositoryAdvisoryPublisher: ${json.runtimeType}',
      ),
    };
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryAdvisoryPublisher? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return RepositoryAdvisoryPublisher.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}
