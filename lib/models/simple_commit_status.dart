import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template simple_commit_status}
/// Simple Commit Status
/// {@endtemplate}
@immutable
class SimpleCommitStatus {
  /// {@macro simple_commit_status}
  SimpleCommitStatus({
    required this.description,
    required this.id,
    required this.nodeId,
    required this.state,
    required this.context,
    required this.targetUrl,
    this.required_,
    required this.avatarUrl,
    required this.url,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Converts a `Map<String, dynamic>` to a [SimpleCommitStatus].
  factory SimpleCommitStatus.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'SimpleCommitStatus',
      json,
      () => SimpleCommitStatus(
        description: checkedKey(json, 'description') as String?,
        id: (json['id'] as int),
        nodeId: json['node_id'] as String,
        state: json['state'] as String,
        context: json['context'] as String,
        targetUrl: maybeParseUri(checkedKey(json, 'target_url') as String?),
        required_: json['required'] as bool?,
        avatarUrl: maybeParseUri(checkedKey(json, 'avatar_url') as String?),
        url: Uri.parse(json['url'] as String),
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SimpleCommitStatus? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return SimpleCommitStatus.fromJson(json);
  }

  final String? description;
  final int id;
  final String nodeId;
  final String state;
  final String context;
  final Uri? targetUrl;
  final bool? required_;
  final Uri? avatarUrl;
  final Uri url;
  final DateTime createdAt;
  final DateTime updatedAt;

  /// Converts a [SimpleCommitStatus] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'id': id,
      'node_id': nodeId,
      'state': state,
      'context': context,
      'target_url': targetUrl?.toString(),
      'required': required_,
      'avatar_url': avatarUrl?.toString(),
      'url': url.toString(),
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    description,
    id,
    nodeId,
    state,
    context,
    targetUrl,
    required_,
    avatarUrl,
    url,
    createdAt,
    updatedAt,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SimpleCommitStatus &&
        this.description == other.description &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.state == other.state &&
        this.context == other.context &&
        this.targetUrl == other.targetUrl &&
        this.required_ == other.required_ &&
        this.avatarUrl == other.avatarUrl &&
        this.url == other.url &&
        this.createdAt == other.createdAt &&
        this.updatedAt == other.updatedAt;
  }
}
