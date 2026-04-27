import 'package:github_out/models/enterprise.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

sealed class InstallationAccount {
  const InstallationAccount();

  factory InstallationAccount.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('events_url')) {
      return InstallationAccountSimpleUser(SimpleUser.fromJson(json));
    }
    if (json.containsKey('created_at')) {
      return InstallationAccountEnterprise(Enterprise.fromJson(json));
    }
    throw FormatException(
      'No variant of InstallationAccount matched json keys: ${json.keys.toList()}',
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static InstallationAccount? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return InstallationAccount.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  Map<String, dynamic> toJson();
}

@immutable
final class InstallationAccountSimpleUser extends InstallationAccount {
  const InstallationAccountSimpleUser(this.value);

  final SimpleUser value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is InstallationAccountSimpleUser && value == other.value;
  }
}

@immutable
final class InstallationAccountEnterprise extends InstallationAccount {
  const InstallationAccountEnterprise(this.value);

  final Enterprise value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is InstallationAccountEnterprise && value == other.value;
  }
}
