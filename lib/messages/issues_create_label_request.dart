import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class IssuesCreateLabelRequest {
  IssuesCreateLabelRequest({
    required this.name,
    this.color,
    this.description,
  });

  /// Converts a `Map<String, dynamic>` to an [IssuesCreateLabelRequest].
  factory IssuesCreateLabelRequest.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'IssuesCreateLabelRequest',
      json,
      () => IssuesCreateLabelRequest(
        name: json['name'] as String,
        color: json['color'] as String?,
        description: json['description'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesCreateLabelRequest? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return IssuesCreateLabelRequest.fromJson(json);
  }

  /// The name of the label. Emoji can be added to label names, using either
  /// native emoji or colon-style markup. For example, typing `:strawberry:`
  /// will render the emoji
  /// ![:strawberry:](https://github.githubassets.com/images/icons/emoji/unicode/1f353.png
  /// ":strawberry:"). For a full list of available emoji and codes, see
  /// "[Emoji cheat sheet](https://github.com/ikatyang/emoji-cheat-sheet)."
  final String name;

  /// The [hexadecimal color code](http://www.color-hex.com/) for the label,
  /// without the leading `#`.
  final String? color;

  /// A short description of the label. Must be 100 characters or fewer.
  final String? description;

  /// Converts an [IssuesCreateLabelRequest] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'color': color,
      'description': description,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    name,
    color,
    description,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IssuesCreateLabelRequest &&
        this.name == other.name &&
        this.color == other.color &&
        this.description == other.description;
  }
}
