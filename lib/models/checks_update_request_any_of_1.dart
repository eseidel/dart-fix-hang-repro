import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/checks_update_request_any_of_1_status.dart';
import 'package:meta/meta.dart';

@immutable
class ChecksUpdateRequestAnyOf1 {
  ChecksUpdateRequestAnyOf1({
    this.status,
    required this.entries,
  });

  /// Converts a `Map<String, dynamic>` to a [ChecksUpdateRequestAnyOf1].
  factory ChecksUpdateRequestAnyOf1.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'ChecksUpdateRequestAnyOf1',
      json,
      () => ChecksUpdateRequestAnyOf1(
        status: ChecksUpdateRequestAnyOf1Status.maybeFromJson(
          json['status'] as String?,
        ),
        entries: json.map((key, value) => MapEntry(key, value)),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ChecksUpdateRequestAnyOf1? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ChecksUpdateRequestAnyOf1.fromJson(json);
  }

  final ChecksUpdateRequestAnyOf1Status? status;
  final Map<String, dynamic> entries;

  dynamic? operator [](String key) => entries[key];

  /// Converts a [ChecksUpdateRequestAnyOf1] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'status': status?.toJson(),
      ...entries.map((key, value) => MapEntry(key, value)),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    status,
    entries,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ChecksUpdateRequestAnyOf1 &&
        this.status == other.status &&
        mapsEqual(entries, other.entries);
  }
}
