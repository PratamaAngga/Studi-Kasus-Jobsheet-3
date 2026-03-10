double hitungBMI(double beratKg, double tinggiCm) {
  final double tinggiM = tinggiCm / 100;
  return beratKg / (tinggiM * tinggiM);
}