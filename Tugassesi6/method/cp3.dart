void main() {
  List<String> nilaiTeks = ['80', '95', '75'];

  List<int> nilai = nilaiTeks.map((e) => int.parse(e)).toList();

  int total = 0;

  for (var n in nilai) {
    total += n;
  }

  double rataRata = total / nilai.length;

  print('Total: $total');
  print('Rata-rata: ${rataRata.toStringAsFixed(2)}');
}