import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/copilot_ide_code_completions_editors_inner_models_inner.dart';
import 'package:github_out/models/copilot_ide_code_completions_editors_inner_models_inner_languages_inner.dart';
import 'package:meta/meta.dart';

/// {@template copilot_ide_code_completions_editors_inner}
/// Copilot code completion metrics for active editors.
/// {@endtemplate}
@immutable
class CopilotIdeCodeCompletionsEditorsInner {
  /// {@macro copilot_ide_code_completions_editors_inner}
  CopilotIdeCodeCompletionsEditorsInner({
    this.name,
    this.totalEngagedUsers,
    this.models,
    required this.entries,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [CopilotIdeCodeCompletionsEditorsInner].
  factory CopilotIdeCodeCompletionsEditorsInner.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'CopilotIdeCodeCompletionsEditorsInner',
      json,
      () => CopilotIdeCodeCompletionsEditorsInner(
        name: json['name'] as String?,
        totalEngagedUsers: (json['total_engaged_users'] as int?),
        models: (json['models'] as List?)
            ?.map<CopilotIdeCodeCompletionsEditorsInnerModelsInner>(
              (e) => CopilotIdeCodeCompletionsEditorsInnerModelsInner.fromJson(
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
  static CopilotIdeCodeCompletionsEditorsInner? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return CopilotIdeCodeCompletionsEditorsInner.fromJson(json);
  }

  /// Name of the given editor.
  final String? name;

  /// Number of users who accepted at least one Copilot code completion
  /// suggestion for the given editor. Includes both full and partial
  /// acceptances.
  final int? totalEngagedUsers;

  /// List of model metrics for custom models and the default model.
  final List<CopilotIdeCodeCompletionsEditorsInnerModelsInner>? models;
  final Map<String, dynamic> entries;

  dynamic? operator [](String key) => entries[key];

  /// Converts a [CopilotIdeCodeCompletionsEditorsInner]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'total_engaged_users': totalEngagedUsers,
      'models': models?.map((e) => e.toJson()).toList(),
      ...entries.map((key, value) => MapEntry(key, value)),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    name,
    totalEngagedUsers,
    listHash(models),
    entries,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CopilotIdeCodeCompletionsEditorsInner &&
        this.name == other.name &&
        this.totalEngagedUsers == other.totalEngagedUsers &&
        listsEqual(this.models, other.models) &&
        mapsEqual(entries, other.entries);
  }
}
