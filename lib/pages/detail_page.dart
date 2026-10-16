import 'package:flutter/material.dart';
import '../models/book.dart';
import '../store/library_store.dart';
import '../widgets/book_widgets.dart';

class DetailPage extends StatelessWidget {
  final Book book;
  const DetailPage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    final store = LibraryStore.instance;
    return Scaffold(
      backgroundColor: kBg,
      appBar: AppBar(
        title: const Text('Detail Buku'),
        backgroundColor: kBg,
        foregroundColor: kPrimary,
      ),
      body: ListenableBuilder(
        listenable: store,
        builder: (context, _) {
          final saved = store.isBookmarked(book);
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Center(child: BookCover(book: book, width: 160, height: 240)),
              const SizedBox(height: 16),
              Text(
                book.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: kPrimary,
                ),
              ),
              Text(
                book.author,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black54),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.star, color: kAccent, size: 18),
                  Text(' ${book.rating}  '),
                  StatusChip(available: book.available),
                ],
              ),
              const SizedBox(height: 18),

              _section(
                'Sinopsis',
                Text(book.synopsis, style: const TextStyle(height: 1.5)),
              ),
              _section(
                'Profil Penulis',
                Text(book.authorBio, style: const TextStyle(height: 1.5)),
              ),
              _section(
                'Spesifikasi Buku',
                Column(
                  children: [
                    _spec('Jumlah Halaman', '${book.pages}'),
                    _spec('Penerbit', book.publisher),
                    _spec('Tahun Terbit', '${book.year}'),
                    _spec('ISBN', book.isbn),
                    _spec('Genre', book.genre),
                  ],
                ),
              ),
              const SizedBox(height: 8),

              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        store.toggleBookmark(book);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              store.isBookmarked(book)
                                  ? 'Ditambahkan ke bookmark'
                                  : 'Dihapus dari bookmark',
                            ),
                            duration: const Duration(seconds: 1),
                          ),
                        );
                      },
                      icon: Icon(
                        saved ? Icons.bookmark : Icons.bookmark_border,
                      ),
                      label: Text(saved ? 'Tersimpan' : 'Tambah ke Bookmark'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: kPrimary,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => store.toggleBorrow(book),
                      icon: Icon(book.available ? Icons.book : Icons.undo),
                      label: Text(book.available ? 'Pinjam' : 'Kembalikan'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kPrimary,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _section(String title, Widget child) => Card(
    color: Colors.white,
    elevation: 0,
    margin: const EdgeInsets.only(bottom: 12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14),
      side: BorderSide(color: kPrimary.withValues(alpha: 0.06)),
    ),
    child: Padding(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const SizedBox(height: 8),
          child,
        ],
      ),
    ),
  );

  Widget _spec(String k, String v) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 3),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 120,
          child: Text(k, style: const TextStyle(color: Colors.black54)),
        ),
        const Text(': '),
        Expanded(child: Text(v)),
      ],
    ),
  );
}
