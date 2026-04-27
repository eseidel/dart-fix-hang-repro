import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/code_of_conduct.dart';
import 'package:github_out/models/minimal_repository.dart';
import 'package:github_out/models/minimal_repository_license.dart';
import 'package:github_out/models/minimal_repository_permissions.dart';
import 'package:github_out/models/security_and_analysis.dart';
import 'package:github_out/models/security_and_analysis_advanced_security.dart';
import 'package:github_out/models/security_and_analysis_advanced_security_status.dart';
import 'package:github_out/models/security_and_analysis_code_security.dart';
import 'package:github_out/models/security_and_analysis_code_security_status.dart';
import 'package:github_out/models/security_and_analysis_dependabot_security_updates.dart';
import 'package:github_out/models/security_and_analysis_dependabot_security_updates_status.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_ai_detection.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_ai_detection_status.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_push_protection.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_push_protection_status.dart';
import 'package:github_out/models/security_and_analysis_secret_scanning_status.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:github_out/models/thread_subject.dart';
import 'package:meta/meta.dart';

/// {@template thread}
/// Thread
/// Thread
/// {@endtemplate}
@immutable
class Thread {
  /// {@macro thread}
  Thread({
    required this.id,
    required this.repository,
    required this.subject,
    required this.reason,
    required this.unread,
    required this.updatedAt,
    required this.lastReadAt,
    required this.url,
    required this.subscriptionUrl,
  });

  /// Converts a `Map<String, dynamic>` to a [Thread].
  factory Thread.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'Thread',
      json,
      () => Thread(
        id: json['id'] as String,
        repository: MinimalRepository.fromJson(
          json['repository'] as Map<String, dynamic>,
        ),
        subject: ThreadSubject.fromJson(
          json['subject'] as Map<String, dynamic>,
        ),
        reason: json['reason'] as String,
        unread: json['unread'] as bool,
        updatedAt: json['updated_at'] as String,
        lastReadAt: checkedKey(json, 'last_read_at') as String?,
        url: json['url'] as String,
        subscriptionUrl: json['subscription_url'] as String,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Thread? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Thread.fromJson(json);
  }

  final String id;

  /// Minimal Repository
  /// Minimal Repository
  final MinimalRepository repository;
  final ThreadSubject subject;
  final String reason;
  final bool unread;
  final String updatedAt;
  final String? lastReadAt;
  final String url;

  /// example: `'https://api.github.com/notifications/threads/2/subscription'`
  final String subscriptionUrl;

  /// Converts a [Thread] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'repository': repository.toJson(),
      'subject': subject.toJson(),
      'reason': reason,
      'unread': unread,
      'updated_at': updatedAt,
      'last_read_at': lastReadAt,
      'url': url,
      'subscription_url': subscriptionUrl,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    repository,
    subject,
    reason,
    unread,
    updatedAt,
    lastReadAt,
    url,
    subscriptionUrl,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Thread &&
        this.id == other.id &&
        this.repository == other.repository &&
        this.subject == other.subject &&
        this.reason == other.reason &&
        this.unread == other.unread &&
        this.updatedAt == other.updatedAt &&
        this.lastReadAt == other.lastReadAt &&
        this.url == other.url &&
        this.subscriptionUrl == other.subscriptionUrl;
  }
}
