import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/runner_label_type.dart';
import 'package:meta/meta.dart';

/// {@template runner_label}
/// Self hosted runner label
/// A label for a self hosted runner
/// {@endtemplate}
@immutable
class RunnerLabel {
  /// {@macro runner_label}
  RunnerLabel({
    this.id,
    required this.name,
    this.type,
  });

  /// Converts a `Map<String, dynamic>` to a [RunnerLabel].
  factory RunnerLabel.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RunnerLabel',
      json,
      () => RunnerLabel(
        id: (json['id'] as int?),
        name: json['name'] as String,
        type: RunnerLabelType.maybeFromJson(json['type'] as String?),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RunnerLabel? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return RunnerLabel.fromJson(json);
  }

  /// Unique identifier of the label.
  final int? id;

  /// Name of the label.
  final String name;

  /// The type of label. Read-only labels are applied automatically when the
  /// runner is configured.
  final RunnerLabelType? type;

  /// Converts a [RunnerLabel] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    name,
    type,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RunnerLabel &&
        this.id == other.id &&
        this.name == other.name &&
        this.type == other.type;
  }
}
