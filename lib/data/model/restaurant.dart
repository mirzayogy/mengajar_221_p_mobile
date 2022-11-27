class Restaurant {
  String id;
  String name;
  String description;
  String city;
  String pictureId;
  num rating;

  Restaurant(
      {required this.id,
      required this.name,
      required this.description,
      required this.city,
      required this.pictureId,
      required this.rating});

  factory Restaurant.fromJson(Map<String, dynamic> restaurant) => Restaurant(
      id: restaurant['id'],
      name: restaurant['name'],
      description: restaurant['description'],
      city: restaurant['city'],
      pictureId: restaurant['pictureId'],
      rating: restaurant['rating']);
}
