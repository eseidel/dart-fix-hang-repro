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

@immutable
class AppsListInstallationReposForAuthenticatedUser200Response {
  AppsListInstallationReposForAuthenticatedUser200Response({
    required this.totalCount,
    this.repositorySelection,
    required this.repositories,
  });

  /// Converts a `Map<String, dynamic>` to an
  /// [AppsListInstallationReposForAuthenticatedUser200Response].
  factory AppsListInstallationReposForAuthenticatedUser200Response.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'AppsListInstallationReposForAuthenticatedUser200Response',
      json,
      () => AppsListInstallationReposForAuthenticatedUser200Response(
        totalCount: (json['total_count'] as int),
        repositorySelection: json['repository_selection'] as String?,
        repositories: (json['repositories'] as List)
            .map<Repository>(
              (e) => Repository.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppsListInstallationReposForAuthenticatedUser200Response?
  maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return AppsListInstallationReposForAuthenticatedUser200Response.fromJson(
      json,
    );
  }

  final int totalCount;
  final String? repositorySelection;
  final List<Repository> repositories;

  /// Converts an [AppsListInstallationReposForAuthenticatedUser200Response]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'repository_selection': repositorySelection,
      'repositories': repositories.map((e) => e.toJson()).toList(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    totalCount,
    repositorySelection,
    listHash(repositories),
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AppsListInstallationReposForAuthenticatedUser200Response &&
        this.totalCount == other.totalCount &&
        this.repositorySelection == other.repositorySelection &&
        listsEqual(this.repositories, other.repositories);
  }
}
