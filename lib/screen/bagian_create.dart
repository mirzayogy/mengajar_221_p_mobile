import 'package:flutter/material.dart';
import 'package:mengajar_221_p_mobile/api/api_service.dart';
import 'package:mengajar_221_p_mobile/model/karyawan.dart';

class BagianCreate extends StatefulWidget {
  static const routeName = '/bagian_create';
  const BagianCreate({Key? key}) : super(key: key);

  @override
  State<BagianCreate> createState() => _BagianCreateState();
}

class _BagianCreateState extends State<BagianCreate> {
  String _nama = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Membaca API Online'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Tuliskan nama bagian baru',
                  labelText: 'Input Bagian',
                ),
                onChanged: (String value) {
                  setState(() {
                    _nama = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  ApiService apiService = ApiService();
                  apiService.createBagian(_nama);

                  Karyawan karyawan = Karyawan(
                      nik: '0013',
                      nama: 'Tiga Belas',
                      tanggalMulai: '2022-12-13',
                      gajiPokok: 100000,
                      statusKaryawan: 'TETAP',
                      bagianId: 3);
                  apiService.createKaryawan(karyawan);
                },
              )
            ],
          ),
        ));
  }
}
