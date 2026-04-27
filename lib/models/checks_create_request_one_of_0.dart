import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/checks_create_request_one_of_0_status.dart';
import 'package:meta/meta.dart';

@immutable
class ChecksCreateRequestOneOf0 {
  ChecksCreateRequestOneOf0({
    required this.status,
    required this.entries,
  });

  /// Converts a `Map<String, dynamic>` to a [ChecksCreateRequestOneOf0].
  factory ChecksCreateRequestOneOf0.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'ChecksCreateRequestOneOf0',
      json,
      () => ChecksCreateRequestOneOf0(
        status: ChecksCreateRequestOneOf0Status.fromJson(
          json['status'] as String,
        ),
        entries: json.map((key, value) => MapEntry(key, value)),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ChecksCreateRequestOneOf0? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ChecksCreateRequestOneOf0.fromJson(json);
  }

  final ChecksCreateRequestOneOf0Status status;
  final Map<String, dynamic> entries;

  dynamic? operator [](String key) => entries[key];

  /// Converts a [ChecksCreateRequestOneOf0] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'status': status.toJson(),
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
    return other is ChecksCreateRequestOneOf0 &&
        this.status == other.status &&
        mapsEqual(entries, other.entries);
  }
}
