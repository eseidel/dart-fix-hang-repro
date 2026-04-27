import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_deletion_type.dart';
import 'package:meta/meta.dart';

/// {@template repository_rule_deletion}
/// deletion
/// Only allow users with bypass permissions to delete matching refs.
/// {@endtemplate}
@immutable
class RepositoryRuleDeletion {
  /// {@macro repository_rule_deletion}
  RepositoryRuleDeletion({
    required this.type,
  });

  /// Converts a `Map<String, dynamic>` to a [RepositoryRuleDeletion].
  factory RepositoryRuleDeletion.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RepositoryRuleDeletion',
      json,
      () => RepositoryRuleDeletion(
        type: RepositoryRuleDeletionType.fromJson(json['type'] as String),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleDeletion? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleDeletion.fromJson(json);
  }

  final RepositoryRuleDeletionType type;

  /// Converts a [RepositoryRuleDeletion] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
    };
  }

  @override
  int get hashCode => type.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDeletion && this.type == other.type;
  }
}
