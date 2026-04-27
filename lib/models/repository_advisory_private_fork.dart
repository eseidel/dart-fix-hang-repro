import 'package:meta/meta.dart';

/// A temporary private fork of the advisory's repository for collaborating on a
/// fix.
sealed class RepositoryAdvisoryPrivateFork {
  const RepositoryAdvisoryPrivateFork();

  factory RepositoryAdvisoryPrivateFork.fromJson(dynamic json) {
    return switch (json) {
      _ => throw FormatException(
        'Unsupported shape for RepositoryAdvisoryPrivateFork: ${json.runtimeType}',
      ),
    };
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryAdvisoryPrivateFork? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return RepositoryAdvisoryPrivateFork.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}
