import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/code_scanning_variant_analysis_repository.dart';
import 'package:github_out/models/code_scanning_variant_analysis_skipped_repo_group.dart';
import 'package:github_out/models/code_scanning_variant_analysis_skipped_repositories_not_found_repos.dart';
import 'package:meta/meta.dart';

/// {@template code_scanning_variant_analysis_skipped_repositories}
/// Information about repositories that were skipped from processing. This
/// information is only available to the user that initiated the variant
/// analysis.
/// {@endtemplate}
@immutable
class CodeScanningVariantAnalysisSkippedRepositories {
  /// {@macro code_scanning_variant_analysis_skipped_repositories}
  CodeScanningVariantAnalysisSkippedRepositories({
    required this.accessMismatchRepos,
    required this.notFoundRepos,
    required this.noCodeqlDbRepos,
    required this.overLimitRepos,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [CodeScanningVariantAnalysisSkippedRepositories].
  factory CodeScanningVariantAnalysisSkippedRepositories.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'CodeScanningVariantAnalysisSkippedRepositories',
      json,
      () => CodeScanningVariantAnalysisSkippedRepositories(
        accessMismatchRepos:
            CodeScanningVariantAnalysisSkippedRepoGroup.fromJson(
              json['access_mismatch_repos'] as Map<String, dynamic>,
            ),
        notFoundRepos:
            CodeScanningVariantAnalysisSkippedRepositoriesNotFoundRepos.fromJson(
              json['not_found_repos'] as Map<String, dynamic>,
            ),
        noCodeqlDbRepos: CodeScanningVariantAnalysisSkippedRepoGroup.fromJson(
          json['no_codeql_db_repos'] as Map<String, dynamic>,
        ),
        overLimitRepos: CodeScanningVariantAnalysisSkippedRepoGroup.fromJson(
          json['over_limit_repos'] as Map<String, dynamic>,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeScanningVariantAnalysisSkippedRepositories? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodeScanningVariantAnalysisSkippedRepositories.fromJson(json);
  }

  final CodeScanningVariantAnalysisSkippedRepoGroup accessMismatchRepos;
  final CodeScanningVariantAnalysisSkippedRepositoriesNotFoundRepos
  notFoundRepos;
  final CodeScanningVariantAnalysisSkippedRepoGroup noCodeqlDbRepos;
  final CodeScanningVariantAnalysisSkippedRepoGroup overLimitRepos;

  /// Converts a [CodeScanningVariantAnalysisSkippedRepositories]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'access_mismatch_repos': accessMismatchRepos.toJson(),
      'not_found_repos': notFoundRepos.toJson(),
      'no_codeql_db_repos': noCodeqlDbRepos.toJson(),
      'over_limit_repos': overLimitRepos.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    accessMismatchRepos,
    notFoundRepos,
    noCodeqlDbRepos,
    overLimitRepos,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CodeScanningVariantAnalysisSkippedRepositories &&
        this.accessMismatchRepos == other.accessMismatchRepos &&
        this.notFoundRepos == other.notFoundRepos &&
        this.noCodeqlDbRepos == other.noCodeqlDbRepos &&
        this.overLimitRepos == other.overLimitRepos;
  }
}
