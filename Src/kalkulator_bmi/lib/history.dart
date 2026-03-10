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

void tampilkanRiwayat() {
  print('\n=== Riwayat Perhitungan ===');
  if (riwayat.isEmpty) {
    print('Belum ada data riwayat.');
    return;
  }

  // for-in loop
  for (var data in riwayat) {
    print('Berat: ${data['berat']} kg | '
        'Tinggi: ${data['tinggi']} cm | '
        'BMI: ${(data['bmi'] as double).toStringAsFixed(2)} | '
        'Status: ${data['kategori']}');
  }
}