void main() {
  final nilai = [100, 80, 0, 90, 85];
  for (final item in nilai) {
    if (item == 0) {
      continue;
    }
    print('Nilai diproses: $item');
  }
}
