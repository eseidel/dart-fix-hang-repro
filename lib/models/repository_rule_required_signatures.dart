// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_required_signatures_type.dart';
import 'package:meta/meta.dart';

/// {@template repository_rule_required_signatures}
/// required_signatures
/// Commits pushed to matching refs must have verified signatures.
/// {@endtemplate}
@immutable
class RepositoryRuleRequiredSignatures {
  /// {@macro repository_rule_required_signatures}
  const RepositoryRuleRequiredSignatures({
    required this.type,
  });

  /// Converts a `Map<String, dynamic>` to a [RepositoryRuleRequiredSignatures].
  factory RepositoryRuleRequiredSignatures.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RepositoryRuleRequiredSignatures',
      json,
      () => RepositoryRuleRequiredSignatures(
        type: RepositoryRuleRequiredSignaturesType.fromJson(
          json['type'] as String,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleRequiredSignatures? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleRequiredSignatures.fromJson(json);
  }

  final RepositoryRuleRequiredSignaturesType type;

  /// Converts a [RepositoryRuleRequiredSignatures] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
    };
  }

  @override
  int get hashCode => type.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRequiredSignatures && type == other.type;
  }
}
