import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_file_extension_restriction_parameters.dart';
import 'package:github_out/models/repository_rule_file_extension_restriction_type.dart';
import 'package:meta/meta.dart';

/// {@template repository_rule_file_extension_restriction}
/// file_extension_restriction
/// Prevent commits that include files with specified file extensions from being
/// pushed to the commit graph.
/// {@endtemplate}
@immutable
class RepositoryRuleFileExtensionRestriction {
  /// {@macro repository_rule_file_extension_restriction}
  RepositoryRuleFileExtensionRestriction({
    required this.type,
    this.parameters,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [RepositoryRuleFileExtensionRestriction].
  factory RepositoryRuleFileExtensionRestriction.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'RepositoryRuleFileExtensionRestriction',
      json,
      () => RepositoryRuleFileExtensionRestriction(
        type: RepositoryRuleFileExtensionRestrictionType.fromJson(
          json['type'] as String,
        ),
        parameters:
            RepositoryRuleFileExtensionRestrictionParameters.maybeFromJson(
              json['parameters'] as Map<String, dynamic>?,
            ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleFileExtensionRestriction? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleFileExtensionRestriction.fromJson(json);
  }

  final RepositoryRuleFileExtensionRestrictionType type;
  final RepositoryRuleFileExtensionRestrictionParameters? parameters;

  /// Converts a [RepositoryRuleFileExtensionRestriction]
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
    return other is RepositoryRuleFileExtensionRestriction &&
        this.type == other.type &&
        this.parameters == other.parameters;
  }
}
