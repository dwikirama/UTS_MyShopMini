# MyShop Mini

Aplikasi toko mini sederhana menggunakan Flutter.

## 📱 Fitur

- **3 Kategori Produk**: Makanan, Minuman, dan Elektronik
- **Daftar Produk**: Tampilan grid untuk setiap kategori
- **Detail Produk**: Informasi lengkap untuk setiap produk
- **Navigasi Smooth**: Perpindahan halaman yang lancar
- **UI Modern**: Desain bersih dengan color scheme yang konsisten

## 🛠️ Widget yang Digunakan

| Widget                                        | Fungsi                                                                                                                                                                                                                                            |
| --------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **MaterialApp**                               | Widget utama yang membungkus seluruh aplikasi Flutter dengan dukungan Material Design, mengatur theme, routing, dan home screen. Digunakan di `main.dart` untuk menginisialisasi app.                                                             |
| **StatelessWidget**                           | Widget dasar yang tidak memiliki state internal yang berubah. Digunakan sebagai base class untuk `MyApp`, `HomeScreen`, `ProductListScreen`, `ProductDetailScreen`.                                                                               |
| **Scaffold**                                  | Menyediakan struktur dasar untuk layar visual seperti AppBar, body, dan floating action button. Digunakan di `HomeScreen`, `ProductListScreen`, dan `ProductDetailScreen` untuk membangun layout halaman.                                         |
| **AppBar**                                    | Bar navigasi atas yang menampilkan title, actions, dan back button. Digunakan di `HomeScreen`, `ProductListScreen`, dan `ProductDetailScreen` untuk header halaman.                                                                               |
| **Column**                                    | Mengatur child widgets secara vertikal (atas ke bawah). Digunakan di `HomeScreen` (untuk body), `ProductListScreen` (untuk body dan card produk), serta `ProductDetailScreen` (untuk menampilkan ikon, nama, dan harga).                          |
| **Row**                                       | Mengatur child widgets secara horizontal (kiri ke kanan). Digunakan di `HomeScreen` untuk menampilkan card kategori secara berdampingan.                                                                                                          |
| **Padding**                                   | Menambahkan ruang kosong (padding) di sekitar child widget. Digunakan di `HomeScreen` untuk memberi padding pada body.                                                                                                                            |
| **Expanded**                                  | Membuat child widget mengisi ruang yang tersedia dalam flex container seperti Row atau Column. Digunakan di `HomeScreen` untuk membuat card kategori mengisi ruang secara merata, dan di `ProductListScreen` untuk membuat GridView mengisi body. |
| **Card**                                      | Widget berbentuk kartu dengan elevation dan shadow untuk efek 3D. Digunakan di `HomeScreen` (untuk kategori) dan `ProductListScreen` (untuk produk).                                                                                              |
| **InkWell**                                   | Menambahkan efek ripple saat ditekan dan menangani onTap event. Digunakan di `HomeScreen` dan `ProductListScreen` untuk membuat card kategori/produk interaktif.                                                                                  |
| **Icon**                                      | Menampilkan ikon dari Material Icons. Digunakan untuk ikon kategori di `HomeScreen`, ikon produk di `ProductListScreen` dan `ProductDetailScreen`.                                                                                                |
| **Text**                                      | Menampilkan teks dengan styling seperti font size, weight, dan color. Digunakan di seluruh app untuk title, nama kategori/produk, dan harga.                                                                                                      |
| **SizedBox**                                  | Widget kosong dengan ukuran tetap untuk spacing antar elemen. Digunakan di `HomeScreen`, `ProductListScreen`, dan `ProductDetailScreen` untuk jarak vertikal.                                                                                     |
| **GridView.builder**                          | Membuat grid scrollable secara dinamis berdasarkan item count. Digunakan di `ProductListScreen` untuk menampilkan daftar produk dalam grid 2 kolom.                                                                                               |
| **SliverGridDelegateWithFixedCrossAxisCount** | Delegate untuk GridView yang menentukan jumlah kolom tetap, aspect ratio, dan spacing. Digunakan di `ProductListScreen` untuk konfigurasi grid.                                                                                                   |
| **Center**                                    | Memusatkan child widget secara horizontal dan vertikal. Digunakan di `ProductDetailScreen` untuk memusatkan konten detail produk.                                                                                                                 |
| **Navigator** (dengan MaterialPageRoute)      | Menangani navigasi antar screen dengan push/pop route. Digunakan di `HomeScreen` (untuk ke `ProductListScreen`) dan `ProductListScreen` (untuk ke `ProductDetailScreen`).                                                                         |
