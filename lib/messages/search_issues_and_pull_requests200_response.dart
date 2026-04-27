import 'package:github_out/messages/issue_search_result_item_pull_request.dart';
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/author_association.dart';
import 'package:github_out/models/enterprise.dart';
import 'package:github_out/models/integration.dart';
import 'package:github_out/models/integration_owner.dart';
import 'package:github_out/models/integration_permissions.dart';
import 'package:github_out/models/issue_search_result_item.dart';
import 'package:github_out/models/issue_search_result_item_labels_inner.dart';
import 'package:github_out/models/issue_search_result_item_sub_issues_summary.dart';
import 'package:github_out/models/issue_type.dart';
import 'package:github_out/models/issue_type_color.dart';
import 'package:github_out/models/license_simple.dart';
import 'package:github_out/models/milestone.dart';
import 'package:github_out/models/milestone_state.dart';
import 'package:github_out/models/reaction_rollup.dart';
import 'package:github_out/models/repository.dart';
import 'package:github_out/models/repository_code_search_index_status.dart';
import 'package:github_out/models/repository_merge_commit_message.dart';
import 'package:github_out/models/repository_merge_commit_title.dart';
import 'package:github_out/models/repository_permissions.dart';
import 'package:github_out/models/repository_squash_merge_commit_message.dart';
import 'package:github_out/models/repository_squash_merge_commit_title.dart';
import 'package:github_out/models/search_result_text_matches_inner.dart';
import 'package:github_out/models/search_result_text_matches_inner_matches_inner.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

@immutable
class SearchIssuesAndPullRequests200Response {
  SearchIssuesAndPullRequests200Response({
    required this.totalCount,
    required this.incompleteResults,
    required this.items,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [SearchIssuesAndPullRequests200Response].
  factory SearchIssuesAndPullRequests200Response.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'SearchIssuesAndPullRequests200Response',
      json,
      () => SearchIssuesAndPullRequests200Response(
        totalCount: (json['total_count'] as int),
        incompleteResults: json['incomplete_results'] as bool,
        items: (json['items'] as List)
            .map<IssueSearchResultItem>(
              (e) => IssueSearchResultItem.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SearchIssuesAndPullRequests200Response? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return SearchIssuesAndPullRequests200Response.fromJson(json);
  }

  final int totalCount;
  final bool incompleteResults;
  final List<IssueSearchResultItem> items;

  /// Converts a [SearchIssuesAndPullRequests200Response]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'incomplete_results': incompleteResults,
      'items': items.map((e) => e.toJson()).toList(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    totalCount,
    incompleteResults,
    listHash(items),
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SearchIssuesAndPullRequests200Response &&
        this.totalCount == other.totalCount &&
        this.incompleteResults == other.incompleteResults &&
        listsEqual(this.items, other.items);
  }
}
