import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class IssuesUpdateLabelRequest {
  IssuesUpdateLabelRequest({
    this.newName,
    this.color,
    this.description,
  });

  /// Converts a `Map<String, dynamic>` to an [IssuesUpdateLabelRequest].
  factory IssuesUpdateLabelRequest.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'IssuesUpdateLabelRequest',
      json,
      () => IssuesUpdateLabelRequest(
        newName: json['new_name'] as String?,
        color: json['color'] as String?,
        description: json['description'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesUpdateLabelRequest? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return IssuesUpdateLabelRequest.fromJson(json);
  }

  /// The new name of the label. Emoji can be added to label names, using
  /// either native emoji or colon-style markup. For example, typing
  /// `:strawberry:` will render the emoji
  /// ![:strawberry:](https://github.githubassets.com/images/icons/emoji/unicode/1f353.png
  /// ":strawberry:"). For a full list of available emoji and codes, see
  /// "[Emoji cheat sheet](https://github.com/ikatyang/emoji-cheat-sheet)."
  final String? newName;

  /// The [hexadecimal color code](http://www.color-hex.com/) for the label,
  /// without the leading `#`.
  final String? color;

  /// A short description of the label. Must be 100 characters or fewer.
  final String? description;

  /// Converts an [IssuesUpdateLabelRequest] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'new_name': newName,
      'color': color,
      'description': description,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    newName,
    color,
    description,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IssuesUpdateLabelRequest &&
        this.newName == other.newName &&
        this.color == other.color &&
        this.description == other.description;
  }
}
