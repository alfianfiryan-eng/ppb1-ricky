void main() {
  print(3.compareTo(5));
  print(5.compareTo(3));
  print(5.compareTo(5));
  print('Andi'.compareTo('Budi'));

  List<int> nilai = [70, 95, 100, 99];

  List<int> urut = [...nilai];
  urut.sort((a, b) => a.compareTo(b));
  print(urut);

  urut.sort((a, b) => b.compareTo(a));
  print(urut);

  urut.sort((a, b) => a.compareTo(b));
  print(nilai);
}