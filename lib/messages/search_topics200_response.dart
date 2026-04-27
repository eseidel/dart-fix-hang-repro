import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/search_result_text_matches_inner.dart';
import 'package:github_out/models/search_result_text_matches_inner_matches_inner.dart';
import 'package:github_out/models/topic_search_result_item.dart';
import 'package:github_out/models/topic_search_result_item_aliases_inner.dart';
import 'package:github_out/models/topic_search_result_item_aliases_inner_topic_relation.dart';
import 'package:github_out/models/topic_search_result_item_related_inner.dart';
import 'package:github_out/models/topic_search_result_item_related_inner_topic_relation.dart';
import 'package:meta/meta.dart';

@immutable
class SearchTopics200Response {
  SearchTopics200Response({
    required this.totalCount,
    required this.incompleteResults,
    required this.items,
  });

  /// Converts a `Map<String, dynamic>` to a [SearchTopics200Response].
  factory SearchTopics200Response.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'SearchTopics200Response',
      json,
      () => SearchTopics200Response(
        totalCount: (json['total_count'] as int),
        incompleteResults: json['incomplete_results'] as bool,
        items: (json['items'] as List)
            .map<TopicSearchResultItem>(
              (e) => TopicSearchResultItem.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SearchTopics200Response? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return SearchTopics200Response.fromJson(json);
  }

  final int totalCount;
  final bool incompleteResults;
  final List<TopicSearchResultItem> items;

  /// Converts a [SearchTopics200Response] to a `Map<String, dynamic>`.
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
    return other is SearchTopics200Response &&
        this.totalCount == other.totalCount &&
        this.incompleteResults == other.incompleteResults &&
        listsEqual(this.items, other.items);
  }
}
