// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_code_scanning_parameters.dart';
import 'package:github_out/models/repository_rule_code_scanning_type.dart';
import 'package:meta/meta.dart';

/// {@template repository_rule_code_scanning}
/// code_scanning
/// Choose which tools must provide code scanning results before the reference
/// is updated. When configured, code scanning must be enabled and have results
/// for both the commit and the reference being updated.
/// {@endtemplate}
@immutable
class RepositoryRuleCodeScanning {
  /// {@macro repository_rule_code_scanning}
  const RepositoryRuleCodeScanning({
    required this.type,
    this.parameters,
  });

  /// Converts a `Map<String, dynamic>` to a [RepositoryRuleCodeScanning].
  factory RepositoryRuleCodeScanning.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RepositoryRuleCodeScanning',
      json,
      () => RepositoryRuleCodeScanning(
        type: RepositoryRuleCodeScanningType.fromJson(json['type'] as String),
        parameters: RepositoryRuleCodeScanningParameters.maybeFromJson(
          json['parameters'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleCodeScanning? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleCodeScanning.fromJson(json);
  }

  final RepositoryRuleCodeScanningType type;
  final RepositoryRuleCodeScanningParameters? parameters;

  /// Converts a [RepositoryRuleCodeScanning] to a `Map<String, dynamic>`.
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
    return other is RepositoryRuleCodeScanning &&
        type == other.type &&
        parameters == other.parameters;
  }
}
