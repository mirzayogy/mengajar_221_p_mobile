import 'package:flutter/material.dart';
import 'package:mengajar_221_p_mobile/data/api/api_service.dart';
import 'package:mengajar_221_p_mobile/data/model/list_result.dart';
import 'package:mengajar_221_p_mobile/data/model/restaurant.dart';

class RestaurantList extends StatefulWidget {
  static const routeName = '/restaurant_list';

  const RestaurantList({Key? key}) : super(key: key);

  @override
  State<RestaurantList> createState() => _RestaurantListState();
}

class _RestaurantListState extends State<RestaurantList> {
  late Future<ListResult> _future;

  @override
  void initState() {
    super.initState();
    ApiService apiService = ApiService();
    _future = apiService.getList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Membaca API Online'),
      ),
      body: Center(
        child: FutureBuilder<ListResult>(
          future: _future,
          builder: (context, snapshot) {
            var state = snapshot.connectionState;
            if (state != ConnectionState.done) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (snapshot.hasData) {
                final List<Restaurant> restaurants = snapshot.data!.restaurants;
                return ListView.builder(
                    itemCount: restaurants.length,
                    itemBuilder: (context, index) {
                      return _buildRestaurantCard(context, restaurants[index]);
                    });
              } else if (snapshot.hasError) {
                return Center(child: Text("${snapshot.error}"));
              } else {
                return const Text('');
              }
            }
          },
        ),
      ),
    );
  }

  Widget _buildRestaurantCard(BuildContext context, Restaurant restaurant) {
    return ListTile(
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      leading: Image.network(
        "https://restaurant-api.dicoding.dev/images/small/${restaurant.pictureId}",
        width: 60,
        height: 80,
      ),
      title: Text(
        restaurant.name,
      ),
    );
  }
}
