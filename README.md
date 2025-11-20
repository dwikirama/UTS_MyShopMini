# UTS - Pemrograman Mobile 7A2

Nama: Muhammad Dwiki Ramadani

NIM : 221080200030

# MyShop Mini

Aplikasi toko mini sederhana menggunakan Flutter.

## 📱 Fitur

- **3 Kategori Produk**: Makanan, Minuman, dan Elektronik
- **Daftar Produk**: Tampilan grid untuk setiap kategori
- **Detail Produk**: Informasi lengkap untuk setiap produk

## 🛠️ Widget yang Digunakan

| Widget                    | Fungsi                                                                                                                                       |
| ------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- |
| **MaterialApp**           | Widget utama aplikasi dengan Material Design, mengatur theme dan routing di main.dart.                                                       |
| **StatelessWidget**       | Widget tanpa state; digunakan untuk MyShopMiniApp dan list_produk.dart.                                                                      |
| **StatefulWidget**        | Widget dengan state yang berubah; digunakan di beranda.dart, kategori.dart, produk.dart, dan detail_produk.dart untuk interaksi dan animasi. |
| **Scaffold**              | Struktur dasar layar dengan AppBar dan body; digunakan di semua screen.                                                                      |
| **AppBar**                | Bar navigasi atas dengan title dan back button.                                                                                              |
| **SafeArea**              | Menjaga konten aman dari notch dan status bar.                                                                                               |
| **Container**             | Widget untuk styling dengan decoration, padding, dan margin.                                                                                 |
| **Column**                | Mengatur widget secara vertikal.                                                                                                             |
| **Row**                   | Mengatur widget secara horizontal.                                                                                                           |
| **Expanded**              | Mengisi ruang tersedia dalam Row/Column.                                                                                                     |
| **ListView.builder**      | List scrollable dinamis; untuk daftar kategori di beranda.dart.                                                                              |
| **GridView.builder**      | Grid scrollable 2 kolom; untuk daftar produk di list_produk.dart.                                                                            |
| **GestureDetector**       | Deteksi gesture tap untuk efek pressed/hover.                                                                                                |
| **Icon**                  | Menampilkan ikon Material Icons.                                                                                                             |
| **AnimatedContainer**     | Container dengan animasi perubahan properti untuk efek tap/hover.                                                                            |
| **TweenAnimationBuilder** | Animasi custom untuk slide-up, fade-in, dan scale.                                                                                           |
| **AnimationController**   | Kontrol animasi manual untuk fade-in effect.                                                                                                 |
| **FadeTransition**        | Animasi opacity untuk efek muncul perlahan.                                                                                                  |
| **ScaleTransition**       | Animasi scale untuk icon dengan elastic bounce.                                                                                              |
| **BoxDecoration**         | Dekorasi untuk card dengan border radius dan shadow.                                                                                         |
| **BoxShadow**             | Bayangan untuk efek depth pada card.                                                                                                         |
| **Navigator.push**        | Navigasi ke screen baru dengan passing data.                                                                                                 |
| **Navigator.pop**         | Kembali ke screen sebelumnya.                                                                                                                |
| **MaterialPageRoute**     | Route dengan transisi Material Design.                                                                                                       |
