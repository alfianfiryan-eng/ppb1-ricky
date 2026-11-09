class SesiLogin {
  // Instance variables
  final String userId;
  late String token;
  bool isOnline = false;
  String? waktuLogout;

  // Constructor
  SesiLogin(this.userId);

  // Method login
  void login() {
    token = 'TKN-$userId';
    isOnline = true;

    print('$userId berhasil login.');
  }

  // Method logout
  void logout(String waktu) {
    isOnline = false;
    waktuLogout = waktu;

    print('$userId berhasil logout.');
  }

  // Menampilkan status
  void status() {
    print('User ID      : $userId');
    print('Token        : $token');
    print('Online       : $isOnline');
    print('Waktu Logout : ${waktuLogout ?? "-"}');
    print('--------------------------');
  }
}

void main() {
  // Membuat dua sesi login
  var sesi1 = SesiLogin('USR001');
  var sesi2 = SesiLogin('USR002');

  // Sesi pertama login lalu logout
  sesi1.login();
  sesi1.logout('20:00 WIB');

  // Sesi kedua hanya login
  sesi2.login();

  // Menampilkan status
  sesi1.status();
  sesi2.status();
}