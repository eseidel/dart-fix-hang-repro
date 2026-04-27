import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template repository_subscription}
/// Repository Invitation
/// Repository invitations let you manage who you collaborate with.
/// {@endtemplate}
@immutable
class RepositorySubscription {
  /// {@macro repository_subscription}
  RepositorySubscription({
    required this.subscribed,
    required this.ignored,
    required this.reason,
    required this.createdAt,
    required this.url,
    required this.repositoryUrl,
  });

  /// Converts a `Map<String, dynamic>` to a [RepositorySubscription].
  factory RepositorySubscription.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RepositorySubscription',
      json,
      () => RepositorySubscription(
        subscribed: json['subscribed'] as bool,
        ignored: json['ignored'] as bool,
        reason: checkedKey(json, 'reason') as String?,
        createdAt: DateTime.parse(json['created_at'] as String),
        url: Uri.parse(json['url'] as String),
        repositoryUrl: Uri.parse(json['repository_url'] as String),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositorySubscription? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return RepositorySubscription.fromJson(json);
  }

  /// Determines if notifications should be received from this repository.
  /// example: `true`
  final bool subscribed;

  /// Determines if all notifications should be blocked from this repository.
  final bool ignored;
  final String? reason;

  /// example: `'2012-10-06T21:34:12Z'`
  final DateTime createdAt;

  /// example: `'https://api.github.com/repos/octocat/example/subscription'`
  final Uri url;

  /// example: `'https://api.github.com/repos/octocat/example'`
  final Uri repositoryUrl;

  /// Converts a [RepositorySubscription] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'subscribed': subscribed,
      'ignored': ignored,
      'reason': reason,
      'created_at': createdAt.toIso8601String(),
      'url': url.toString(),
      'repository_url': repositoryUrl.toString(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    subscribed,
    ignored,
    reason,
    createdAt,
    url,
    repositoryUrl,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositorySubscription &&
        this.subscribed == other.subscribed &&
        this.ignored == other.ignored &&
        this.reason == other.reason &&
        this.createdAt == other.createdAt &&
        this.url == other.url &&
        this.repositoryUrl == other.repositoryUrl;
  }
}
