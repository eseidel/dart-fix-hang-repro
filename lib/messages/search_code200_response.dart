import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/code_of_conduct.dart';
import 'package:github_out/models/code_search_result_item.dart';
import 'package:github_out/models/minimal_repository.dart';
import 'package:github_out/models/minimal_repository_license.dart';
import 'package:github_out/models/minimal_repository_permissions.dart';
import 'package:github_out/models/search_result_text_matches_inner.dart';
import 'package:github_out/models/search_result_text_matches_inner_matches_inner.dart';
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
class SearchCode200Response {
  SearchCode200Response({
    required this.totalCount,
    required this.incompleteResults,
    required this.items,
  });

  /// Converts a `Map<String, dynamic>` to a [SearchCode200Response].
  factory SearchCode200Response.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'SearchCode200Response',
      json,
      () => SearchCode200Response(
        totalCount: (json['total_count'] as int),
        incompleteResults: json['incomplete_results'] as bool,
        items: (json['items'] as List)
            .map<CodeSearchResultItem>(
              (e) => CodeSearchResultItem.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SearchCode200Response? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return SearchCode200Response.fromJson(json);
  }

  final int totalCount;
  final bool incompleteResults;
  final List<CodeSearchResultItem> items;

  /// Converts a [SearchCode200Response] to a `Map<String, dynamic>`.
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
    return other is SearchCode200Response &&
        this.totalCount == other.totalCount &&
        this.incompleteResults == other.incompleteResults &&
        listsEqual(this.items, other.items);
  }
}
