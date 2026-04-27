import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class IssuesUpdateRequestLabelsInnerOneOf1 {
  IssuesUpdateRequestLabelsInnerOneOf1({
    this.id,
    this.name,
    this.description,
    this.color,
  });

  /// Converts a `Map<String, dynamic>` to an
  /// [IssuesUpdateRequestLabelsInnerOneOf1].
  factory IssuesUpdateRequestLabelsInnerOneOf1.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'IssuesUpdateRequestLabelsInnerOneOf1',
      json,
      () => IssuesUpdateRequestLabelsInnerOneOf1(
        id: (json['id'] as int?),
        name: json['name'] as String?,
        description: json['description'] as String?,
        color: json['color'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesUpdateRequestLabelsInnerOneOf1? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return IssuesUpdateRequestLabelsInnerOneOf1.fromJson(json);
  }

  final int? id;
  final String? name;
  final String? description;
  final String? color;

  /// Converts an [IssuesUpdateRequestLabelsInnerOneOf1]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'color': color,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    name,
    description,
    color,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IssuesUpdateRequestLabelsInnerOneOf1 &&
        this.id == other.id &&
        this.name == other.name &&
        this.description == other.description &&
        this.color == other.color;
  }
}
