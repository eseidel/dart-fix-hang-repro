import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class IssueLabelsInnerOneOf1 {
  const IssueLabelsInnerOneOf1({
    this.id,
    this.nodeId,
    this.url,
    this.name,
    this.description,
    this.color,
    this.default_,
  });

  /// Converts a `Map<String, dynamic>` to an [IssueLabelsInnerOneOf1].
  factory IssueLabelsInnerOneOf1.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'IssueLabelsInnerOneOf1',
      json,
      () => IssueLabelsInnerOneOf1(
        id: json['id'] as int?,
        nodeId: json['node_id'] as String?,
        url: maybeParseUri(json['url'] as String?),
        name: json['name'] as String?,
        description: json['description'] as String?,
        color: json['color'] as String?,
        default_: json['default'] as bool?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssueLabelsInnerOneOf1? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return IssueLabelsInnerOneOf1.fromJson(json);
  }

  final int? id;
  final String? nodeId;
  final Uri? url;
  final String? name;
  final String? description;
  final String? color;
  final bool? default_;

  /// Converts an [IssueLabelsInnerOneOf1] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'url': url?.toString(),
      'name': name,
      'description': description,
      'color': color,
      'default': default_,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    nodeId,
    url,
    name,
    description,
    color,
    default_,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IssueLabelsInnerOneOf1 &&
        id == other.id &&
        nodeId == other.nodeId &&
        url == other.url &&
        name == other.name &&
        description == other.description &&
        color == other.color &&
        default_ == other.default_;
  }
}
