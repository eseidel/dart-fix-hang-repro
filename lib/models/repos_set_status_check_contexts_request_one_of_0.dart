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
class ReposSetStatusCheckContextsRequestOneOf0 {
  const ReposSetStatusCheckContextsRequestOneOf0({
    required this.contexts,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [ReposSetStatusCheckContextsRequestOneOf0].
  factory ReposSetStatusCheckContextsRequestOneOf0.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ReposSetStatusCheckContextsRequestOneOf0',
      json,
      () => ReposSetStatusCheckContextsRequestOneOf0(
        contexts: (json['contexts'] as List).cast<String>(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposSetStatusCheckContextsRequestOneOf0? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReposSetStatusCheckContextsRequestOneOf0.fromJson(json);
  }

  /// The name of the status checks
  final List<String> contexts;

  /// Converts a [ReposSetStatusCheckContextsRequestOneOf0]
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
    return other is ReposSetStatusCheckContextsRequestOneOf0 &&
        listsEqual(contexts, other.contexts);
  }
}
