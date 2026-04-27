// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/models/review_custom_gates_comment_required.dart';
import 'package:github_out/models/review_custom_gates_state_required.dart';
import 'package:meta/meta.dart';

sealed class ActionsReviewCustomGatesForRunRequest {
  const ActionsReviewCustomGatesForRunRequest();

  factory ActionsReviewCustomGatesForRunRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    if (json.containsKey('state')) {
      return ActionsReviewCustomGatesForRunRequestReviewCustomGatesStateRequired(
        ReviewCustomGatesStateRequired.fromJson(json),
      );
    }
    return ActionsReviewCustomGatesForRunRequestReviewCustomGatesCommentRequired(
      ReviewCustomGatesCommentRequired.fromJson(json),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ActionsReviewCustomGatesForRunRequest? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ActionsReviewCustomGatesForRunRequest.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  Map<String, dynamic> toJson();
}

@immutable
final class ActionsReviewCustomGatesForRunRequestReviewCustomGatesCommentRequired
    extends ActionsReviewCustomGatesForRunRequest {
  const ActionsReviewCustomGatesForRunRequestReviewCustomGatesCommentRequired(
    this.value,
  );

  final ReviewCustomGatesCommentRequired value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is ActionsReviewCustomGatesForRunRequestReviewCustomGatesCommentRequired &&
        value == other.value;
  }
}

@immutable
final class ActionsReviewCustomGatesForRunRequestReviewCustomGatesStateRequired
    extends ActionsReviewCustomGatesForRunRequest {
  const ActionsReviewCustomGatesForRunRequestReviewCustomGatesStateRequired(
    this.value,
  );

  final ReviewCustomGatesStateRequired value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is ActionsReviewCustomGatesForRunRequestReviewCustomGatesStateRequired &&
        value == other.value;
  }
}
