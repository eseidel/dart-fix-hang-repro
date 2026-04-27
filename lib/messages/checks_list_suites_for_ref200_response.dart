import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/check_suite.dart';
import 'package:github_out/models/check_suite_conclusion.dart';
import 'package:github_out/models/check_suite_status.dart';
import 'package:github_out/models/code_of_conduct.dart';
import 'package:github_out/models/enterprise.dart';
import 'package:github_out/models/integration.dart';
import 'package:github_out/models/integration_owner.dart';
import 'package:github_out/models/integration_permissions.dart';
import 'package:github_out/models/minimal_repository.dart';
import 'package:github_out/models/minimal_repository_license.dart';
import 'package:github_out/models/minimal_repository_permissions.dart';
import 'package:github_out/models/pull_request_minimal.dart';
import 'package:github_out/models/pull_request_minimal_base.dart';
import 'package:github_out/models/pull_request_minimal_base_repo.dart';
import 'package:github_out/models/pull_request_minimal_head.dart';
import 'package:github_out/models/pull_request_minimal_head_repo.dart';
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
import 'package:github_out/models/simple_commit.dart';
import 'package:github_out/models/simple_commit_author.dart';
import 'package:github_out/models/simple_commit_committer.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

@immutable
class ChecksListSuitesForRef200Response {
  ChecksListSuitesForRef200Response({
    required this.totalCount,
    required this.checkSuites,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [ChecksListSuitesForRef200Response].
  factory ChecksListSuitesForRef200Response.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ChecksListSuitesForRef200Response',
      json,
      () => ChecksListSuitesForRef200Response(
        totalCount: (json['total_count'] as int),
        checkSuites: (json['check_suites'] as List)
            .map<CheckSuite>(
              (e) => CheckSuite.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ChecksListSuitesForRef200Response? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ChecksListSuitesForRef200Response.fromJson(json);
  }

  final int totalCount;
  final List<CheckSuite> checkSuites;

  /// Converts a [ChecksListSuitesForRef200Response]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'check_suites': checkSuites.map((e) => e.toJson()).toList(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    totalCount,
    listHash(checkSuites),
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ChecksListSuitesForRef200Response &&
        this.totalCount == other.totalCount &&
        listsEqual(this.checkSuites, other.checkSuites);
  }
}
