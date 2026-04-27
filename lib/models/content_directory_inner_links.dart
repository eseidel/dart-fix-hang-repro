import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class ContentDirectoryInnerLinks {
  ContentDirectoryInnerLinks({
    required this.git,
    required this.html,
    required this.self,
  });

  /// Converts a `Map<String, dynamic>` to a [ContentDirectoryInnerLinks].
  factory ContentDirectoryInnerLinks.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'ContentDirectoryInnerLinks',
      json,
      () => ContentDirectoryInnerLinks(
        git: maybeParseUri(checkedKey(json, 'git') as String?),
        html: maybeParseUri(checkedKey(json, 'html') as String?),
        self: Uri.parse(json['self'] as String),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ContentDirectoryInnerLinks? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ContentDirectoryInnerLinks.fromJson(json);
  }

  final Uri? git;
  final Uri? html;
  final Uri self;

  /// Converts a [ContentDirectoryInnerLinks] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'git': git?.toString(),
      'html': html?.toString(),
      'self': self.toString(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    git,
    html,
    self,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ContentDirectoryInnerLinks &&
        this.git == other.git &&
        this.html == other.html &&
        this.self == other.self;
  }
}
