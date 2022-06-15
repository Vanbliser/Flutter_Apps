class OrderTimelineItem {
  String orderTitle;
  String orderAddress;

  OrderTimelineItem({
    required this.orderTitle,
    required this.orderAddress,
  });
}

List<OrderTimelineItem> orderTimeLineItems = [
  OrderTimelineItem(
    orderTitle: 'Pick Up',
    orderAddress: '10 Wole Ogunjimi Street, Ikeja',
  ),
  OrderTimelineItem(
    orderTitle: 'Drop Off',
    orderAddress: '52 Mobolaji Bank Anthony, Victoria Island',
  ),
  OrderTimelineItem(
    orderTitle: 'Drop Off',
    orderAddress: '15 Mbonu Close, Lekki Phase 1',
  ),
  OrderTimelineItem(
    orderTitle: 'Drop Off',
    orderAddress: '13 Johnson Close, Victoria Island',
  ),
  OrderTimelineItem(
    orderTitle: 'Drop Off',
    orderAddress: '1481 Ozumba Mbadewe Rd',
  ),
  OrderTimelineItem(
    orderTitle: 'Drop Off',
    orderAddress: '25 Mogaji Rd, Victoria Island',
  ),
  OrderTimelineItem(
    orderTitle: 'Drop Off',
    orderAddress: '10 Kudirat Abiola Way',
  ),
];
