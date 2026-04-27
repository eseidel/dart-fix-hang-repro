// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/copilot_dotcom_pull_requests_repositories_inner.dart';
import 'package:meta/meta.dart';

/// {@template copilot_dotcom_pull_requests}
/// Usage metrics for Copilot for pull requests.
/// {@endtemplate}
@immutable
class CopilotDotcomPullRequests {
  /// {@macro copilot_dotcom_pull_requests}
  const CopilotDotcomPullRequests({
    required this.entries,
    this.totalEngagedUsers,
    this.repositories,
  });

  /// Converts a `Map<String, dynamic>` to a [CopilotDotcomPullRequests].
  factory CopilotDotcomPullRequests.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'CopilotDotcomPullRequests',
      json,
      () => CopilotDotcomPullRequests(
        totalEngagedUsers: json['total_engaged_users'] as int?,
        repositories: (json['repositories'] as List?)
            ?.map<CopilotDotcomPullRequestsRepositoriesInner>(
              (e) => CopilotDotcomPullRequestsRepositoriesInner.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
        entries: json.map(MapEntry.new),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CopilotDotcomPullRequests? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return CopilotDotcomPullRequests.fromJson(json);
  }

  /// The number of users who used Copilot for Pull Requests on github.com to
  /// generate a pull request summary at least once.
  final int? totalEngagedUsers;

  /// Repositories in which users used Copilot for Pull Requests to generate
  /// pull request summaries
  final List<CopilotDotcomPullRequestsRepositoriesInner>? repositories;
  final Map<String, dynamic> entries;

  dynamic operator [](String key) => entries[key];

  /// Converts a [CopilotDotcomPullRequests] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'total_engaged_users': totalEngagedUsers,
      'repositories': repositories?.map((e) => e.toJson()).toList(),
      ...entries.map(MapEntry.new),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    totalEngagedUsers,
    listHash(repositories),
    entries,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CopilotDotcomPullRequests &&
        totalEngagedUsers == other.totalEngagedUsers &&
        listsEqual(repositories, other.repositories) &&
        mapsEqual(entries, other.entries);
  }
}
