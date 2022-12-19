import 'package:flutter/material.dart';
import 'package:mengajar_221_p_mobile/api/api_service.dart';
import 'package:mengajar_221_p_mobile/model/bagian.dart';
import 'package:mengajar_221_p_mobile/model/bagianread.dart';
import 'package:mengajar_221_p_mobile/screen/bagian_create.dart';

class BagianList extends StatefulWidget {
  static const routeName = '/bagian_list';

  const BagianList({Key? key}) : super(key: key);

  @override
  State<BagianList> createState() => _BagianListState();
}

class _BagianListState extends State<BagianList> {
  late Future<BagianRead> _future;

  @override
  void initState() {
    super.initState();
    ApiService apiService = ApiService();
    _future = apiService.getBagian();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Membaca API Online'),
      ),
      body: Center(
        child: FutureBuilder<BagianRead>(
          future: _future,
          builder: (context, snapshot) {
            var state = snapshot.connectionState;
            if (state != ConnectionState.done) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (snapshot.hasData) {
                final List<Bagian> bagians = snapshot.data!.bagians;
                return ListView.builder(
                    itemCount: bagians.length,
                    itemBuilder: (context, index) {
                      return _buildBagianCard(context, bagians[index]);
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, BagianCreate.routeName);
        },
      ),
    );
  }

  Widget _buildBagianCard(BuildContext context, Bagian bagian) {
    return ListTile(
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      title: Text(
        bagian.nama,
      ),
    );
  }
}
