// Class API asli
class ApiCuaca {
  double ambilSuhu(String kota) {
    print('Menghubungi server cuaca...');
    return 0;
  }
}

// Class API palsu untuk testing
class MockApiCuaca implements ApiCuaca {
  @override
  double ambilSuhu(String kota) {
    if (kota == 'Pontianak') {
      return 33.5;
    } else if (kota == 'Sukadana') {
      return 24.0;
    } else {
      return 28.0;
    }
  }
}

// Fungsi menampilkan cuaca
void tampilkanCuaca(ApiCuaca api, String kota) {
  double suhu = api.ambilSuhu(kota);

  print('Suhu di $kota: $suhu°C');
}

void main() {
  // Menggunakan API palsu
  var mock = MockApiCuaca();

  // Menguji tiga kota
  tampilkanCuaca(mock, 'Pontianak');
  tampilkanCuaca(mock, 'Sukadana');
  tampilkanCuaca(mock, 'Ketapang');
}