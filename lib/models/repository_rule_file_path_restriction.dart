// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_file_path_restriction_parameters.dart';
import 'package:github_out/models/repository_rule_file_path_restriction_type.dart';
import 'package:meta/meta.dart';

/// {@template repository_rule_file_path_restriction}
/// file_path_restriction
/// Prevent commits that include changes in specified file and folder paths from
/// being pushed to the commit graph. This includes absolute paths that contain
/// file names.
/// {@endtemplate}
@immutable
class RepositoryRuleFilePathRestriction {
  /// {@macro repository_rule_file_path_restriction}
  const RepositoryRuleFilePathRestriction({
    required this.type,
    this.parameters,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [RepositoryRuleFilePathRestriction].
  factory RepositoryRuleFilePathRestriction.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'RepositoryRuleFilePathRestriction',
      json,
      () => RepositoryRuleFilePathRestriction(
        type: RepositoryRuleFilePathRestrictionType.fromJson(
          json['type'] as String,
        ),
        parameters: RepositoryRuleFilePathRestrictionParameters.maybeFromJson(
          json['parameters'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleFilePathRestriction? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleFilePathRestriction.fromJson(json);
  }

  final RepositoryRuleFilePathRestrictionType type;
  final RepositoryRuleFilePathRestrictionParameters? parameters;

  /// Converts a [RepositoryRuleFilePathRestriction]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
      'parameters': parameters?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    type,
    parameters,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleFilePathRestriction &&
        type == other.type &&
        parameters == other.parameters;
  }
}
