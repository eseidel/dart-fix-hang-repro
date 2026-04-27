import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class TopicSearchResultItemAliasesInnerTopicRelation {
  TopicSearchResultItemAliasesInnerTopicRelation({
    this.id,
    this.name,
    this.topicId,
    this.relationType,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [TopicSearchResultItemAliasesInnerTopicRelation].
  factory TopicSearchResultItemAliasesInnerTopicRelation.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'TopicSearchResultItemAliasesInnerTopicRelation',
      json,
      () => TopicSearchResultItemAliasesInnerTopicRelation(
        id: (json['id'] as int?),
        name: json['name'] as String?,
        topicId: (json['topic_id'] as int?),
        relationType: json['relation_type'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static TopicSearchResultItemAliasesInnerTopicRelation? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return TopicSearchResultItemAliasesInnerTopicRelation.fromJson(json);
  }

  final int? id;
  final String? name;
  final int? topicId;
  final String? relationType;

  /// Converts a [TopicSearchResultItemAliasesInnerTopicRelation]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'topic_id': topicId,
      'relation_type': relationType,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    name,
    topicId,
    relationType,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TopicSearchResultItemAliasesInnerTopicRelation &&
        this.id == other.id &&
        this.name == other.name &&
        this.topicId == other.topicId &&
        this.relationType == other.relationType;
  }
}
