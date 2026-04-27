import 'package:github_out/models/enterprise.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

sealed class IntegrationInstallationRequestAccount {
  const IntegrationInstallationRequestAccount();

  factory IntegrationInstallationRequestAccount.fromJson(
    Map<String, dynamic> json,
  ) {
    if (json.containsKey('events_url')) {
      return IntegrationInstallationRequestAccountSimpleUser(
        SimpleUser.fromJson(json),
      );
    }
    if (json.containsKey('created_at')) {
      return IntegrationInstallationRequestAccountEnterprise(
        Enterprise.fromJson(json),
      );
    }
    throw FormatException(
      'No variant of IntegrationInstallationRequestAccount matched json keys: ${json.keys.toList()}',
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IntegrationInstallationRequestAccount? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return IntegrationInstallationRequestAccount.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  Map<String, dynamic> toJson();
}

@immutable
final class IntegrationInstallationRequestAccountSimpleUser
    extends IntegrationInstallationRequestAccount {
  const IntegrationInstallationRequestAccountSimpleUser(this.value);

  final SimpleUser value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IntegrationInstallationRequestAccountSimpleUser &&
        value == other.value;
  }
}

@immutable
final class IntegrationInstallationRequestAccountEnterprise
    extends IntegrationInstallationRequestAccount {
  const IntegrationInstallationRequestAccountEnterprise(this.value);

  final Enterprise value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IntegrationInstallationRequestAccountEnterprise &&
        value == other.value;
  }
}
