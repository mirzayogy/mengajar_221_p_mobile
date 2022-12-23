class Bagian {
  String id;
  String nama;

  Bagian({required this.id, required this.nama});

  factory Bagian.fromJson(Map<String, dynamic> bagian) =>
      Bagian(id: bagian['id'], nama: bagian['nama']);
}
