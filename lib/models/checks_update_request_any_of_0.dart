import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/checks_update_request_any_of_0_status.dart';
import 'package:meta/meta.dart';

@immutable
class ChecksUpdateRequestAnyOf0 {
  ChecksUpdateRequestAnyOf0({
    this.status,
    required this.entries,
  });

  /// Converts a `Map<String, dynamic>` to a [ChecksUpdateRequestAnyOf0].
  factory ChecksUpdateRequestAnyOf0.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'ChecksUpdateRequestAnyOf0',
      json,
      () => ChecksUpdateRequestAnyOf0(
        status: ChecksUpdateRequestAnyOf0Status.maybeFromJson(
          json['status'] as String?,
        ),
        entries: json.map((key, value) => MapEntry(key, value)),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ChecksUpdateRequestAnyOf0? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ChecksUpdateRequestAnyOf0.fromJson(json);
  }

  final ChecksUpdateRequestAnyOf0Status? status;
  final Map<String, dynamic> entries;

  dynamic? operator [](String key) => entries[key];

  /// Converts a [ChecksUpdateRequestAnyOf0] to a `Map<String, dynamic>`.
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
    return other is ChecksUpdateRequestAnyOf0 &&
        this.status == other.status &&
        mapsEqual(entries, other.entries);
  }
}
