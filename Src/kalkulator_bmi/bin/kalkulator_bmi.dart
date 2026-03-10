import 'dart:io';
import 'package:kalkulator_bmi/input_handler.dart' as input_handler;
import 'package:kalkulator_bmi/bmi_calculator.dart' as bmi_calculator;
import 'package:kalkulator_bmi/history.dart' as history;

void main() {
  print('=== Kalkulator BMI ===');
  String lanjut = 'y';

  do {
    // Ambil input (validasi sudah di dalam fungsinya)
    final double berat = input_handler.getInputDouble('Masukkan berat badan (kg): ');
    final double tinggi = input_handler.getInputDouble('Masukkan tinggi badan (cm): ');

    // Hitung & kategorikan
    final double bmi = bmi_calculator.hitungBMI(berat, tinggi);
    final String kategori = bmi_calculator.menentukanKategori(bmi);

    // Tampilkan hasil
    print('\n--- Hasil ---');
    print('BMI    : ${bmi.toStringAsFixed(2)}');
    print('Status : $kategori');

    // Simpan ke riwayat
    history.simpanRiwayat(berat, tinggi, bmi, kategori);

    stdout.write('\nHitung lagi? (y/n): ');
    lanjut = stdin.readLineSync() ?? 'n';

  } while (lanjut.toLowerCase() == 'y');

  // Tampilkan semua riwayat di akhir
  history.tampilkanRiwayat();
}
