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
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

@immutable
class ActionsListSelectedReposForOrgSecret200Response {
  ActionsListSelectedReposForOrgSecret200Response({
    required this.totalCount,
    required this.repositories,
  });

  /// Converts a `Map<String, dynamic>` to an
  /// [ActionsListSelectedReposForOrgSecret200Response].
  factory ActionsListSelectedReposForOrgSecret200Response.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ActionsListSelectedReposForOrgSecret200Response',
      json,
      () => ActionsListSelectedReposForOrgSecret200Response(
        totalCount: (json['total_count'] as int),
        repositories: (json['repositories'] as List)
            .map<MinimalRepository>(
              (e) => MinimalRepository.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ActionsListSelectedReposForOrgSecret200Response? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ActionsListSelectedReposForOrgSecret200Response.fromJson(json);
  }

  final int totalCount;
  final List<MinimalRepository> repositories;

  /// Converts an [ActionsListSelectedReposForOrgSecret200Response]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'repositories': repositories.map((e) => e.toJson()).toList(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    totalCount,
    listHash(repositories),
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ActionsListSelectedReposForOrgSecret200Response &&
        this.totalCount == other.totalCount &&
        listsEqual(this.repositories, other.repositories);
  }
}
