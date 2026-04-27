import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/copilot_dotcom_chat_models_inner.dart';
import 'package:meta/meta.dart';

/// {@template copilot_dotcom_chat}
/// Usage metrics for Copilot Chat in GitHub.com
/// {@endtemplate}
@immutable
class CopilotDotcomChat {
  /// {@macro copilot_dotcom_chat}
  CopilotDotcomChat({
    this.totalEngagedUsers,
    this.models,
    required this.entries,
  });

  /// Converts a `Map<String, dynamic>` to a [CopilotDotcomChat].
  factory CopilotDotcomChat.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'CopilotDotcomChat',
      json,
      () => CopilotDotcomChat(
        totalEngagedUsers: (json['total_engaged_users'] as int?),
        models: (json['models'] as List?)
            ?.map<CopilotDotcomChatModelsInner>(
              (e) => CopilotDotcomChatModelsInner.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
        entries: json.map((key, value) => MapEntry(key, value)),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CopilotDotcomChat? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return CopilotDotcomChat.fromJson(json);
  }

  /// Total number of users who prompted Copilot Chat on github.com at least
  /// once.
  final int? totalEngagedUsers;

  /// List of model metrics for a custom models and the default model.
  final List<CopilotDotcomChatModelsInner>? models;
  final Map<String, dynamic> entries;

  dynamic? operator [](String key) => entries[key];

  /// Converts a [CopilotDotcomChat] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'total_engaged_users': totalEngagedUsers,
      'models': models?.map((e) => e.toJson()).toList(),
      ...entries.map((key, value) => MapEntry(key, value)),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    totalEngagedUsers,
    listHash(models),
    entries,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CopilotDotcomChat &&
        this.totalEngagedUsers == other.totalEngagedUsers &&
        listsEqual(this.models, other.models) &&
        mapsEqual(entries, other.entries);
  }
}
