import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class IssuesCreateRequestLabelsInnerOneOf1 {
  IssuesCreateRequestLabelsInnerOneOf1({
    this.id,
    this.name,
    this.description,
    this.color,
  });

  /// Converts a `Map<String, dynamic>` to an
  /// [IssuesCreateRequestLabelsInnerOneOf1].
  factory IssuesCreateRequestLabelsInnerOneOf1.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'IssuesCreateRequestLabelsInnerOneOf1',
      json,
      () => IssuesCreateRequestLabelsInnerOneOf1(
        id: (json['id'] as int?),
        name: json['name'] as String?,
        description: json['description'] as String?,
        color: json['color'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesCreateRequestLabelsInnerOneOf1? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return IssuesCreateRequestLabelsInnerOneOf1.fromJson(json);
  }

  final int? id;
  final String? name;
  final String? description;
  final String? color;

  /// Converts an [IssuesCreateRequestLabelsInnerOneOf1]
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
    return other is IssuesCreateRequestLabelsInnerOneOf1 &&
        this.id == other.id &&
        this.name == other.name &&
        this.description == other.description &&
        this.color == other.color;
  }
}
