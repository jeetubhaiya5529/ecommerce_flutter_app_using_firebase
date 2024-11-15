class TPricingCalculator {
  /// calculate price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // calculate shipping cost
  static String calculateShippingCost(double productSize, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // calculate tax
  static String calculateTax(double productSize, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productSize * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    return 0.10; // example tax rate 10%
  }

  static double getShippingCost(String location) {
    return 5.00; // example shipping cost of $5
  }
}
