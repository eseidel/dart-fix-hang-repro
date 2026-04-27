import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/license_simple.dart';
import 'package:github_out/models/repository.dart';
import 'package:github_out/models/repository_code_search_index_status.dart';
import 'package:github_out/models/repository_merge_commit_message.dart';
import 'package:github_out/models/repository_merge_commit_title.dart';
import 'package:github_out/models/repository_permissions.dart';
import 'package:github_out/models/repository_squash_merge_commit_message.dart';
import 'package:github_out/models/repository_squash_merge_commit_title.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template starred_repository}
/// Starred Repository
/// Starred Repository
/// {@endtemplate}
@immutable
class StarredRepository {
  /// {@macro starred_repository}
  StarredRepository({
    required this.starredAt,
    required this.repo,
  });

  /// Converts a `Map<String, dynamic>` to a [StarredRepository].
  factory StarredRepository.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'StarredRepository',
      json,
      () => StarredRepository(
        starredAt: DateTime.parse(json['starred_at'] as String),
        repo: Repository.fromJson(json['repo'] as Map<String, dynamic>),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static StarredRepository? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return StarredRepository.fromJson(json);
  }

  final DateTime starredAt;

  /// Repository
  /// A repository on GitHub.
  final Repository repo;

  /// Converts a [StarredRepository] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'starred_at': starredAt.toIso8601String(),
      'repo': repo.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    starredAt,
    repo,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is StarredRepository &&
        this.starredAt == other.starredAt &&
        this.repo == other.repo;
  }
}
