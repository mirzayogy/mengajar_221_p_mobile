class Karyawan {
  String nik;
  String nama;
  String tanggalMulai;
  int gajiPokok;
  String statusKaryawan;
  int bagianId;

  Karyawan({
    required this.nik,
    required this.nama,
    required this.tanggalMulai,
    required this.gajiPokok,
    required this.statusKaryawan,
    required this.bagianId,
  });

  factory Karyawan.fromJson(Map<String, dynamic> karyawan) => Karyawan(
        nik: karyawan['nik'],
        nama: karyawan['nama'],
        tanggalMulai: karyawan['tanggal_mulai'],
        gajiPokok: karyawan['gaji_pokok'],
        statusKaryawan: karyawan['status_karyawan'],
        bagianId: karyawan['bagian_id'],
      );

  Map<String, dynamic> toJson() {
    var data = {
      'nik': nik,
      'nama': nama,
      'tanggal_mulai': tanggalMulai,
      'gaji_pokok': gajiPokok,
      'status_karyawan': statusKaryawan,
      'bagian_id': bagianId,
    };
    return data;
  }
}
