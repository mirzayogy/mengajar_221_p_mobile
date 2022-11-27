import 'package:mengajar_221_p_mobile/data/model/restaurant.dart';

class ListResult {
  ListResult(
      {required this.error,
      required this.message,
      required this.count,
      required this.restaurants});

  bool error;
  String message;
  int count;
  List<Restaurant> restaurants;

  factory ListResult.fromJson(Map<String, dynamic> json) => ListResult(
      error: json['error'],
      message: json['message'],
      count: json['count'],
      restaurants: List<Restaurant>.from(json['restaurants']
          .map((x) => Restaurant.fromJson(x))
          .where((restaurants) =>
              restaurants.description != null &&
              restaurants.pictureId != null &&
              restaurants.city != null &&
              restaurants.rating != null)));
}
