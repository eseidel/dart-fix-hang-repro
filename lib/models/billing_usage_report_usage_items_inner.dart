import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class BillingUsageReportUsageItemsInner {
  BillingUsageReportUsageItemsInner({
    required this.date,
    required this.product,
    required this.sku,
    required this.quantity,
    required this.unitType,
    required this.pricePerUnit,
    required this.grossAmount,
    required this.discountAmount,
    required this.netAmount,
    required this.organizationName,
    this.repositoryName,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [BillingUsageReportUsageItemsInner].
  factory BillingUsageReportUsageItemsInner.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'BillingUsageReportUsageItemsInner',
      json,
      () => BillingUsageReportUsageItemsInner(
        date: json['date'] as String,
        product: json['product'] as String,
        sku: json['sku'] as String,
        quantity: (json['quantity'] as int),
        unitType: json['unitType'] as String,
        pricePerUnit: (json['pricePerUnit'] as num).toDouble(),
        grossAmount: (json['grossAmount'] as num).toDouble(),
        discountAmount: (json['discountAmount'] as num).toDouble(),
        netAmount: (json['netAmount'] as num).toDouble(),
        organizationName: json['organizationName'] as String,
        repositoryName: json['repositoryName'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static BillingUsageReportUsageItemsInner? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return BillingUsageReportUsageItemsInner.fromJson(json);
  }

  /// Date of the usage line item.
  final String date;

  /// Product name.
  final String product;

  /// SKU name.
  final String sku;

  /// Quantity of the usage line item.
  final int quantity;

  /// Unit type of the usage line item.
  final String unitType;

  /// Price per unit of the usage line item.
  final double pricePerUnit;

  /// Gross amount of the usage line item.
  final double grossAmount;

  /// Discount amount of the usage line item.
  final double discountAmount;

  /// Net amount of the usage line item.
  final double netAmount;

  /// Name of the organization.
  final String organizationName;

  /// Name of the repository.
  final String? repositoryName;

  /// Converts a [BillingUsageReportUsageItemsInner]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'product': product,
      'sku': sku,
      'quantity': quantity,
      'unitType': unitType,
      'pricePerUnit': pricePerUnit,
      'grossAmount': grossAmount,
      'discountAmount': discountAmount,
      'netAmount': netAmount,
      'organizationName': organizationName,
      'repositoryName': repositoryName,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    date,
    product,
    sku,
    quantity,
    unitType,
    pricePerUnit,
    grossAmount,
    discountAmount,
    netAmount,
    organizationName,
    repositoryName,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BillingUsageReportUsageItemsInner &&
        this.date == other.date &&
        this.product == other.product &&
        this.sku == other.sku &&
        this.quantity == other.quantity &&
        this.unitType == other.unitType &&
        this.pricePerUnit == other.pricePerUnit &&
        this.grossAmount == other.grossAmount &&
        this.discountAmount == other.discountAmount &&
        this.netAmount == other.netAmount &&
        this.organizationName == other.organizationName &&
        this.repositoryName == other.repositoryName;
  }
}
