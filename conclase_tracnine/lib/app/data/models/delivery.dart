class Delivery {
  final String name;
  final String deliveryID;
  final String category;
  final String type;
  final int quantity;
  final String deliveryType;
  final String discount;
  final String? deliveryIconText;

  Delivery({
    required this.name,
    required this.deliveryID,
    required this.category,
    required this.type,
    required this.quantity,
    required this.deliveryType,
    required this.discount,
    deliveryIconText,
  }) : deliveryIconText = name.substring(0, 1);
}

List<Delivery> deliveryList = [
  Delivery(
    name: 'Olutade Olanrewaju',
    deliveryID: 'KA0000001',
    category: 'Food',
    type: "Domino's Pizza",
    quantity: 13,
    deliveryType: 'Same Day Delivery',
    discount: 'Yes',
  ),
  Delivery(
    name: 'Adeola Olanrewaju',
    deliveryID: 'KA0000002',
    category: 'Food',
    type: "Domino's Pizza",
    quantity: 13,
    deliveryType: 'Same Day Delivery',
    discount: 'Yes',
  ),
  Delivery(
    name: 'Bukola Olanrewaju',
    deliveryID: 'KA0000003',
    category: 'Food',
    type: "Domino's Pizza",
    quantity: 13,
    deliveryType: 'Same Day Delivery',
    discount: 'Yes',
  ),
  Delivery(
    name: 'Ore Olanrewaju',
    deliveryID: 'KA0000001',
    category: 'Food',
    type: "Domino's Pizza",
    quantity: 13,
    deliveryType: 'Same Day Delivery',
    discount: 'Yes',
  ),
  Delivery(
    name: 'Olutade Olanrewaju',
    deliveryID: 'KA0000001',
    category: 'Food',
    type: "Domino's Pizza",
    quantity: 13,
    deliveryType: 'Same Day Delivery',
    discount: 'Yes',
  ),
];
