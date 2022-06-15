class DeliveryTimelineItem {
  String trackTitle;
  String trackLocation;
  String trackTime;

  DeliveryTimelineItem({
    required this.trackTitle,
    required this.trackLocation,
    required this.trackTime,
  });
}

final List<DeliveryTimelineItem> deliveryTimelineItems = [
  DeliveryTimelineItem(
    trackTitle: 'Accept Order',
    trackLocation: 'Ikeja',
    trackTime: '8.50am',
  ),
  DeliveryTimelineItem(
    trackTitle: 'Pick-Up',
    trackLocation: 'Ikeja',
    trackTime: '9.08am',
  ),
  DeliveryTimelineItem(
    trackTitle: 'Drop-Off',
    trackLocation: 'Lagos Island',
    trackTime: '9.41am',
  ),
  DeliveryTimelineItem(
    trackTitle: 'Drop-Off',
    trackLocation: 'Ikoyi',
    trackTime: '10.41am',
  ),
  DeliveryTimelineItem(
    trackTitle: 'Accept Order',
    trackLocation: 'Maroko',
    trackTime: '11.41am',
  ),
  DeliveryTimelineItem(
    trackTitle: 'Accept Order',
    trackLocation: 'Lekki',
    trackTime: '12.41pm',
  ),
];
