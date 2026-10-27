void main() {
  List<String> input = ['99', 'sembilan juta lapangan pekerjaan', '95'];

  for (var teks in input) {
    try {
      int nilai = int.parse(teks);
      print('Nilai: $nilai');
    } on FormatException {
      print('"$teks" bukan angka');
    }
  }
}
