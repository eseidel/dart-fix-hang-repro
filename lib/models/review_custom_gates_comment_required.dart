import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class ReviewCustomGatesCommentRequired {
  ReviewCustomGatesCommentRequired({
    required this.environmentName,
    required this.comment,
  });

  /// Converts a `Map<String, dynamic>` to a [ReviewCustomGatesCommentRequired].
  factory ReviewCustomGatesCommentRequired.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'ReviewCustomGatesCommentRequired',
      json,
      () => ReviewCustomGatesCommentRequired(
        environmentName: json['environment_name'] as String,
        comment: json['comment'] as String,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReviewCustomGatesCommentRequired? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReviewCustomGatesCommentRequired.fromJson(json);
  }

  /// The name of the environment to approve or reject.
  final String environmentName;

  /// Comment associated with the pending deployment protection rule.
  /// **Required when state is not provided.**
  final String comment;

  /// Converts a [ReviewCustomGatesCommentRequired] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'environment_name': environmentName,
      'comment': comment,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    environmentName,
    comment,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReviewCustomGatesCommentRequired &&
        this.environmentName == other.environmentName &&
        this.comment == other.comment;
  }
}
