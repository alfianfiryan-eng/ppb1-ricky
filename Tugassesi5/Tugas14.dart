void main() {
  var nilai = [65, 80, 75, 90, 70, 30];

  var lulus = nilai.where((item) {
    return item >= 75;
  }).toList();

  print(lulus);
}