import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template actor}
/// Actor
/// Actor
/// {@endtemplate}
@immutable
class Actor {
  /// {@macro actor}
  Actor({
    required this.id,
    required this.login,
    this.displayLogin,
    required this.gravatarId,
    required this.url,
    required this.avatarUrl,
  });

  /// Converts a `Map<String, dynamic>` to an [Actor].
  factory Actor.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'Actor',
      json,
      () => Actor(
        id: (json['id'] as int),
        login: json['login'] as String,
        displayLogin: json['display_login'] as String?,
        gravatarId: checkedKey(json, 'gravatar_id') as String?,
        url: Uri.parse(json['url'] as String),
        avatarUrl: Uri.parse(json['avatar_url'] as String),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Actor? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Actor.fromJson(json);
  }

  final int id;
  final String login;
  final String? displayLogin;
  final String? gravatarId;
  final Uri url;
  final Uri avatarUrl;

  /// Converts an [Actor] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'login': login,
      'display_login': displayLogin,
      'gravatar_id': gravatarId,
      'url': url.toString(),
      'avatar_url': avatarUrl.toString(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    login,
    displayLogin,
    gravatarId,
    url,
    avatarUrl,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Actor &&
        this.id == other.id &&
        this.login == other.login &&
        this.displayLogin == other.displayLogin &&
        this.gravatarId == other.gravatarId &&
        this.url == other.url &&
        this.avatarUrl == other.avatarUrl;
  }
}
