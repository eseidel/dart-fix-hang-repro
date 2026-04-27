import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/code_of_conduct.dart';
import 'package:github_out/models/minimal_repository.dart';
import 'package:github_out/models/minimal_repository_license.dart';
import 'package:github_out/models/minimal_repository_permissions.dart';
import 'package:github_out/models/security_and_analysis.dart';
import 'package:github_out/models/security_and_analysis_advanced_security.dart';
import 'package:github_out/models/security_and_analysis_advanced_security_status.dart';
import 'package:github_out/models/security_and_analysis_code_security.dart';
import 'package:github_out/models/security_and_analysis_code_security_status.dart';
import 'package:github_out/models/security_and_analysis_dependabot_security_updates.dart';
import 'package:github_out/models/security_and_analysis_dependabot_security_updates_status.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_ai_detection.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_ai_detection_status.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_push_protection.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_push_protection_status.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_status.dart';
import 'package:github_out/models/simple_commit_status.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template combined_commit_status}
/// Combined Commit Status
/// Combined Commit Status
/// {@endtemplate}
@immutable
class CombinedCommitStatus {
  /// {@macro combined_commit_status}
  CombinedCommitStatus({
    required this.state,
    required this.statuses,
    required this.sha,
    required this.totalCount,
    required this.repository,
    required this.commitUrl,
    required this.url,
  });

  /// Converts a `Map<String, dynamic>` to a [CombinedCommitStatus].
  factory CombinedCommitStatus.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'CombinedCommitStatus',
      json,
      () => CombinedCommitStatus(
        state: json['state'] as String,
        statuses: (json['statuses'] as List)
            .map<SimpleCommitStatus>(
              (e) => SimpleCommitStatus.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
        sha: json['sha'] as String,
        totalCount: (json['total_count'] as int),
        repository: MinimalRepository.fromJson(
          json['repository'] as Map<String, dynamic>,
        ),
        commitUrl: Uri.parse(json['commit_url'] as String),
        url: Uri.parse(json['url'] as String),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CombinedCommitStatus? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return CombinedCommitStatus.fromJson(json);
  }

  final String state;
  final List<SimpleCommitStatus> statuses;
  final String sha;
  final int totalCount;

  /// Minimal Repository
  /// Minimal Repository
  final MinimalRepository repository;
  final Uri commitUrl;
  final Uri url;

  /// Converts a [CombinedCommitStatus] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'state': state,
      'statuses': statuses.map((e) => e.toJson()).toList(),
      'sha': sha,
      'total_count': totalCount,
      'repository': repository.toJson(),
      'commit_url': commitUrl.toString(),
      'url': url.toString(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    state,
    listHash(statuses),
    sha,
    totalCount,
    repository,
    commitUrl,
    url,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CombinedCommitStatus &&
        this.state == other.state &&
        listsEqual(this.statuses, other.statuses) &&
        this.sha == other.sha &&
        this.totalCount == other.totalCount &&
        this.repository == other.repository &&
        this.commitUrl == other.commitUrl &&
        this.url == other.url;
  }
}
