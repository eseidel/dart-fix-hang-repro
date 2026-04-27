import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/org_hook_config.dart';
import 'package:meta/meta.dart';

/// {@template org_hook}
/// Org Hook
/// Org Hook
/// {@endtemplate}
@immutable
class OrgHook {
  /// {@macro org_hook}
  OrgHook({
    required this.id,
    required this.url,
    required this.pingUrl,
    this.deliveriesUrl,
    required this.name,
    required this.events,
    required this.active,
    required this.config,
    required this.updatedAt,
    required this.createdAt,
    required this.type,
  });

  /// Converts a `Map<String, dynamic>` to an [OrgHook].
  factory OrgHook.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'OrgHook',
      json,
      () => OrgHook(
        id: (json['id'] as int),
        url: Uri.parse(json['url'] as String),
        pingUrl: Uri.parse(json['ping_url'] as String),
        deliveriesUrl: maybeParseUri(json['deliveries_url'] as String?),
        name: json['name'] as String,
        events: (json['events'] as List).cast<String>(),
        active: json['active'] as bool,
        config: OrgHookConfig.fromJson(json['config'] as Map<String, dynamic>),
        updatedAt: DateTime.parse(json['updated_at'] as String),
        createdAt: DateTime.parse(json['created_at'] as String),
        type: json['type'] as String,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgHook? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return OrgHook.fromJson(json);
  }

  /// example: `1`
  final int id;

  /// example: `'https://api.github.com/orgs/octocat/hooks/1'`
  final Uri url;

  /// example: `'https://api.github.com/orgs/octocat/hooks/1/pings'`
  final Uri pingUrl;

  /// example: `'https://api.github.com/orgs/octocat/hooks/1/deliveries'`
  final Uri? deliveriesUrl;

  /// example: `'web'`
  final String name;

  /// example: `'push'`
  /// example: `'pull_request'`
  final List<String> events;

  /// example: `true`
  final bool active;
  final OrgHookConfig config;

  /// example: `'2011-09-06T20:39:23Z'`
  final DateTime updatedAt;

  /// example: `'2011-09-06T17:26:27Z'`
  final DateTime createdAt;
  final String type;

  /// Converts an [OrgHook] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url.toString(),
      'ping_url': pingUrl.toString(),
      'deliveries_url': deliveriesUrl?.toString(),
      'name': name,
      'events': events,
      'active': active,
      'config': config.toJson(),
      'updated_at': updatedAt.toIso8601String(),
      'created_at': createdAt.toIso8601String(),
      'type': type,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    url,
    pingUrl,
    deliveriesUrl,
    name,
    listHash(events),
    active,
    config,
    updatedAt,
    createdAt,
    type,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is OrgHook &&
        this.id == other.id &&
        this.url == other.url &&
        this.pingUrl == other.pingUrl &&
        this.deliveriesUrl == other.deliveriesUrl &&
        this.name == other.name &&
        listsEqual(this.events, other.events) &&
        this.active == other.active &&
        this.config == other.config &&
        this.updatedAt == other.updatedAt &&
        this.createdAt == other.createdAt &&
        this.type == other.type;
  }
}
