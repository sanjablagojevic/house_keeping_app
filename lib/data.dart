class HouseKeepingInfo{
  final int position;
  final String name;
  final String iconImage;
  final String? description;
  final List<String>? images;


HouseKeepingInfo(
    this.position, {
      required this.name,
      required this.iconImage,
      this.description,
      this.images
    });
}

List<HouseKeepingInfo> info=[
  HouseKeepingInfo(1, name:'House     Cleaning', iconImage: 'assets/images/house-cleaning.png',
  description: 'Here\'s how it works -- just go to our website or app and tell us your zipcode and how big your house, apartment, or flat is. Handy will then connect you with a top-rated home cleaning professional to help take the stress out of your life.'
  , images: []),
  HouseKeepingInfo(2, name:'Furniture Assembly', iconImage: 'assets/images/meeting.png',
      description: 'Here\'s how it works -- just go to our website or app and tell us your zipcode and how big your house, apartment, or flat is. Handy will then connect you with a top-rated home cleaning professional to help take the stress out of your life.'
      , images: []),
  HouseKeepingInfo(3, name:'Handyman Repair', iconImage: 'assets/images/air-conditioner.png',
      description: 'Here\'s how it works -- just go to our website or app and tell us your zipcode and how big your house, apartment, or flat is. Handy will then connect you with a top-rated home cleaning professional to help take the stress out of your life.'
      , images: []),
  HouseKeepingInfo(4, name:'Interior    Painting', iconImage: 'assets/images/painter.png',
      description: 'Here\'s how it works -- just go to our website or app and tell us your zipcode and how big your house, apartment, or flat is. Handy will then connect you with a top-rated home cleaning professional to help take the stress out of your life.'
      , images: [])
];
