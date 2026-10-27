void main() {
  Map<String, int> sks = {'Pemrograman': 100, 'Basis Data':99, 'Agama': 1000};

  sks.remove('Jaringan');

  print(sks.containsKey('Pemrograman'));

  int total = 0;

  for (var jumlah in sks.values) {
    total += jumlah;
  }

  print('Total SKS: $total');
}
