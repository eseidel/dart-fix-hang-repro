// Spec descriptions copy prose verbatim into dartdoc, where `[x]`
// inside a sentence (placeholder text, ALL_CAPS tokens, license
// templates) is parsed as a symbol reference even when no such
// symbol exists. Suppress file-locally so the lint stays live
// elsewhere; spec authors do not always escape brackets.
// ignore_for_file: comment_references
import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// example: `{contexts: [contexts]}`
@immutable
class ReposAddStatusCheckContextsRequestOneOf0 {
  ReposAddStatusCheckContextsRequestOneOf0({
    required this.contexts,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [ReposAddStatusCheckContextsRequestOneOf0].
  factory ReposAddStatusCheckContextsRequestOneOf0.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ReposAddStatusCheckContextsRequestOneOf0',
      json,
      () => ReposAddStatusCheckContextsRequestOneOf0(
        contexts: (json['contexts'] as List).cast<String>(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposAddStatusCheckContextsRequestOneOf0? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReposAddStatusCheckContextsRequestOneOf0.fromJson(json);
  }

  /// The name of the status checks
  final List<String> contexts;

  /// Converts a [ReposAddStatusCheckContextsRequestOneOf0]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'contexts': contexts,
    };
  }

  @override
  int get hashCode => listHash(contexts).hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposAddStatusCheckContextsRequestOneOf0 &&
        listsEqual(this.contexts, other.contexts);
  }
}
