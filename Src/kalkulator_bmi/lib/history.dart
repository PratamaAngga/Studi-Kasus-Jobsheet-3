// List riwayat disimpan di sini sebagai "state" global file ini
final List<Map<String, dynamic>> riwayat = [];

void simpanRiwayat(double berat, double tinggi, double bmi, String kategori) {
  riwayat.add({
    'berat': berat,
    'tinggi': tinggi,
    'bmi': bmi,
    'kategori': kategori,
  });
}