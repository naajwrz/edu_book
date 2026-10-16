# EduBook

EduBook adalah aplikasi katalog buku berbasis Flutter. Aplikasi ini membantu
pengguna menjelajahi koleksi buku berdasarkan genre, membaca informasi buku,
menyimpan buku ke bookmark, dan mencoba alur peminjaman sederhana.

## Identitas

| Keterangan | Informasi |
|---|---|
| Nama | Najwarizqa Aryandri |
| NIM | 240605110060 |
| Kelas | Mobile Praktikum K |
| Semester | Ganjil 2025/2026 |

## Tujuan Aplikasi

Aplikasi ini dibuat sebagai latihan perancangan antarmuka mobile menggunakan
Flutter. EduBook menerapkan widget dan layout Flutter, navigasi antarhalaman,
serta pengolahan data dummy yang disiapkan agar nantinya dapat diganti dengan
sumber data API.

## Fitur

- Menampilkan koleksi 40 buku dalam empat genre: Fiksi, Non-Fiksi, Teknologi,
  dan Sejarah.
- Mencari buku berdasarkan judul, penulis, atau genre dari halaman beranda.
- Menjelajahi daftar buku berdasarkan genre.
- Melihat detail buku, termasuk sinopsis, profil penulis, rating, penerbit,
  tahun terbit, jumlah halaman, dan ISBN.
- Menambahkan atau menghapus buku dari bookmark.
- Mencoba alur pinjam dan kembalikan buku pada halaman detail.
- Menampilkan cover buku dari Open Library; jika gambar gagal dimuat,
  aplikasi menampilkan cover pengganti.

## Halaman dan Navigasi

1. **Beranda** — menampilkan pencarian, kategori, buku populer, dan koleksi.
   Pengguna dapat membuka genre atau memilih buku untuk melihat detail.
2. **Daftar Buku** — menampilkan koleksi dari genre yang dipilih.
3. **Detail Buku** — menampilkan informasi lengkap buku dan tombol bookmark
   serta pinjam/kembalikan.
4. **Bookmark** — menampilkan buku yang disimpan pengguna.

Navigasi utama menggunakan `NavigationBar` untuk berpindah antara Beranda dan
Bookmark. Halaman Daftar Buku dan Detail Buku dibuka menggunakan
`Navigator.push`.

## Teknologi

- Flutter dan Dart
- Material 3
- `ChangeNotifier` dan `ListenableBuilder` untuk memperbarui tampilan saat
  bookmark atau status ketersediaan buku berubah
- Data katalog lokal dengan model `Book` dan factory `Book.fromJson()`

## Palet Warna

| Peran | Kode warna | Penggunaan |
|---|---|---|
| Warna utama | `#173D39` | Judul, ikon, tombol utama, dan banner |
| Gradasi banner | `#173D39` ke `#2D7165` | Banner di beranda |
| Aksen | `#E8AA4E` | Ikon bintang rating |
| Latar belakang | `#F3F6F4` | Latar semua halaman |
| Permukaan | `#FFFFFF` | Kartu buku, kartu kategori, dan kolom pencarian |
| Status tersedia | `#26855D` | Label “Tersedia” |
| Status dipinjam | `#C25E55` | Label “Dipinjam” |

Data dummy saat ini ditulis di
[`lib/data/books_data.dart`](lib/data/books_data.dart). Model buku berada di
[`lib/models/book.dart`](lib/models/book.dart), sedangkan pengelolaan koleksi,
bookmark, dan peminjaman berada di
[`lib/store/library_store.dart`](lib/store/library_store.dart). Struktur model
dan konversi JSON menjadi dasar untuk integrasi API pada pengembangan
berikutnya.

## Struktur Proyek

```text
lib/
├── main.dart
├── models/
│   └── book.dart
├── data/
│   └── books_data.dart
├── store/
│   └── library_store.dart
├── widgets/
│   └── book_widgets.dart
└── pages/
    ├── home_page.dart
    ├── list_page.dart
    ├── detail_page.dart
    └── bookmark_page.dart
test/
└── widget_test.dart
```

## Persyaratan

- Flutter SDK yang mendukung versi Dart pada `pubspec.yaml` (Dart SDK
  `^3.9.2`)
- Android Studio, VS Code, atau editor Flutter lainnya
- Emulator, simulator, atau perangkat yang terhubung

## Menjalankan Aplikasi

Dari direktori proyek, jalankan:

```bash
flutter pub get
flutter run
```

Untuk melihat perangkat yang tersedia:

```bash
flutter devices
```

## Menjalankan Pengujian

```bash
flutter test
```

Tes widget memeriksa jumlah dan pembagian data buku serta navigasi dasar ke
halaman Bookmark.

## Catatan Pengembangan

- Perubahan status bookmark dan peminjaman disimpan di memori selama aplikasi
  berjalan; data belum disimpan secara permanen.
- Gambar cover menggunakan URL Open Library, sehingga pemuatan cover
  memerlukan koneksi internet. Tampilan pengganti digunakan jika gambar tidak
  tersedia.
- Tahap pengembangan selanjutnya dapat mengganti sumber data lokal dengan
  layanan API tanpa mengubah tujuan penggunaan model buku.
