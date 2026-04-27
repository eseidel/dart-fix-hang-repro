import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/workflow_state.dart';
import 'package:meta/meta.dart';

/// {@template workflow}
/// Workflow
/// A GitHub Actions workflow
/// {@endtemplate}
@immutable
class Workflow {
  /// {@macro workflow}
  Workflow({
    required this.id,
    required this.nodeId,
    required this.name,
    required this.path,
    required this.state,
    required this.createdAt,
    required this.updatedAt,
    required this.url,
    required this.htmlUrl,
    required this.badgeUrl,
    this.deletedAt,
  });

  /// Converts a `Map<String, dynamic>` to a [Workflow].
  factory Workflow.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'Workflow',
      json,
      () => Workflow(
        id: (json['id'] as int),
        nodeId: json['node_id'] as String,
        name: json['name'] as String,
        path: json['path'] as String,
        state: WorkflowState.fromJson(json['state'] as String),
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
        url: json['url'] as String,
        htmlUrl: json['html_url'] as String,
        badgeUrl: json['badge_url'] as String,
        deletedAt: maybeParseDateTime(json['deleted_at'] as String?),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Workflow? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Workflow.fromJson(json);
  }

  /// example: `5`
  final int id;

  /// example: `'MDg6V29ya2Zsb3cxMg=='`
  final String nodeId;

  /// example: `'CI'`
  final String name;

  /// example: `'ruby.yaml'`
  final String path;

  /// example: `'active'`
  final WorkflowState state;

  /// example: `'2019-12-06T14:20:20.000Z'`
  final DateTime createdAt;

  /// example: `'2019-12-06T14:20:20.000Z'`
  final DateTime updatedAt;

  /// example: `'https://api.github.com/repos/actions/setup-ruby/workflows/5'`
  final String url;

  /// example:
  /// `'https://github.com/actions/setup-ruby/blob/master/.github/workflows/ruby.yaml'`
  final String htmlUrl;

  /// example:
  /// `'https://github.com/actions/setup-ruby/workflows/CI/badge.svg'`
  final String badgeUrl;

  /// example: `'2019-12-06T14:20:20.000Z'`
  final DateTime? deletedAt;

  /// Converts a [Workflow] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'name': name,
      'path': path,
      'state': state.toJson(),
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'url': url,
      'html_url': htmlUrl,
      'badge_url': badgeUrl,
      'deleted_at': deletedAt?.toIso8601String(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    nodeId,
    name,
    path,
    state,
    createdAt,
    updatedAt,
    url,
    htmlUrl,
    badgeUrl,
    deletedAt,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Workflow &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.name == other.name &&
        this.path == other.path &&
        this.state == other.state &&
        this.createdAt == other.createdAt &&
        this.updatedAt == other.updatedAt &&
        this.url == other.url &&
        this.htmlUrl == other.htmlUrl &&
        this.badgeUrl == other.badgeUrl &&
        this.deletedAt == other.deletedAt;
  }
}
