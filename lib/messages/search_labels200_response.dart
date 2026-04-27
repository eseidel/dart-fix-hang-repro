import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/label_search_result_item.dart';
import 'package:github_out/models/search_result_text_matches_inner.dart';
import 'package:github_out/models/search_result_text_matches_inner_matches_inner.dart';
import 'package:meta/meta.dart';

@immutable
class SearchLabels200Response {
  SearchLabels200Response({
    required this.totalCount,
    required this.incompleteResults,
    required this.items,
  });

  /// Converts a `Map<String, dynamic>` to a [SearchLabels200Response].
  factory SearchLabels200Response.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'SearchLabels200Response',
      json,
      () => SearchLabels200Response(
        totalCount: (json['total_count'] as int),
        incompleteResults: json['incomplete_results'] as bool,
        items: (json['items'] as List)
            .map<LabelSearchResultItem>(
              (e) => LabelSearchResultItem.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SearchLabels200Response? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return SearchLabels200Response.fromJson(json);
  }

  final int totalCount;
  final bool incompleteResults;
  final List<LabelSearchResultItem> items;

  /// Converts a [SearchLabels200Response] to a `Map<String, dynamic>`.
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
    return other is SearchLabels200Response &&
        this.totalCount == other.totalCount &&
        this.incompleteResults == other.incompleteResults &&
        listsEqual(this.items, other.items);
  }
}
