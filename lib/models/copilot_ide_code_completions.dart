import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/copilot_ide_code_completions_editors_inner.dart';
import 'package:github_out/models/copilot_ide_code_completions_editors_inner_models_inner.dart';
import 'package:github_out/models/copilot_ide_code_completions_editors_inner_models_inner_languages_inner.dart';
import 'package:github_out/models/copilot_ide_code_completions_languages_inner.dart';
import 'package:meta/meta.dart';

/// {@template copilot_ide_code_completions}
/// Usage metrics for Copilot editor code completions in the IDE.
/// {@endtemplate}
@immutable
class CopilotIdeCodeCompletions {
  /// {@macro copilot_ide_code_completions}
  CopilotIdeCodeCompletions({
    this.totalEngagedUsers,
    this.languages,
    this.editors,
    required this.entries,
  });

  /// Converts a `Map<String, dynamic>` to a [CopilotIdeCodeCompletions].
  factory CopilotIdeCodeCompletions.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'CopilotIdeCodeCompletions',
      json,
      () => CopilotIdeCodeCompletions(
        totalEngagedUsers: (json['total_engaged_users'] as int?),
        languages: (json['languages'] as List?)
            ?.map<CopilotIdeCodeCompletionsLanguagesInner>(
              (e) => CopilotIdeCodeCompletionsLanguagesInner.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
        editors: (json['editors'] as List?)
            ?.map<CopilotIdeCodeCompletionsEditorsInner>(
              (e) => CopilotIdeCodeCompletionsEditorsInner.fromJson(
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
  static CopilotIdeCodeCompletions? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return CopilotIdeCodeCompletions.fromJson(json);
  }

  /// Number of users who accepted at least one Copilot code suggestion,
  /// across all active editors. Includes both full and partial acceptances.
  final int? totalEngagedUsers;

  /// Code completion metrics for active languages.
  final List<CopilotIdeCodeCompletionsLanguagesInner>? languages;
  final List<CopilotIdeCodeCompletionsEditorsInner>? editors;
  final Map<String, dynamic> entries;

  dynamic? operator [](String key) => entries[key];

  /// Converts a [CopilotIdeCodeCompletions] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'total_engaged_users': totalEngagedUsers,
      'languages': languages?.map((e) => e.toJson()).toList(),
      'editors': editors?.map((e) => e.toJson()).toList(),
      ...entries.map((key, value) => MapEntry(key, value)),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    totalEngagedUsers,
    listHash(languages),
    listHash(editors),
    entries,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CopilotIdeCodeCompletions &&
        this.totalEngagedUsers == other.totalEngagedUsers &&
        listsEqual(this.languages, other.languages) &&
        listsEqual(this.editors, other.editors) &&
        mapsEqual(entries, other.entries);
  }
}
