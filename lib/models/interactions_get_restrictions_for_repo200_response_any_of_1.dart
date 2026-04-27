import 'package:meta/meta.dart';

@immutable
class InteractionsGetRestrictionsForRepo200ResponseAnyOf1 {
  const InteractionsGetRestrictionsForRepo200ResponseAnyOf1();

  /// Converts a `Map<String, dynamic>` to an [InteractionsGetRestrictionsForRepo200ResponseAnyOf1].
  factory InteractionsGetRestrictionsForRepo200ResponseAnyOf1.fromJson(
    Map<String, dynamic> _,
  ) {
    return const InteractionsGetRestrictionsForRepo200ResponseAnyOf1();
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static InteractionsGetRestrictionsForRepo200ResponseAnyOf1? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return InteractionsGetRestrictionsForRepo200ResponseAnyOf1.fromJson(json);
  }

  Map<String, dynamic> toJson() => const {};
}
