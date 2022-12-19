class Bagian {
  String id;
  String nama;

  Bagian({required this.id, required this.nama});

  factory Bagian.fromJson(Map<String, dynamic> restaurant) =>
      Bagian(id: restaurant['id'], nama: restaurant['nama']);
}
