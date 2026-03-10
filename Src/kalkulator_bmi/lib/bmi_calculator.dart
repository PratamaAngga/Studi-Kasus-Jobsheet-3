double hitungBMI(double beratKg, double tinggiCm) {
  final double tinggiM = tinggiCm / 100;
  return beratKg / (tinggiM * tinggiM);
}

String menentukanKategori(double bmi) {
  if (bmi < 18.5) {
    return 'Kurus';
  } else if (bmi < 25) {
    return 'Normal';
  } else if (bmi < 30) {
    return 'Gemuk';
  } else {
    return 'Obesitas';
  }
}
