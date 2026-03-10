import 'dart:io';

double getInputDouble(String prompt) {
  while (true) {
    stdout.write(prompt);
    final String? input = stdin.readLineSync();
    final double? value = double.tryParse(input ?? '');

    if (value != null && value > 0) {
      return value;
    }
    print('Input tidak valid! Masukkan angka positif.');
    // while(true) + validasi di sini = do-while alternatif
    // akan terus minta input sampai valid
  }
}