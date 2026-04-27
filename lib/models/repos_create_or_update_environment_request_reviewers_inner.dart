import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/deployment_reviewer_type.dart';
import 'package:meta/meta.dart';

@immutable
class ReposCreateOrUpdateEnvironmentRequestReviewersInner {
  ReposCreateOrUpdateEnvironmentRequestReviewersInner({
    this.type,
    this.id,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [ReposCreateOrUpdateEnvironmentRequestReviewersInner].
  factory ReposCreateOrUpdateEnvironmentRequestReviewersInner.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ReposCreateOrUpdateEnvironmentRequestReviewersInner',
      json,
      () => ReposCreateOrUpdateEnvironmentRequestReviewersInner(
        type: DeploymentReviewerType.maybeFromJson(json['type'] as String?),
        id: (json['id'] as int?),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposCreateOrUpdateEnvironmentRequestReviewersInner? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReposCreateOrUpdateEnvironmentRequestReviewersInner.fromJson(json);
  }

  /// The type of reviewer.
  /// example: `'User'`
  final DeploymentReviewerType? type;

  /// The id of the user or team who can review the deployment
  /// example: `4532992`
  final int? id;

  /// Converts a [ReposCreateOrUpdateEnvironmentRequestReviewersInner]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'type': type?.toJson(),
      'id': id,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    type,
    id,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposCreateOrUpdateEnvironmentRequestReviewersInner &&
        this.type == other.type &&
        this.id == other.id;
  }
}
